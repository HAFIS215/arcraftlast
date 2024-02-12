import 'package:arcraftlastfinal/core/app_export.dart';
import 'package:arcraftlastfinal/widgets/app_bar/appbar_leading_image.dart';
import 'package:arcraftlastfinal/widgets/app_bar/custom_app_bar.dart';
import 'package:arcraftlastfinal/widgets/custom_checkbox_button.dart';
import 'package:arcraftlastfinal/widgets/custom_elevated_button.dart';
import 'package:arcraftlastfinal/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberMe = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50001,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 22.h, vertical: 7.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                      width: 167.h,
                                      child: Text("Create your \nAcount!",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.headlineMedium!
                                              .copyWith(height: 1.43)))),
                              SizedBox(height: 33.v),
                              CustomTextFormField(
                                  controller: emailController,
                                  hintText: "Email",
                                  textInputType: TextInputType.emailAddress,
                                  prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          13.h, 17.v, 5.h, 18.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgLock,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 55.v)),
                              SizedBox(height: 31.v),
                              CustomTextFormField(
                                  controller: passwordController,
                                  hintText: "Password",
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          13.h, 17.v, 6.h, 18.v),
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgMajesticonslock,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 55.v),
                                  suffix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 17.v, 19.h, 18.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgEntypoeyewithline,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize)),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 55.v),
                                  obscureText: true,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 17.v)),
                              SizedBox(height: 30.v),
                              _buildRememberMe(context),
                              SizedBox(height: 29.v),
                              CustomElevatedButton(
                                  height: 55.v,
                                  text: "Sign up",
                                  buttonStyle: CustomButtonStyles.fillGreen,
                                  buttonTextStyle:
                                      CustomTextStyles.titleMediumBold18),
                              SizedBox(height: 78.v),
                              _buildTwentyFive(context),
                              SizedBox(height: 49.v),
                              _buildTwentySix(context),
                              SizedBox(height: 59.v),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtAlreadyhavean(context);
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Already have an account? ",
                                            style: CustomTextStyles
                                                .titleMediumffffffff),
                                        TextSpan(
                                            text: "Sign in",
                                            style: CustomTextStyles
                                                .titleMediumfff3deba)
                                      ]),
                                      textAlign: TextAlign.left)),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgFrame3,
            margin: EdgeInsets.fromLTRB(29.h, 18.v, 339.h, 18.v)));
  }

  /// Section Widget
  Widget _buildRememberMe(BuildContext context) {
    return CustomCheckboxButton(
        text: "Remember me",
        value: rememberMe,
        onChange: (value) {
          rememberMe = value;
        });
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 11.v, bottom: 7.v),
                  child: SizedBox(width: 80.h, child: Divider())),
              Text("or continue whit",
                  style: CustomTextStyles.titleMediumSemiBold_1),
              Padding(
                  padding: EdgeInsets.only(top: 11.v, bottom: 7.v),
                  child: SizedBox(width: 80.h, child: Divider()))
            ]));
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              height: 58.v,
              width: 95.h,
              margin: EdgeInsets.only(bottom: 3.v),
              padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 14.v),
              decoration: AppDecoration.outlineOnPrimaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: CustomImageView(
                  imagePath: ImageConstant.imgFacebook,
                  height: 26.v,
                  width: 27.h,
                  alignment: Alignment.center)),
          Container(
              height: 58.v,
              width: 95.h,
              margin: EdgeInsets.only(top: 3.v),
              padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 14.v),
              decoration: AppDecoration.outlineOnPrimaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: CustomImageView(
                  imagePath: ImageConstant.imgGoogle,
                  height: 26.v,
                  width: 27.h,
                  alignment: Alignment.center)),
          Container(
              height: 58.v,
              width: 95.h,
              margin: EdgeInsets.only(top: 3.v),
              padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 14.v),
              decoration: AppDecoration.outlineOnPrimaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 26.v,
                  width: 27.h,
                  alignment: Alignment.center))
        ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
