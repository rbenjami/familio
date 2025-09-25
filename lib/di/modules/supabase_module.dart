import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:familio/di/modules/env_module.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:brick_offline_first_with_rest/offline_queue.dart';

@module
abstract class SupabaseModule {
  static bool _isInitialized = false;

  @singleton
  RestOfflineQueueClient provideRestOfflineQueueClient() {
    final (client, queue) = OfflineFirstWithSupabaseRepository.clientQueue(
      databaseFactory: databaseFactory,
    );
    return client;
  }

  @singleton
  RestOfflineRequestQueue provideRestOfflineRequestQueue(
    RestOfflineQueueClient client,
  ) {
    return RestOfflineRequestQueue(client: client);
  }

  @preResolve
  @singleton
  Future<SupabaseClient> provideSupabaseClient(
    Env env,
    RestOfflineQueueClient client,
  ) async {
    if (!_isInitialized) {
      await Supabase.initialize(
        url: env['SUPABASE_URL']!,
        anonKey: env['SUPABASE_KEY']!,
        httpClient: client,
      );
      _isInitialized = true;
    }
    return Supabase.instance.client;
  }
}
