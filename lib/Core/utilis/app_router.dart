import 'package:bookly_app/Features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/Splash/Presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static final router=GoRouter(
  routes: [
    GoRoute(path: '/',builder:(context,state)=>const SplashView()),
    GoRoute(path: '/homeView',builder:(context,state)=>const HomeView()),

  ]);

}