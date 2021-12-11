import 'package:flutter/material.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/constants/consts.dart';
import 'package:gymcompanion/constants/text_styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DefaultAppBar extends ConsumerWidget {
  DefaultAppBar({
    Key? key,
    required this.title,
    this.leading,
    this.actions = const [],
  }) : super(key: key);

  final String title;
  final Widget? leading;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      iconTheme: IconThemeData(color: ConstColors.secondaryColor),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      centerTitle: true,
      leadingWidth: ConstValues.defaultSidePadding,
      elevation: 0,
      leading: leading,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: ConstTextStyles.header1,
      ),
      actions: actions,
    );
  }
}
