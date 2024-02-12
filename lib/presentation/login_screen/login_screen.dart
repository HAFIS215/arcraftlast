import 'package:arcraftlastfinal/core/app_export.dart';
import 'package:arcraftlastfinal/widgets/app_bar/appbar_leading_image.dart';
import 'package:arcraftlastfinal/widgets/app_bar/custom_app_bar.dart';
import 'package:arcraftlastfinal/widgets/custom_checkbox_button.dart';
import 'package:arcraftlastfinal/widgets/custom_elevated_button.dart';
import 'package:arcraftlastfinal/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

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
                                horizontal: 23.h, vertical: 17.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Welcome back!",
                                      style: theme.textTheme.headlineMedium)),
                              SizedBox(height: 44.v),
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
                              SizedBox(height: 30.v),
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
                                  text: "Sign in",
                                  buttonStyle: CustomButtonStyles.fillGreen,
                                  buttonTextStyle:
                                      CustomTextStyles.titleMediumBold18,
                                  onPressed: () {
                                    onTapSignIn(context);
                                  }),
                              SizedBox(height: 29.v),
                              Text("Forget the password?",
                                  style: CustomTextStyles.titleMediumOrange100),
                              SizedBox(height: 61.v),
                              _buildThirtySeven(context),
                              SizedBox(height: 36.v),
                              _buildThirtyEight(context),
                              SizedBox(height: 59.v),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtDonthaveanaccount(context);
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Don’t have an account? ",
                                            style: CustomTextStyles
                                                .titleMediumffffffff),
                                        TextSpan(
                                            text: "Sign up",
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
  Widget _buildThirtySeven(BuildContext context) {
    return Row(
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
        ]);
  }

  /// Section Widget
  Widget _buildThirtyEight(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          height: 58.v,
          width: 95.h,
          margin: EdgeInsets.only(bottom: 3.v),
          padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 12.v),
          decoration: AppDecoration.outlineOnPrimaryContainer
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: CustomImageView(
              imagePath: ImageConstant.imgFacebook,
              height: 27.adaptSize,
              width: 27.adaptSize,
              alignment: Alignment.bottomCenter)),
      Container(
          height: 58.v,
          width: 95.h,
          margin: EdgeInsets.only(top: 3.v),
          padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 14.v),
          decoration: AppDecoration.outlineOnPrimaryContainer
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: CustomImageView(
              imagePath: ImageConstant.imgGoogle,
              height: 27.adaptSize,
              width: 27.adaptSize,
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
              height: 27.adaptSize,
              width: 27.adaptSize,
              alignment: Alignment.center))
    ]);
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}
