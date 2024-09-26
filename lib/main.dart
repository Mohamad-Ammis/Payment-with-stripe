import 'package:flutter/material.dart';
import 'package:stripe_integration/features/checkout/presentation/views/my_cart_view.dart';

void main() {
  runApp(const StripePayment());
}

class StripePayment extends StatelessWidget {
  const StripePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}
