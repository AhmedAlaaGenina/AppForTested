part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class AppChangeThemeModeState extends AppState {}

class AppSuccessGetDataState extends AppState {}

class AppFailedGetDataState extends AppState {
  final String error;

  AppFailedGetDataState(this.error);
}

class AppLoadingGetDataState extends AppState {}

class AppFillDetailsModelState extends AppState {}
