import 'package:flutter/material.dart';
import 'package:foodstorm/models/favorite_hive_model.dart';

class FavoriteGridWidget extends StatelessWidget {
  const FavoriteGridWidget({Key? key, required this.list}) : super(key: key);

  final List<HiveCardsModel> list;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300.0,
        childAspectRatio: 0.7,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
      ),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Container();
      },
    );
  }
}
