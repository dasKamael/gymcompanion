import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/constants/text_styles.dart';
import 'package:gymcompanion/services/auth/auth_repository_impl.dart';

class Homepage extends ConsumerWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: ConstColors.primaryColor,
      child: Center(
        child: GestureDetector(
          onTap: () {
            ref.read(authServiceProvider).signOut();
          },
          child: Text(
            'HOMEPAGE',
            style: ConstTextStyles.header1,
          ),
        ),
      ),
    );
  }
}
