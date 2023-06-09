import 'package:flutter/material.dart';


class HorizontalSpacer extends StatelessWidget {
  const HorizontalSpacer({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}