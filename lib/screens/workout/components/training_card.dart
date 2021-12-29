import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/constants/consts.dart';
import 'package:gymcompanion/constants/text_styles.dart';

class TrainingCard extends ConsumerWidget {
  const TrainingCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(ConstValues.defaultSidePadding),
      decoration: BoxDecoration(
        color: ConstColors.buttonColor,
        border: Border.all(color: ConstColors.secondaryColor),
        borderRadius: BorderRadius.circular(ConstValues.defaultTextFieldBorderRadius),
      ),
      child: Column(
        children: [
          Text(
            'Exercise',
            style: ConstTextStyles.header1,
          ),
          Row(
            children: [],
          ),
        ],
      ),
    );
  }
}
