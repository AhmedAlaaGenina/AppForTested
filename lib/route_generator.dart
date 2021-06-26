import 'package:flutter/material.dart';
import 'package:generic/routes/details/Details_Screen.dart';
import 'package:generic/routes/home_screen.dart';

class RouteGenerator {
  static const String homeScreen = '/';
  static const String detailsScreen = '/details';
  RouteGenerator._();
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case detailsScreen:
        return MaterialPageRoute(
          builder: (_) => const DetailsScreen(),
        );
      default:
        throw FormatException("Route not found");
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
