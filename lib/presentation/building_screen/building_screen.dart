import 'package:arcraftlastfinal/core/app_export.dart';
import 'package:arcraftlastfinal/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class BuildingScreen extends StatelessWidget {
  const BuildingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.green200,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 25.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgBuliding1,
                      height: 375.v,
                      width: 300.h),
                  _buildBuildingBackdrop(context)
                ]))));
  }

  /// Section Widget
  Widget _buildBuildingBackdrop(BuildContext context) {
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
                  child:
                      Text("BUILDING", style: theme.textTheme.headlineLarge)),
              SizedBox(height: 15.v),
              Text("details", style: theme.textTheme.titleLarge),
              SizedBox(height: 17.v),
              Container(
                  width: 348.h,
                  margin: EdgeInsets.only(right: 9.h),
                  child: Text(
                      "The 3D model of the building by ABC Architects showcases intricate architectural details and realistic textures, providing a versatile tool for urban planning, visualization, and simulation purposes, allowing stakeholders to explore and evaluate the structure ",
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyLarge!.copyWith(height: 1.50))),
              SizedBox(height: 17.v),
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

  /// Navigates to the buildingcamScreen when the action is triggered.
  onTapOpenInCamera(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.buildingcamScreen);
  }
}
