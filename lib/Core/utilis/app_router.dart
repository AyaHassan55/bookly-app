import 'package:bookly_app/Core/utilis/serviece_locator.dart';
import 'package:bookly_app/Features/Home/data/models/book_name/book_name.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/Features/Home/presentation/manager/similar%20books/similar_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/Search/presentation/views/search_view.dart';
import 'package:bookly_app/Features/Splash/Presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeView = '/homeView';
  static const bookDetailsView = '/bookDetailsView';
  static const searchView = '/searchView';

  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: homeView, builder: (context, state) => const HomeView()),
    GoRoute(
        path: bookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
          child:   BookDetailsView(
              bookModel:state.extra as BookModel
          ),
        )
        
        ),
    GoRoute(path: searchView, builder: (context, state) => const SearchView())
  ]);
}
