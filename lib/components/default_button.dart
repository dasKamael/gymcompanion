import 'package:flutter/material.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/constants/consts.dart';
import 'package:gymcompanion/constants/text_styles.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({Key? key, required this.text, required this.onClick}) : super(key: key);

  final String text;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ConstValues.defaultButtonHeight,
      width: MediaQuery.of(context).size.width -
          (2 * ConstValues.defaultSidePadding), // TODO make it cleaner
      decoration: BoxDecoration(
        color: ConstColors.buttonColor,
        borderRadius: BorderRadius.all(Radius.circular(ConstValues.defaultTextFieldBorderRadius)),
      ),
      child: TextButton(
        onPressed: () => onClick(),
        child: Text(text, style: ConstTextStyles.textField),
      ),
    );
  }
}
