import 'package:arcraftlastfinal/core/app_export.dart';
import 'package:arcraftlastfinal/widgets/custom_elevated_button.dart';
import 'package:arcraftlastfinal/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class LoginRegisterScreen extends StatelessWidget {
  const LoginRegisterScreen({Key? key}) : super(key: key);

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
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgLoginRegister),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.h, vertical: 47.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 53.v),
                      Text("Welcome to",
                          style: CustomTextStyles.headlineMediumOrange100),
                      SizedBox(height: 7.v),
                      Text("ARCRAFT", style: theme.textTheme.displayMedium),
                      Spacer(),
                      CustomElevatedButton(
                          height: 55.v,
                          text: "Login",
                          buttonStyle: CustomButtonStyles.fillGreen,
                          buttonTextStyle: CustomTextStyles.titleMediumBold18,
                          onPressed: () {
                            onTapLogin(context);
                          }),
                      SizedBox(height: 29.v),
                      CustomOutlinedButton(
                          text: "Register",
                          onPressed: () {
                            onTapRegister(context);
                          }),
                      SizedBox(height: 74.v),
                      GestureDetector(
                          onTap: () {
                            onTapContinueAsAGuest(context);
                          },
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Continue as a guest",
                                    style: CustomTextStyles.titleMediumBold
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrow1,
                                    height: 2.v,
                                    width: 15.h,
                                    margin: EdgeInsets.only(
                                        left: 10.h, top: 9.v, bottom: 8.v))
                              ]))
                    ])))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }

  /// Navigates to the productsTabContainerScreen when the action is triggered.
  onTapContinueAsAGuest(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productsTabContainerScreen);
  }
}
