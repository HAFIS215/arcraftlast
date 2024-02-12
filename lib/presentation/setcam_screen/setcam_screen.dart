import 'package:arcraftlastfinal/core/app_export.dart';
import 'package:flutter/material.dart';

class SetcamScreen extends StatelessWidget {
  const SetcamScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
