import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_system/core/utils/app_routes.dart';
import 'package:hr_system/core/utils/app_theme.dart';
import 'package:hr_system/core/utils/mu_bloc_observer.dart';
import 'package:hr_system/features/bottomNavBar/cubit/bottom_nav_bar_cubit.dart';
import 'package:hr_system/features/firebase_services/injectable/di.dart';

import 'features/tabs/employee_request/widget/menue_request/cubit/muenu_request_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  configureDependencies();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<BottomNavBarCubit>(),
        ),
        BlocProvider(
          create: (context) => MenuRequestCubit(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: AppRoutes.bottomNavBarScreen,
            routes: AppRoutes.routes,
            theme: AppTheme.lightTheme,
            themeMode: ThemeMode.light,
          );
        },
      ),
    );
  }
}
