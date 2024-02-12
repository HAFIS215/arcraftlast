import 'package:arcraftlastfinal/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sofacam",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sofacamScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "buildingcam",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.buildingcamScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Register",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "tvcam",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.tvcamScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "lampcam",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.lampcamScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "couchcam",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.couchcamScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "bedcam",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.bedcamScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "setcam",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.setcamScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login/register",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginRegisterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Products - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sofa",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.sofaScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " tv",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.tvScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "lamp",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.lampScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "couch",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.couchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "bed",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.bedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "set",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.setScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "building",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.buildingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
