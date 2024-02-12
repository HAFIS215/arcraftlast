import 'package:arcraftlastfinal/core/app_export.dart';
import 'package:arcraftlastfinal/presentation/products_page/products_page.dart';
import 'package:arcraftlastfinal/widgets/app_bar/appbar_leading_image.dart';
import 'package:arcraftlastfinal/widgets/app_bar/appbar_title.dart';
import 'package:arcraftlastfinal/widgets/app_bar/appbar_trailing_image.dart';
import 'package:arcraftlastfinal/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProductsTabContainerScreen extends StatefulWidget {
  const ProductsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProductsTabContainerScreenState createState() =>
      ProductsTabContainerScreenState();
}

class ProductsTabContainerScreenState extends State<ProductsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 43.v),
              _buildTabview(context),
              SizedBox(
                height: 517.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    ProductsPage(),
                    ProductsPage(),
                    ProductsPage(),
                    ProductsPage(),
                    ProductsPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 60.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 6.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "ARCRAFT",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIcTwotoneSearch,
          margin: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 12.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 81.v,
      width: 365.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        tabs: [
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 30.v,
              ),
              decoration: AppDecoration.outlineErrorContainer1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder13,
              ),
              child: Text(
                "All",
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder13,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIconoirSofa,
                    height: 30.v,
                    width: 32.h,
                    margin: EdgeInsets.only(
                      left: 1.h,
                      top: 17.v,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "couch",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 21.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder13,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgComputer,
                    height: 22.v,
                    width: 26.h,
                    margin: EdgeInsets.only(top: 18.v),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: Text(
                        "Tv",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder13,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGameIconsBedLamp,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    margin: EdgeInsets.only(top: 14.v),
                  ),
                  Text(
                    "Lamp",
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 21.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder13,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCar,
                    height: 26.v,
                    width: 27.h,
                    margin: EdgeInsets.only(top: 13.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 6.v),
                    child: Text(
                      "Bed",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return SizedBox(
      child: CustomImageView(
        imagePath: ImageConstant.imgMenu,
        height: 31.v,
        width: 250.h,
        margin: EdgeInsets.fromLTRB(68.h, 30.v, 71.h, 29.v),
      ),
    );
  }

  /// Common widget
  Widget _buildLamps(
    BuildContext context, {
    required String gameIconsBedLamp,
    required String lamp,
    Function? onTapLamps,
  }) {
    return GestureDetector(
      onTap: () {
        onTapLamps!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder13,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 14.v),
            CustomImageView(
              imagePath: gameIconsBedLamp,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
            Text(
              lamp,
              style: theme.textTheme.labelLarge!.copyWith(
                color: appTheme.gray50002,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
