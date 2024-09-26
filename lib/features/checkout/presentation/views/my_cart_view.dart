import 'package:flutter/material.dart';
import 'package:stripe_integration/core/utils/styles.dart';
import 'package:stripe_integration/core/widgets/custom_appbar.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  CustomAppbar(
        title: 'My Cart',
      ),
      body: MyCartViewBody(),
    );
  }
}
