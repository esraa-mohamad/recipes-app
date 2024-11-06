import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_book_app/core/di/dependency_injection.dart';
import 'package:recipes_book_app/core/routes/routes.dart';
import 'package:recipes_book_app/core/widgets/bottom_bar.dart';
import 'package:recipes_book_app/features/details/presentation/manager/details_cubit.dart';
import 'package:recipes_book_app/features/details/presentation/screen/ui/details_screen.dart';
import 'package:recipes_book_app/features/home/presentation/manager/home_cubit.dart';
import 'package:recipes_book_app/features/home/presentation/screen/ui/home_screen.dart';
import 'package:recipes_book_app/features/meals_screen/presentation/manager/meals_cubit.dart';
import 'package:recipes_book_app/features/meals_screen/presentation/screen/ui/meals_screen.dart';
import 'package:recipes_book_app/features/on_boarding/presentation/screen/ui/on_boarding_screen.dart';
import 'package:recipes_book_app/features/search/presentation/manager/search_cubit.dart';
import 'package:recipes_book_app/features/login/presentation/manager/login_cubit.dart';
import 'package:recipes_book_app/features/register/presentation/manager/register_cubit.dart';
import 'package:recipes_book_app/features/register/presentation/screen/ui/register_screen.dart';
import 'package:recipes_book_app/features/search/presentation/screen/ui/search_screen.dart';
import 'package:recipes_book_app/features/splash/presentation/screen/ui/splash_screen.dart';

import '../../features/login/presentation/screen/ui/login_screen.dart';

class AppRouting {
  Route? generateRoute(RouteSettings routesSettings) {
    final arguments = routesSettings.arguments;
    switch (routesSettings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case Routes.mealsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            key: ValueKey(arguments),
            create: (context) =>
                getIt<MealCubit>()..getAllMeals(arguments as String),
            child: MealsScreen(),
          ),
        );
      case Routes.onBoardingScreen:
        return PageRouteBuilder(
          transitionDuration: const Duration(seconds: 3),
          // Set the duration of the animation
          pageBuilder: (context, animation, secondaryAnimation) =>
              OnBoardingScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Apply a curved animation
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: Curves.linear,
            );
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0), // Start from right side
                end: Offset.zero, // Slide to the center
              ).animate(curvedAnimation),
              child: child,
            );
          },
        );
      case Routes.bottomBar:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => getIt<HomeCubit>()..getAllCategories(),
                child: HomeScreen(),
              ),
              BlocProvider(
                create: (_) => getIt<SearchCubit>(),
                child: SearchScreen(),
              ),
            ],
            child: BottomNavBar(),
          ),
        );

      case Routes.detailsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                getIt<DetailsCubit>()..getAllMealDetails("52787"),
            child: DetailsScreen(),
          ),
        );

      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => RegisterCubit(),
            child: RegisterScreen(),
          ),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LoginCubit(),
            child: LoginScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${routesSettings.name}'),
            ),
          ),
        );
    }
   }
}
