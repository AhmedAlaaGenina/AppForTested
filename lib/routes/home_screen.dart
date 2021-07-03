import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generic/cubit/app_cubit.dart';
import 'package:generic/shared/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    int getCount() {
      if (width <= 650) {
        return 1;
      } else if (width > 650) {
        return 1 + (((width - 650) / 250).ceilToDouble()).toInt();
      }
      return 1;
    }

    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var appCubit = AppCubit.get(context);
        var model = appCubit.resultsData;
        return SafeArea(
          child: Scaffold(
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
                ? GridView.count(
                    physics: BouncingScrollPhysics(),
                    crossAxisCount: getCount(),
                    childAspectRatio: 3 / 2,
                    children: model
                        .map(
                          (e) => BuildArticleItem(model: e),
                        )
                        .toList(),
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
        );
      },
    );
  }
}
