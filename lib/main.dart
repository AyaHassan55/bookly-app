import 'package:bookly_app/Core/utilis/app_router.dart';
import 'package:bookly_app/Core/utilis/serviece_locator.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/Features/Home/presentation/manager/featured%20books/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/manager/newest%20books/newest_books_cubit.dart';
import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>FeaturedBooksCubit(
          getIt.get<HomeRepoImplementation>()
        )),
        BlocProvider(create: (context)=>NewestBooksCubit(
          getIt.get<HomeRepoImplementation>()
        )),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
