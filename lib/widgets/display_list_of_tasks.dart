import 'package:flutter/material.dart';
import 'package:riverpod_to_do_app/utils/utils.dart';
import 'package:riverpod_to_do_app/widgets/common_container.dart';

class DisplayListOfTasks extends StatelessWidget {
  const DisplayListOfTasks({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    return CommonContainer(
      height: deviceSize.height * 0.25,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        padding: EdgeInsets.zero,
        itemBuilder: (ctx, index) {
          return Text('Home');
        },
      ),
    );
  }
}
