import 'package:arcraftlastfinal/core/app_export.dart';
import 'package:arcraftlastfinal/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CouchScreen extends StatelessWidget {
  const CouchScreen({Key? key}) : super(key: key);

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
                      imagePath: ImageConstant.imgSofa21,
                      height: 131.v,
                      width: 300.h),
                  SizedBox(height: 79.v),
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
                  child: Text("SOFA", style: theme.textTheme.headlineLarge)),
              SizedBox(height: 15.v),
              Text("details", style: theme.textTheme.titleLarge),
              SizedBox(height: 17.v),
              Container(
                  width: 332.h,
                  margin: EdgeInsets.only(right: 24.h),
                  child: Text(
                      "The 3D model of the large sofa by XYZ Furniture exhibits a spacious design with realistic upholstery textures, making it ideal for creating inviting living room scenes or interior design visualizations that require a focal point of comfort and style.",
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyLarge!.copyWith(height: 1.50))),
              SizedBox(height: 16.v),
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

  /// Navigates to the couchcamScreen when the action is triggered.
  onTapOpenInCamera(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.couchcamScreen);
  }
}
