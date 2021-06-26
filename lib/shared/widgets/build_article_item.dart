import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generic/cubit/app_cubit.dart';
import 'package:generic/cubit/app_cubit.dart';
import 'package:generic/model/results_model.dart';
import 'package:generic/route_generator.dart';

class BuildArticleItem extends StatelessWidget {
  const BuildArticleItem({
    Key? key,
    required this.model,
  }) : super(key: key);

  final Results? model;

  @override
  Widget build(BuildContext context) {
    var createdDate = (model!.createdDate!).split('T');
    var publishedDate = (model!.publishedDate!).split('T');
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: GestureDetector(
              onTap: () {
                AppCubit.get(context).detailsModel = model;
                Navigator.of(context).pushNamed(RouteGenerator.detailsScreen);
              },
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.network(
                    model!.multimedia![4].url!,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                  GridTileBar(
                    backgroundColor: AppCubit.get(context).isDark
                        ? Colors.white54
                        : Colors.black45,
                    title: Text(
                      model!.title!,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: AppCubit.get(context).isDark
                                ? Colors.black
                                : Colors.white,
                          ),
                      textAlign: TextAlign.left,
                    ),
                    subtitle: Text(
                      model!.abstract!,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: AppCubit.get(context).isDark
                                ? Colors.black
                                : Colors.white,
                          ),
                      textAlign: TextAlign.left,
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'published: ${publishedDate[0]}',
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: AppCubit.get(context).isDark
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize: 9,
                                  ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'created: ${createdDate[0]}',
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: AppCubit.get(context).isDark
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize: 9,
                                  ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: .2,
                    left: 1,
                    child: Container(
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          model!.section != ''
                              ? '${model!.section!.toUpperCase()}'
                              : '',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
