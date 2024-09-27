import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stripe_integration/core/utils/app_routes.dart';
import 'package:stripe_integration/core/widgets/custom_button.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/payment_gateway_listview.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      const SliverToBoxAdapter(child: PaymentGatewaysList()),
      SliverToBoxAdapter(
          child: CustomCreditCard(
        formKey: formKey,
        autovalidateMode: autovalidateMode,
      )),
      SliverFillRemaining(
        hasScrollBody: false,
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomButton(
                title: 'Pay',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    log('validate');
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                    GoRouter.of(context).push(AppRouter.kPaymentSuccessPath);
                  }
                },
              ),
            )),
      ),
    ]);
  }
}
