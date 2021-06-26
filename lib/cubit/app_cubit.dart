import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generic/data/remote/dio_helper.dart';
import 'package:generic/model/results_model.dart';
import 'package:generic/shared/constants/constants.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);
  bool isDark = false;

  List<Results>? resultsData;

  Results? detailsModel;

  ///change Theme
  void changeAppThemeMode() {
    isDark = !isDark;
    emit(AppChangeThemeModeState());
  }

  ///get Data
  void getData() {
    emit(AppLoadingGetDataState());
    DioHelper.getData(
      url: URLTopStories,
      query: {
        'api-key': '3mh2JkNo6RqrYZxAnNmdyvLdFnKBMfh9',
      },
    ).then((value) {
      if (value.data["results"] != null) {
        resultsData = [];
        value.data["results"].forEach((element) {
          resultsData?.add(Results.fromJson(element));
        });
      }
      print(resultsData![0].section);
      emit(AppSuccessGetDataState());
    }).catchError((error) {
      print(error.toString());
      emit(AppFailedGetDataState(error));
    });
  }
}
