import 'package:arcraftlastfinal/core/app_export.dart';
import 'package:arcraftlastfinal/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class TvScreen extends StatelessWidget {
  const TvScreen({Key? key}) : super(key: key);

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
                      imagePath: ImageConstant.imgTv1,
                      height: 213.v,
                      width: 300.h),
                  SizedBox(height: 49.v),
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
                  child: Text("TV", style: theme.textTheme.headlineLarge)),
              SizedBox(height: 15.v),
              Text("details", style: theme.textTheme.titleLarge),
              SizedBox(height: 17.v),
              Container(
                  width: 334.h,
                  margin: EdgeInsets.only(right: 23.h),
                  child: Text(
                      "The 3D TV model by ABC Electronics offers an immersive viewing experience with its advanced three-dimensional display technology, bringing content to life with depth and realism, providing viewers with a more engaging entertainment experience.",
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

  /// Navigates to the tvcamScreen when the action is triggered.
  onTapOpenInCamera(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tvcamScreen);
  }
}
