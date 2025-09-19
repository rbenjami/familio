import "jsr:@supabase/functions-js/edge-runtime.d.ts";
import { createClient } from 'jsr:@supabase/supabase-js@2';
import { corsHeaders } from '../_shared/cors.ts';

Deno.serve(async (req: Request) => {
  // Handle CORS preflight requests
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders });
  }

  try {
    const { email, password, displayName, homeName } = await req.json();

    if (!email || !password || !displayName) {
      return new Response(
        JSON.stringify({ error: 'Email, password, and display name are required' }),
        {
          status: 400,
          headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        }
      );
    }

    // Create Supabase client with service role key (bypass RLS)
    const supabaseUrl = Deno.env.get('SUPABASE_URL')!;
    const supabaseServiceKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!;
    const supabaseAdmin = createClient(supabaseUrl, supabaseServiceKey);

    // Step 1: Create auth user
    const { data: authData, error: authError } = await supabaseAdmin.auth.admin.createUser({
      email,
      password,
      email_confirm: true,
    });

    if (authError || !authData.user) {
      console.error('Auth error:', authError);
      return new Response(
        JSON.stringify({ error: authError?.message || 'Failed to create auth user' }),
        {
          status: 400,
          headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        }
      );
    }

    const authId = authData.user.id;
    console.log('Auth user created:', authId);

    // Step 2: Create user profile
    const { data: userData, error: userError } = await supabaseAdmin
      .from('users')
      .insert({
        id: authId,
        name: displayName,
      })
      .select()
      .single();

    if (userError || !userData) {
      console.error('User profile error:', userError);
      // Rollback: delete auth user if profile creation fails
      await supabaseAdmin.auth.admin.deleteUser(authId);
      return new Response(
        JSON.stringify({ error: 'Failed to create user profile' }),
        {
          status: 500,
          headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        }
      );
    }

    console.log('User profile created:', userData.id);

    // Step 3: Create home if provided
    let homeData = null;
    if (homeName) {
      const { data: home, error: homeError } = await supabaseAdmin
        .from('homes')
        .insert({
          name: homeName,
          owner_id: userData.id,
        })
        .select()
        .single();

      if (homeError) {
        console.error('Home creation error:', homeError);
        // We don't rollback here as the user is already created
        // They can create a home later
      } else {
        homeData = home;
        console.log('Home created:', homeData.id);

        // Step 4: Add user as home member with admin role
        const { error: memberError } = await supabaseAdmin
          .from('home_members')
          .insert({
            home_id: homeData.id,
            user_id: userData.id,
            can_create_tasks: true,
            can_edit_tasks: true,
            can_delete_tasks: true,
            can_invite_members: true,
            can_view_all_calendars: true,
            is_admin: true,
          });

        if (memberError) {
          console.error('Home member error:', memberError);
        } else {
          console.log('User added to home as admin');
        }
      }
    }

    // Return success response with user and home data
    return new Response(
      JSON.stringify({
        success: true,
        user: {
          id: userData.id,
          name: userData.name,
          email: email,
        },
        home: homeData,
        message: 'Registration successful',
      }),
      {
        status: 200,
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
      }
    );
  } catch (error) {
    console.error('Unexpected error:', error);
    return new Response(
      JSON.stringify({ error: 'An unexpected error occurred' }),
      {
        status: 500,
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
      }
    );
  }
});