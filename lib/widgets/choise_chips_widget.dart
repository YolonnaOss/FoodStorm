import 'package:flutter/material.dart';
import 'package:foodstorm/helper/constants.dart';
import 'package:foodstorm/helper/task_list.dart';
import 'package:foodstorm/providers/main_page_provider.dart';
import 'package:provider/provider.dart';

class ChoiseChipsWidget extends StatefulWidget {
  const ChoiseChipsWidget({Key? key}) : super(key: key);

  @override
  State<ChoiseChipsWidget> createState() => _ChoiseChipsWidgetState();
}

class _ChoiseChipsWidgetState extends State<ChoiseChipsWidget> {
  int? _value = 0;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MainPageProvider>(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      width: double.infinity,
      height: 45.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: chipsText.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 2.0,
            horizontal: 5.0,
          ),
          child: ChoiceChip(
            selectedColor: _value == index
                ? Theme.of(context).primaryColorLight
                : Theme.of(context).highlightColor,
            pressElevation: 0.0,
            backgroundColor: Theme.of(context).highlightColor,
            label: Text(
              chipsText[index],
              style: TextStyle(
                color: _value == index
                    ? Theme.of(context).primaryColorDark
                    : Theme.of(context).primaryColorDark.withOpacity(0.6),
                fontFamily: ConstFont.sReg,
                fontSize: 14.0,
              ),
            ),
            selected: _value == index ? true : false,
            onSelected: (_) {
              setState(() {
                if (index == 1) provider.changeSort(chipsText[index]);
                if (index == 2) provider.changeSort(chipsText[index]);
                _value = index;
              });
            },
          ),
        ),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(),
      ),
    );
  }
}
