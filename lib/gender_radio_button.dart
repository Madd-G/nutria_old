import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import 'controllers/gender_controller.dart';


class GenderRadioButton extends StatelessWidget {
  final String value;
  final String title;

  const GenderRadioButton({required this.value, required this.title});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GenderController>(builder: (controller) {
      return InkWell(
        onTap: () => controller.setGenderType(value),
        child: Row(
          children: [
            Radio(
              value: value,
              groupValue: controller.selectedGender,
              onChanged: (newValue) {
                controller.setGenderType(value);
              },
              activeColor: Theme.of(context).primaryColor,
            ),
            Text(title),
          ],
        ),
      );
    });
  }
}
