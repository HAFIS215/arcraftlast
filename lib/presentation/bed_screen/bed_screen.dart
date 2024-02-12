import 'package:arcraftlastfinal/core/app_export.dart';
import 'package:arcraftlastfinal/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class BedScreen extends StatelessWidget {
  const BedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.green200,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Spacer(),
                  CustomImageView(
                      imagePath: ImageConstant.imgBed1,
                      height: 184.v,
                      width: 300.h),
                  SizedBox(height: 62.v),
                  _buildBackdropSection(context)
                ]))));
  }

  /// Section Widget
  Widget _buildBackdropSection(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
        decoration: AppDecoration.fillGray100
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text("BED", style: theme.textTheme.headlineLarge)),
              SizedBox(height: 15.v),
              Text("details", style: theme.textTheme.titleLarge),
              SizedBox(height: 17.v),
              Container(
                  width: 351.h,
                  margin: EdgeInsets.only(right: 6.h),
                  child: Text(
                      "The 3D bed model by XYZ Furniture features a stylish design with realistic bedding textures, offering interior designers and architects a versatile asset for creating inviting bedroom scenes or architectural visualizations that emphasize comfort and aesthetics.",
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyLarge!.copyWith(height: 1.50))),
              SizedBox(height: 20.v),
              CustomElevatedButton(
                  text: "      open in camera".toUpperCase(),
                  margin: EdgeInsets.only(left: 11.h, right: 13.h),
                  onPressed: () {
                    onTapOpenInCamera(context);
                  },
                  alignment: Alignment.center),
              SizedBox(height: 23.v)
            ]));
  }

  /// Navigates to the bedcamScreen when the action is triggered.
  onTapOpenInCamera(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bedcamScreen);
  }
}
