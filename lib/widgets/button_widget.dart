import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodstorm/helper/constants.dart';
import 'package:foodstorm/widgets/button_activity_indicator_widget.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.state,
    required this.accept,
    required this.buttonText,
    required this.sendFunc,
  }) : super(key: key);

  final bool state;
  final bool accept;
  final String buttonText;
  final Function() sendFunc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10.0,
      ),
      height: 50.0,
      width: double.infinity,
      decoration: SettingsConst.shadow,
      child: Platform.isAndroid
          ? ElevatedButton(
              onPressed: accept ? sendFunc : null,
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
                onPrimary: Theme.of(context).scaffoldBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              child: state
                  ? const ButtonActivityIndicatorWidget()
                  : Text(
                      buttonText,
                      style: TextStyle(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontSize: 17.0,
                      ),
                    ),
            )
          : CupertinoButton(
              borderRadius: BorderRadius.circular(
                16.0,
              ),
              onPressed: accept ? sendFunc : null,
              color: Theme.of(context).primaryColor,
              child: state
                  ? const ButtonActivityIndicatorWidget()
                  : Text(
                      buttonText,
                      style: TextStyle(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        letterSpacing: 0.3,
                        fontSize: 16.0,
                      ),
                    ),
            ),
    );
  }
}
