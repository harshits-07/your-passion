import 'package:go_router/go_router.dart';
import 'package:your_passion/screens/authentication-screen/authentication_screen.dart';
import 'package:your_passion/screens/home-screen/home_screen.dart';
import 'package:your_passion/screens/onboarding-screen/onboarding_screen.dart';
import 'package:your_passion/screens/splashscreen/splash_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: SplashScreen.path,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: OnboardingScreen.path,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: AuthenticationScreen.path,
        builder: (context, state) => const AuthenticationScreen(),
      ),
      GoRoute(
        path: HomeScreen.path,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
