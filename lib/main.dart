import 'package:flutter/material.dart';
import 'package:stripe_integration/core/utils/app_routes.dart';
import 'package:stripe_integration/features/checkout/presentation/views/my_cart_view.dart';

void main() {
  runApp(const StripePayment());
}

class StripePayment extends StatelessWidget {
  const StripePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
