import 'package:arcraftlastfinal/core/app_export.dart';
import 'package:arcraftlastfinal/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductcartlistItemWidget extends StatelessWidget {
  ProductcartlistItemWidget({
    Key? key,
    this.onTapProductCart,
  }) : super(
          key: key,
        );

  VoidCallback? onTapProductCart;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProductCart!.call();
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Container(
          height: 160.v,
          width: 340.h,
          decoration: AppDecoration.outlineErrorContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSpacejoy5owo6a2iktcUnsplash,
                height: 160.v,
                width: 153.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
                alignment: Alignment.centerLeft,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 10.h,
                    bottom: 3.v,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSofa11,
                        height: 127.adaptSize,
                        width: 127.adaptSize,
                        margin: EdgeInsets.only(bottom: 30.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 9.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "SOFA",
                              style:
                                  CustomTextStyles.titleMediumPrimaryContainer,
                            ),
                            SizedBox(height: 25.v),
                            SizedBox(
                              width: 136.h,
                              child: Text(
                                "Try 3d model of sofa and Experience Augmented Reality",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodySmall!.copyWith(
                                  height: 1.17,
                                ),
                              ),
                            ),
                            SizedBox(height: 14.v),
                            CustomIconButton(
                              height: 43.adaptSize,
                              width: 43.adaptSize,
                              alignment: Alignment.centerRight,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgSeeMoreGreen200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
