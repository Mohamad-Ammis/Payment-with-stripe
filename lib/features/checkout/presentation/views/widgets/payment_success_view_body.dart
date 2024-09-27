import 'package:flutter/material.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/custom_dashed_line.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/payment_success_card.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/success_check_icon.dart';

class PaymentSuccessViewBody extends StatelessWidget {
  const PaymentSuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const PaymentSuccessCard(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.2 + 20,
            left: 20 + 5,
            right: 20 + 5,
            child: const CustomDashedLine(),
          ),
          Positioned(
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              left: -20,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              right: -20,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          const Positioned(
            left: 0,
            right: 0,
            top: -50,
            child: SuccessCheckIcon(),
          )
        ],
      ),
    );
  }
}
