import 'package:arcraftlastfinal/core/app_export.dart';
import 'package:arcraftlastfinal/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup35),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.h, vertical: 39.v),
                    child: Column(children: [
                      SizedBox(height: 71.v),
                      Text("ARCRAFT", style: theme.textTheme.displayMedium),
                      Spacer()
                    ]))),
            bottomNavigationBar: _buildFindTheBestHomeRow(context)));
  }

  /// Section Widget
  Widget _buildFindTheBestHomeRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 25.h, right: 25.h, bottom: 39.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                      width: 217.h,
                      margin: EdgeInsets.only(bottom: 37.v),
                      child: Text("Find the best home furniture for you rooms.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.headlineMediumGray200))),
              Padding(
                  padding: EdgeInsets.only(left: 72.h, top: 96.v),
                  child: CustomIconButton(
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      padding: EdgeInsets.all(17.h),
                      onTap: () {
                        onTapBtnArrowLeft(context);
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft)))
            ]));
  }

  /// Navigates to the loginRegisterScreen when the action is triggered.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginRegisterScreen);
  }
}
