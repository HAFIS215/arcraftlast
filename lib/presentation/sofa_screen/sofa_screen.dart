import 'package:arcraftlastfinal/core/app_export.dart';
import 'package:arcraftlastfinal/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SofaScreen extends StatelessWidget {
  const SofaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.green200,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 60.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgSofa11,
                      height: 339.v,
                      width: 300.h),
                  _buildBackdrop(context)
                ]))));
  }

  /// Section Widget
  Widget _buildBackdrop(BuildContext context) {
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
                  width: 351.h,
                  margin: EdgeInsets.only(right: 6.h),
                  child: Text(
                      "The 3D single-seat sofa model by ABC Furniture showcases sleek design and realistic textures, offering a versatile option for interior designers and architects to incorporate into their virtual renderings or visualizations with ease.",
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyLarge!.copyWith(height: 1.50))),
              SizedBox(height: 46.v),
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

  /// Navigates to the sofacamScreen when the action is triggered.
  onTapOpenInCamera(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sofacamScreen);
  }
}
