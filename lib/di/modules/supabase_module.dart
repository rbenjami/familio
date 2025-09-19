import 'package:familio/di/modules/env_module.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@module
abstract class SupabaseModule {
  static bool _isInitialized = false;

  @preResolve
  @singleton
  Future<SupabaseClient> provideSupabaseClient(Env env) async {
    if (!_isInitialized) {
      await Supabase.initialize(
        url: env['SUPABASE_URL']!,
        anonKey: env['SUPABASE_KEY']!,
      );
      _isInitialized = true;
    }
    return Supabase.instance.client;
  }
}
