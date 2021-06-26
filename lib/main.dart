import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generic/cubit/app_cubit.dart';
import 'package:generic/data/remote/dio_helper.dart';
import 'package:generic/route_generator.dart';
import 'package:generic/shared/theme/theme.dart';

import 'routes/home_screen.dart';

void main() {
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit()..getData(),
        ),
      ],
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return MaterialApp(
            theme: lightThemeData(),
            darkTheme: darkThemeData(),
            themeMode:
                AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            initialRoute: RouteGenerator.homeScreen,
            onGenerateRoute: RouteGenerator.generateRoute,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
