import 'package:flutter/material.dart';

class ButtonActivityIndicatorWidget extends StatelessWidget {
  const ButtonActivityIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.0,
      height: 20.0,
      child: Center(
        child: CircularProgressIndicator(
          strokeWidth: 2.0,
          valueColor: AlwaysStoppedAnimation<Color>(
            Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
    );
  }
}
