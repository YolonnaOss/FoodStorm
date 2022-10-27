import 'package:flutter/material.dart';
import 'package:foodstorm/helper/constants.dart';
import 'package:foodstorm/models/favorite_hive_model.dart';
import 'package:foodstorm/helper/icons/storm_icons_icons.dart';
import 'package:intl/intl.dart';

import '../generated/l10n.dart';

class FavoriteGridWidget extends StatelessWidget {
  const FavoriteGridWidget({Key? key, required this.list}) : super(key: key);

  final List<HiveCardModel> list;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 189.0,
        childAspectRatio: 0.85,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
      ),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                list[index].image!,
              ),
              fit: BoxFit.fitHeight,
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Theme.of(context).shadowColor.withOpacity(0.1),
                blurRadius: 5.0,
                spreadRadius: 1.5,
              ),
            ],
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50.0,
                      height: 27.0,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(10.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '-${list[index].discount!.percents}%',
                          style: TextStyle(
                            fontFamily: ConstFont.sReg,
                            fontSize: 16.0,
                            color: Theme.of(context).cardColor,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: InkWell(
                        child: Icon(
                          StormIcons.heart_white,
                          color: ColorsConst.white,
                          size: 28.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                height: 80.0,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.network(
                          list[index].cafeLogo!,
                          width: 40.0,
                          height: 40.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                list[index].cafeName!,
                                style: TextStyle(
                                  fontFamily: ConstFont.sReg,
                                  fontSize: 21.0,
                                ),
                              ),
                              Text(
                                '${S.of(context).start_date} ${DateFormat('dd.MM').format(DateTime.parse(list[index].createdAt!))} ${S.of(context).end_date} ${DateFormat('dd.MM').format(DateTime.parse(list[index].discount!.validTo!))}',
                                style: TextStyle(
                                  fontFamily: ConstFont.sReg,
                                  fontSize: 12.5,
                                  color: Theme.of(context)
                                      .primaryColorDark
                                      .withOpacity(0.4),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          StormIcons.map_marker_empty,
                          size: 14.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.star,
                              color: ConstColors.starColor,
                              size: 10,
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              list[index].cafeRating!,
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: ConstFont.sReg,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
