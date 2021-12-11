import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/constants/text_styles.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: ConstColors.primaryColor,
      child: Center(
        child: Text(
          'PROFILE',
          style: ConstTextStyles.header1,
        ),
      ),
    );
  }
}
