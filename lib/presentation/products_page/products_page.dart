import '../products_page/widgets/productcartlist_item_widget.dart';
import 'package:arcraftlastfinal/core/app_export.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  ProductsPageState createState() => ProductsPageState();
}

class ProductsPageState extends State<ProductsPage>
    with AutomaticKeepAliveClientMixin<ProductsPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  _buildProductCartList(context)
                ]))));
  }

  /// Section Widget
  Widget _buildProductCartList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 37.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return ProductcartlistItemWidget(onTapProductCart: () {
                onTapProductCart(context);
              });
            }));
  }

  /// Navigates to the setScreen when the action is triggered.
  onTapProductCart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.setScreen);
  }
}
