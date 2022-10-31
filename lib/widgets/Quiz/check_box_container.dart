import 'package:flutter/material.dart';

import '../../config/constants.dart';

// ignore: prefer_typing_uninitialized_variables
var size, height, width;

class CheckBoxContainer extends StatelessWidget {
  const CheckBoxContainer({
    Key? key,
    required bool value,
  })  : _value = value,
        super(key: key);

  final bool _value;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: width,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                width: 1.5, color: _value ? kButtonColor : Colors.transparent)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                '1-2x a day',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: _value ? kButtonColor : kHeadingColor),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  // setState(() {
                  //   _value = !_value;
                  // });
                },
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _value ? kButtonColor : Colors.transparent,
                      border: Border.all(
                          color: _value ? kButtonColor : kHeadingColor,
                          width: 1.5)),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: _value
                        ? const Icon(
                            Icons.check,
                            size: 20,
                            color: kBarBackColor,
                          )
                        : const Icon(
                            Icons.check_box_outline_blank,
                            size: 20,
                            color: Colors.transparent,
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
