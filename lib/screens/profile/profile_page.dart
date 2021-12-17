import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/components/default_appbar.dart';
import 'package:gymcompanion/components/default_button.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/constants/consts.dart';
import 'package:gymcompanion/constants/text_styles.dart';
import 'package:gymcompanion/providers/user/user_provider.dart';
import 'package:gymcompanion/services/auth/auth_repository_impl.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(userProvider);
    return Container(
      color: ConstColors.primaryColor,
      padding: EdgeInsets.symmetric(horizontal: ConstValues.defaultSidePadding),
      child: Column(
        children: [
          DefaultAppBar(
            title: state.userName,
            actions: [Icon(Icons.settings)],
          ),
          Expanded(
            child: Center(
              child: DefaultButton(
                text: 'LOG-OUT',
                onClick: () => ref.read(authServiceProvider).signOut(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
