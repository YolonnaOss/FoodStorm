import '../generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:foodstorm/helper/constants.dart';
import 'package:foodstorm/widgets/button_widget.dart';
import 'package:foodstorm/helper/icons/storm_icons_icons.dart';

enum Cities { togliatty, samara }

class MainAppBarWidget extends StatefulWidget {
  const MainAppBarWidget({Key? key}) : super(key: key);

  @override
  State<MainAppBarWidget> createState() => _MainAppBarWidgetState();
}

class _MainAppBarWidgetState extends State<MainAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    Cities? _city = Cities.togliatty;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: SizedBox(
        height: 40.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                    Theme.of(context).primaryColorLight,
                  ),
                ),
                clipBehavior: Clip.hardEdge,
                onPressed: () {
                  showModalBottomSheet(
                    clipBehavior: Clip.hardEdge,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30.0),
                      ),
                    ),
                    context: context,
                    builder: (context) => StatefulBuilder(
                      builder: (context, state) {
                        return Container(
                          color: Theme.of(context).highlightColor,
                          height: 250.0,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 30.0,
                              horizontal: 16.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  S.of(context).choise_city,
                                  style: TextStyle(
                                    fontSize: 21.0,
                                    color: Colors.black,
                                    fontFamily: ConstFont.sBold,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 25.0,
                                          height: 25.0,
                                          child: Radio(
                                            activeColor:
                                                Theme.of(context).primaryColor,
                                            value: Cities.togliatty,
                                            groupValue: _city,
                                            onChanged: (Cities? value) {
                                              state(() {
                                                _city = value;
                                              });
                                            },
                                          ),
                                        ),
                                        const Text('Тольятти'),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 25.0,
                                          height: 25.0,
                                          child: Radio(
                                            activeColor:
                                                Theme.of(context).primaryColor,
                                            value: Cities.samara,
                                            groupValue: _city,
                                            onChanged: (Cities? value) {
                                              state(() {
                                                _city = value;
                                              });
                                            },
                                          ),
                                        ),
                                        const Text(
                                          'Самара',
                                          style: TextStyle(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                ButtonWidget(
                                  state: false,
                                  accept: true,
                                  buttonText: 'Готово',
                                  sendFunc: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).app_bar_text_button,
                      style: TextStyle(
                        color: Theme.of(context).shadowColor,
                        fontSize: 15.0,
                        fontFamily: ConstFont.sMed,
                      ),
                    ),
                    const Icon(
                      StormIcons.caret_right,
                      size: 20.0,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).cardColor,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(9.0),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/addstock');
              },
              child: Text(
                S.of(context).app_bar_elev_button,
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: ConstFont.sReg,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
