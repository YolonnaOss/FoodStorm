import 'package:foodstorm/providers/promotion_provider.dart';
import 'package:intl/intl.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:foodstorm/generated/l10n.dart';
import 'package:foodstorm/helper/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodstorm/providers/favorite_provider.dart';
import 'package:foodstorm/helper/icons/storm_icons_icons.dart';

class CardsListWidget extends StatefulWidget {
  const CardsListWidget({Key? key}) : super(key: key);

  @override
  State<CardsListWidget> createState() => _CardsListWidgetState();
}

class _CardsListWidgetState extends State<CardsListWidget> {
  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    final promotionProvider = Provider.of<PromotionProvider>(context);
    final firestore = FirebaseFirestore.instance.collection('cards');
    final filteringFirestore = FirebaseFirestore.instance
        .collection('cards')
        .where('tags', arrayContains: promotionProvider.sort);
    return Expanded(
      flex: 1,
      child: StreamBuilder(
        stream: promotionProvider.sort.isEmpty
            ? firestore.snapshots()
            : filteringFirestore.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            final cards = snapshot.data!.docs;
            return ListView.separated(
              dragStartBehavior: DragStartBehavior.start,
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data!.docs.length,
              separatorBuilder: (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5.0,
                  ),
                );
              },
              itemBuilder: (context, index) {
                return cards[index]['promotion']
                    ? Padding(
                        padding: const EdgeInsets.only(
                          top: 7.0,
                          left: 7.0,
                          right: 7.0,
                          bottom: 10.0,
                        ),
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Theme.of(context)
                                    .shadowColor
                                    .withOpacity(0.1),
                                blurRadius: 5.0,
                                spreadRadius: 1.5,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          height: 310.0,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 180.0,
                                child: Stack(
                                  children: [
                                    Image.network(
                                      cards[index]['image'],
                                      errorBuilder:
                                          ((context, error, stackTrace) =>
                                              Container()),
                                      width: double.infinity,
                                      fit: BoxFit.fitWidth,
                                    ),
                                    Container(
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                    Positioned(
                                      bottom: 15.0,
                                      left: 10.0,
                                      child: Container(
                                        width: 45.0,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).dividerColor,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 3.0,
                                            horizontal: 4.0,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: ConstColors.starColor,
                                                size: 12,
                                              ),
                                              Text(
                                                cards[index]['cafeRating'],
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: ConstFont.sReg,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 13.0,
                                      right: -1.0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).dividerColor,
                                          borderRadius:
                                              const BorderRadius.horizontal(
                                            left: Radius.circular(10.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 4.0,
                                            horizontal: 4.0,
                                          ),
                                          child: Text(
                                            ' -${cards[index]['discount']['percents']}%',
                                            style: TextStyle(
                                              fontFamily: ConstFont.sReg,
                                              fontSize: 20.0,
                                              color:
                                                  Theme.of(context).cardColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 9.0,
                                  horizontal: 12.0,
                                ),
                                color: Theme.of(context).dividerColor,
                                height: 130.0,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 8.0,
                                      ),
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14.0),
                                                    child: Image.network(
                                                      cards[index]['cafeLogo'],
                                                      fit: BoxFit.fill,
                                                      width: 43.0,
                                                      height: 43.0,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 8.0,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        cards[index]
                                                            ['cafeName'],
                                                        style: TextStyle(
                                                          fontSize: 20.0,
                                                          fontFamily:
                                                              ConstFont.sReg,
                                                        ),
                                                      ),
                                                      const Divider(
                                                        height: 1.0,
                                                      ),
                                                      Text(
                                                        '${S.of(context).start_date} ${DateFormat('dd.MM').format(DateTime.parse(cards[index]['createdAt']))} ${S.of(context).end_date} ${DateFormat('dd.MM').format(DateTime.parse(cards[index]['discount']['validTo']))}',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              ConstFont.sReg,
                                                          fontSize: 14.0,
                                                          color: Theme.of(
                                                                  context)
                                                              .primaryColorDark
                                                              .withOpacity(0.4),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  ClipOval(
                                                    child: Material(
                                                      color: Theme.of(context)
                                                          .dividerColor,
                                                      child: InkWell(
                                                        highlightColor:
                                                            Theme.of(context)
                                                                .splashColor,
                                                        splashColor: Theme.of(
                                                                context)
                                                            .primaryColor
                                                            .withOpacity(0.15),
                                                        onTap: () async {
                                                          await favoriteProvider
                                                              .addPostToFavorite(
                                                            cards[index].id,
                                                            cards[index]
                                                                ['postID'],
                                                            cards[index]
                                                                ['cafeID'],
                                                            cards[index]
                                                                ['promotion'],
                                                            cards[index]
                                                                ['message'],
                                                            cards[index]
                                                                ['createdAt'],
                                                            cards[index]
                                                                ['image'],
                                                            cards[index]
                                                                ['cafeName'],
                                                            cards[index]
                                                                ['cafeLogo'],
                                                            cards[index]
                                                                ['cafeRating'],
                                                            cards[index]
                                                                ['tags'],
                                                            cards[index]
                                                                    ['discount']
                                                                ['present'],
                                                            cards[index]
                                                                    ['discount']
                                                                ['presentText'],
                                                            cards[index]
                                                                    ['discount']
                                                                ['percents'],
                                                            cards[index]
                                                                    ['discount']
                                                                ['fullPrice'],
                                                            cards[index]
                                                                    ['discount']
                                                                ['finalPrice'],
                                                            cards[index]
                                                                    ['discount']
                                                                ['validTo'],
                                                            context,
                                                          );
                                                        },
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 3.0),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                            border: Border.all(
                                                              width: 1.2,
                                                              color: Theme.of(
                                                                      context)
                                                                  .cardColor,
                                                            ),
                                                          ),
                                                          width: 45.0,
                                                          height: 45.0,
                                                          child: Icon(
                                                            favoriteProvider
                                                                    .checkFavoriteCard(
                                                                        cards[index]
                                                                            .id)
                                                                ? StormIcons
                                                                    .heart_fill
                                                                : StormIcons
                                                                    .heart_counter_grey,
                                                            color: Theme.of(
                                                                    context)
                                                                .cardColor,
                                                            size: 32.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 8.0,
                                                  ),
                                                  ClipOval(
                                                    child: Material(
                                                      color: Theme.of(context)
                                                          .cardColor,
                                                      child: InkWell(
                                                        highlightColor:
                                                            Theme.of(context)
                                                                .splashColor,
                                                        splashColor: Theme.of(
                                                                context)
                                                            .primaryColor
                                                            .withOpacity(0.15),
                                                        onTap: () {},
                                                        child: SizedBox(
                                                          width: 45.0,
                                                          height: 45.0,
                                                          child:
                                                              Transform.rotate(
                                                            angle: 4.7,
                                                            child: Icon(
                                                              StormIcons
                                                                  .phone_empty,
                                                              color: Theme.of(
                                                                      context)
                                                                  .dividerColor,
                                                              size: 32.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 270,
                                          child: Text(
                                            cards[index]['message'],
                                            maxLines: 3,
                                            style: TextStyle(
                                              fontFamily: ConstFont.sReg,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container();
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ),
            );
          }
        },
      ),
    );
  }
}
