import 'package:flutter/material.dart';
import 'package:stripe_integration/core/widgets/custom_appbar.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/payment_success_view_body.dart';

class PaymentSuccessView extends StatelessWidget {
  const PaymentSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(title: ''),
      body: PaymentSuccessViewBody(),
    );
  }
}
