import 'package:arcraftlastfinal/core/app_export.dart';
import 'package:arcraftlastfinal/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class LampScreen extends StatelessWidget {
  const LampScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.green200,
            body: SizedBox(
                height: 796.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgLamp1,
                      height: 533.v,
                      width: 300.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 46.v, right: 35.h)),
                  _buildBackdropSection(context)
                ]))));
  }

  /// Section Widget
  Widget _buildBackdropSection(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
            decoration: AppDecoration.fillGray100
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child:
                          Text("LAMP", style: theme.textTheme.headlineLarge)),
                  SizedBox(height: 15.v),
                  Text("details", style: theme.textTheme.titleLarge),
                  SizedBox(height: 17.v),
                  Container(
                      width: 325.h,
                      margin: EdgeInsets.only(right: 31.h),
                      child: Text(
                          "The 3D lamp model by XYZ Lighting features intricate details and realistic lighting effects, providing a lifelike representation of a traditional lamp in digital form, suitable for architectural visualization or interior design projects.",
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(height: 1.50))),
                  SizedBox(height: 42.v),
                  CustomElevatedButton(
                      text: "      open in camera".toUpperCase(),
                      margin: EdgeInsets.only(left: 11.h, right: 13.h),
                      onPressed: () {
                        onTapOpenInCamera(context);
                      },
                      alignment: Alignment.center),
                  SizedBox(height: 23.v)
                ])));
  }

  /// Navigates to the lampcamScreen when the action is triggered.
  onTapOpenInCamera(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lampcamScreen);
  }
}
