import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:foodstorm/helper/constants.dart';

class GreyTextFieldWidget extends StatelessWidget {
  const GreyTextFieldWidget({
    Key? key,
    required this.validator,
    required this.onPressed,
    required this.onSaved,
    required this.maxLines,
    required this.keyboardType,
    required this.myFocusNode,
    required this.obscureText,
    required this.hintText,
    required this.textInput,
    required this.textController,
    required this.textCapitalization,
    this.icon,
    required this.fieldName,
  }) : super(key: key);

  final String? Function(String?)? validator;
  final Function() onPressed;
  final Function(String?)? onSaved;
  final TextInputType keyboardType;
  final FocusNode myFocusNode;
  final bool obscureText;
  final int maxLines;
  final String hintText;
  final Widget? icon;
  final TextInputAction? textInput;
  final TextEditingController? textController;
  final TextCapitalization textCapitalization;
  final String fieldName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          fieldName,
          style: TextStyle(
            fontFamily: ConstFont.sSemB,
            fontSize: 13.sp,
          ),
        ),
        const Divider(
          height: 10.0,
        ),
        TextFormField(
          controller: textController,
          maxLines: maxLines,
          autocorrect: false,
          focusNode: myFocusNode,
          onSaved: onSaved,
          keyboardAppearance: Brightness.light,
          textCapitalization: textCapitalization,
          textInputAction: textInput,
          cursorColor: Theme.of(context).primaryColor,
          style: TextStyle(
            color: Theme.of(context).primaryTextTheme.bodyText1?.color,
            fontFamily: ConstFont.sReg,
            fontSize: 16.0,
          ),
          validator: validator,
          obscureText: obscureText,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            suffixIconColor: Theme.of(context).primaryColor,
            filled: true,
            hintText: hintText,
            fillColor: Theme.of(context).primaryColorLight,
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(16.0),
              ),
              borderSide: BorderSide(
                color: Theme.of(context).splashColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(16.0),
              ),
              borderSide: BorderSide(
                color: Theme.of(context).splashColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(16.0),
              ),
              borderSide: BorderSide(
                color: Theme.of(context).splashColor,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(16.0),
              ),
              borderSide: BorderSide(
                color: Theme.of(context).errorColor,
                width: 2.0,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(16.0),
              ),
              borderSide: BorderSide(
                color: Theme.of(context).errorColor,
                width: 2.0,
              ),
            ),
            suffixIcon: icon,
          ),
        ),
      ],
    );
  }
}
