import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../../core/firebase/firebase_service.dart';
import '../router/app_router.gr.dart';

@singleton
class AuthGuard extends AutoRouteGuard {
  final FirebaseService _firebaseService;

  AuthGuard(this._firebaseService);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final user = _firebaseService.auth.currentUser;
    
    if (user != null) {
      // User is authenticated, allow navigation
      resolver.next();
    } else {
      // User is not authenticated, redirect to auth page
      router.push(AuthRoute());
    }
  }
}