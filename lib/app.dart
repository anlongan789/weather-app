import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/config/theme.dart';
import 'package:weather_app/repositories/city_repo.dart';
import 'package:weather_app/screens/screens.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:weather_app/screens/test.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
        ],
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: RepositoryProvider(
        create: (context) => CityRepository(),
        child: const TestScreen(),
      ),
    );
  }
}
