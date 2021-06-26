import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generic/cubit/app_cubit.dart';
import 'package:generic/model/results_model.dart';
import 'package:generic/shared/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var appCubit = AppCubit.get(context);
        var model = appCubit.resultsData;
        return Scaffold(
          appBar: AppBar(
            title: Text('News App'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: appCubit.changeAppThemeMode,
                icon: Icon(Icons.dark_mode_outlined),
              ),
            ],
          ),
          drawer: Drawer(),
          body: model != null
              ? ListView.separated(
                  // shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return BuildArticleItem(
                      model: model[index],
                    );
                  },
                  itemCount: model.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider();
                  },
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        );
      },
    );
  }
}
