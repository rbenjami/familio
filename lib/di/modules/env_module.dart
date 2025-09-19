import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

typedef Env = Map<String, String>;

@module
abstract class EnvModule {
  @preResolve
  @singleton
  Future<Env> provideEnv() async {
    if (!dotenv.isInitialized) {
      await dotenv.load(fileName: ".env");
    }
    return dotenv.env;
  }
}
