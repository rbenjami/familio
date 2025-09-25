import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_sqlite/memory_cache_provider.dart';
import 'package:familio/brick/brick.g.dart';
import 'package:familio/brick/db/schema.g.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;
import 'package:sqflite/sqflite.dart' show databaseFactory;
import 'package:brick_supabase/brick_supabase.dart' hide Supabase;
import 'package:brick_offline_first_with_rest/offline_queue.dart';

@singleton
class Repository extends OfflineFirstWithSupabaseRepository {
  Repository._({
    required super.supabaseProvider,
    required super.sqliteProvider,
    required super.migrations,
    required super.offlineRequestQueue,
    super.memoryCacheProvider,
  });

  @factoryMethod
  factory Repository.create(
    SupabaseClient supabaseClient,
    RestOfflineRequestQueue queue,
  ) {
    final supabaseProvider = SupabaseProvider(
      supabaseClient,
      modelDictionary: supabaseModelDictionary,
    );

    final sqliteProvider = SqliteProvider(
      'familio.sqlite',
      databaseFactory: databaseFactory,
      modelDictionary: sqliteModelDictionary,
    );

    return Repository._(
      supabaseProvider: supabaseProvider,
      sqliteProvider: sqliteProvider,
      migrations: migrations,
      offlineRequestQueue: queue,
      memoryCacheProvider: MemoryCacheProvider(),
    );
  }

  @PostConstruct(preResolve: true)
  Future<void> init() => initialize();

  // Clear local cache
  Future<void> clearCache() async {
    await reset();
  }
}
