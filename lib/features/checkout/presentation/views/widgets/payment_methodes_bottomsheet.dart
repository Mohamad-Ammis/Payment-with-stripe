
import 'package:flutter/material.dart';
import 'package:stripe_integration/core/widgets/custom_button.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/payment_gateway_listview.dart';

class PaymentMethodesBottomSheet extends StatelessWidget {
  const PaymentMethodesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentGatewaysList(),
          SizedBox(
            height: 32,
          ),
          CustomButton(title: 'Continue')
        ],
      ),
    );
  }
}
