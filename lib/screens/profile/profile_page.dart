import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/components/default_appbar.dart';
import 'package:gymcompanion/components/default_button.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/constants/consts.dart';
import 'package:gymcompanion/providers/auth/auth_provider.dart';
import 'package:gymcompanion/providers/user/user_provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userProvider);
    return Container(
      color: ConstColors.primaryColor,
      padding: EdgeInsets.symmetric(horizontal: ConstValues.defaultSidePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultAppBar(
            title: state.userName,
            actions: [Icon(Icons.settings)],
          ),
          Text('Birthdate:' +
              DateTime.fromMillisecondsSinceEpoch(state.birthdate.millisecondsSinceEpoch)
                  .toString()),
          Text('Height:' + state.height.toString()),
          Text('Weight:' + state.weight.toString()),
          Spacer(),
          DefaultButton(
            text: 'LOG-OUT',
            onClick: () => ref.read(authServiceProvider).signOut(),
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
