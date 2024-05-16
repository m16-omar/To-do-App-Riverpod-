import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_to_do_app/widgets/common_text_field.dart';

class SelectDateTime extends StatelessWidget {
  const SelectDateTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CommonTextField(
            title: 'Date',
            hintText: 'May, 07',
            readOnly: true,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.calendar),
            ),
            controller: null,
          ),
        ),
        Gap(10),
        Expanded(
          child: CommonTextField(
            title: 'Time',
            hintText: '12:30',
            readOnly: true,
            suffixIcon: IconButton(
              onPressed: () => _selectTime(context),
              icon: FaIcon(FontAwesomeIcons.clock),
            ),
            controller: null,
          ),
        ),
      ],
    );
  }

  void _selectTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      print(pickedTime);
    }
  }
}
