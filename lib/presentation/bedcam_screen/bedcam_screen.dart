import 'package:arcraftlastfinal/core/app_export.dart';
import 'package:flutter/material.dart';

class BedcamScreen extends StatelessWidget {
  const BedcamScreen({Key? key})
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
