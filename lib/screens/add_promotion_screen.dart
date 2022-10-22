import 'dart:io';
import '../generated/l10n.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodstorm/helper/constants.dart';
import 'package:foodstorm/widgets/grey_text_field_widget.dart';

class AddPromotion extends StatefulWidget {
  const AddPromotion({Key? key}) : super(key: key);

  @override
  State<AddPromotion> createState() => _AddPromotionState();
}

class _AddPromotionState extends State<AddPromotion> {
  final placeNameController = TextEditingController();
  final placeStockController = TextEditingController();
  final stockAnotationController = TextEditingController();
  final startDateController = TextEditingController();

  final placeNameFocusNode = FocusNode();
  final placeStockFocusNode = FocusNode();
  final stockAnotationFocusNode = FocusNode();
  final startDateFocusNode = FocusNode();

  final String calendarSvg = 'assets/image/calendar.svg';

  DateTime dateStart = DateTime(2022, 5, 10);
  DateTime dateEnd = DateTime(2022, 5, 10);

  @override
  void initState() {
    placeNameFocusNode;
    placeStockFocusNode;
    stockAnotationFocusNode;
    startDateFocusNode;
    super.initState();
  }

  @override
  void dispose() {
    placeNameController.dispose();
    placeStockController.dispose();
    stockAnotationController.dispose();
    startDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: Platform.isAndroid
              ? const EdgeInsets.fromLTRB(16, 30, 16, 5)
              : const EdgeInsets.fromLTRB(20, 30, 20, 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                ],
              ),
              Text(
                S.of(context).add_promotion_main_tittle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19.sp,
                  fontFamily: ConstFont.sSemB,
                ),
              ),
              Divider(
                height: 10.sp,
              ),
              Text(
                S.of(context).add_promotion_main_subtittle,
                style: TextStyle(
                  fontSize: 11.sp,
                  color: Theme.of(context).primaryColorDark,
                  fontFamily: ConstFont.sMed,
                ),
              ),
              Divider(
                height: 15.sp,
              ),
              GreyTextFieldWidget(
                fieldName: S.of(context).add_promotion_place_name,
                validator: (_) {
                  return null;
                },
                onPressed: () {},
                onSaved: (_) {},
                maxLines: 1,
                keyboardType: TextInputType.text,
                myFocusNode: placeNameFocusNode,
                obscureText: false,
                hintText: S.of(context).add_promotion_promotion_enter,
                textInput: TextInputAction.done,
                textController: placeNameController,
                textCapitalization: TextCapitalization.none,
                icon: InkWell(
                  child: const Icon(
                    Icons.clear,
                  ),
                  onTap: () {
                    placeNameController.clear();
                  },
                ),
              ),
              Divider(
                height: 15.sp,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).add_promotion_promotion_name,
                    style: TextStyle(
                      fontFamily: ConstFont.sSemB,
                      fontSize: 13.sp,
                    ),
                  ),
                  Divider(
                    height: 5.sp,
                  ),
                  TextFormField(
                    controller: placeStockController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          placeStockController.clear();
                        },
                        icon: const Icon(Icons.clear),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.sp),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.sp),
                        ),
                      ),
                      filled: true,
                      hintText: Text(
                        S.of(context).add_promotion_promotion_enter,
                        style: TextStyle(
                          fontFamily: ConstFont.sReg,
                        ),
                      ).data,
                      fillColor: Theme.of(context).primaryColorLight,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 15.sp,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).add_promotion_enter_description,
                    style: TextStyle(
                      fontFamily: ConstFont.sSemB,
                      fontSize: 13.sp,
                    ),
                  ),
                  Divider(
                    height: 5.sp,
                  ),
                  TextFormField(
                    maxLines: 5,
                    controller: placeStockController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.sp),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.sp),
                        ),
                      ),
                      filled: true,
                      hintText: Text(
                        S.of(context).add_promotion_enter_description,
                        style: TextStyle(
                          fontFamily: ConstFont.sReg,
                        ),
                      ).data,
                      fillColor: Theme.of(context).primaryColorLight,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 15.sp,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).add_promotion_start_date,
                    style: TextStyle(
                      fontFamily: ConstFont.sSemB,
                      fontSize: 13.sp,
                    ),
                  ),
                  Divider(
                    height: 5.sp,
                  ),
                  TextFormField(
                    validator: (_) {
                      return null;
                    },
                    keyboardType: TextInputType.datetime,
                    controller: placeStockController,
                    decoration: InputDecoration(
                      labelText:
                          '${dateStart.day}-${dateStart.month}-${dateStart.year}',
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: CustomPaint(
                          child: SvgPicture.asset(calendarSvg),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.sp),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.sp),
                        ),
                      ),
                      filled: true,
                      hintText: Text(
                        S.of(context).add_promotion_select_date,
                        style: TextStyle(
                          fontFamily: ConstFont.sReg,
                        ),
                      ).data,
                      fillColor: Theme.of(context).primaryColorLight,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 15.sp,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).add_promotion_end_date,
                    style: TextStyle(
                      fontFamily: ConstFont.sSemB,
                      fontSize: 13.sp,
                    ),
                  ),
                  Divider(
                    height: 5.sp,
                  ),
                  TextFormField(
                    validator: (value) {
                      return null;
                    },
                    keyboardType: TextInputType.datetime,
                    controller: placeStockController,
                    decoration: InputDecoration(
                      labelText:
                          '${dateEnd.day}-${dateEnd.month}-${dateEnd.year}',
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: CustomPaint(
                          child: SvgPicture.asset(calendarSvg),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.sp),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.sp),
                        ),
                      ),
                      filled: true,
                      hintText: Text(
                        S.of(context).add_promotion_select_date,
                        style: TextStyle(
                          fontFamily: ConstFont.sReg,
                        ),
                      ).data,
                      fillColor: Theme.of(context).primaryColorLight,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 15.sp,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).add_promotion_photo,
                    style: TextStyle(
                      fontFamily: ConstFont.sSemB,
                      fontSize: 13.sp,
                    ),
                  ),
                  Divider(
                    height: 5.sp,
                  ),
                  Container(
                    width: 200.sp,
                    height: 200.sp,
                    color: Colors.red,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
