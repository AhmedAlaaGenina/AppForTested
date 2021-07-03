import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generic/cubit/app_cubit.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var detailsModel = AppCubit.get(context).detailsModel;
        return Scaffold(
          body: detailsModel != null
              ? CustomScrollView(
                  slivers: [
                    ///animation App Bar
                    SliverAppBar(
                      title: Text('News'),
                      centerTitle: true,
                      flexibleSpace: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                        ),
                        child: FlexibleSpaceBar(
                          background: Image.network(
                            detailsModel.multimedia![0].url!,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                        ),
                      ),
                      pinned: true,
                      expandedHeight: MediaQuery.of(context).size.height * 0.6,
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          SizedBox(
                            height: 24,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Title :',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  detailsModel.title!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  'Abstract :',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  detailsModel.abstract!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  'Link The Article :',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  detailsModel.url!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  detailsModel.byline!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        );
      },
    );
  }
}
