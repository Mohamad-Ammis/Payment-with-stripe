import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:stripe_integration/core/utils/app_routes.dart';
import 'package:stripe_integration/core/widgets/custom_button.dart';
import 'package:stripe_integration/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:stripe_integration/features/checkout/presentation/cubits/cubit/checkout_cubit.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/payment_gateway_listview.dart';

class PaymentMethodesBottomSheet extends StatelessWidget {
  const PaymentMethodesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          CustomButtonBlocConsumer()
        ],
      ),
    );
  }
}

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckoutCubit, CheckoutState>(
      builder: (context, state) {
        return CustomButton(
          onTap: () {
            PaymentIntentInputModel paymentIntentInputModel =
                PaymentIntentInputModel(
                    amount: '100',
                    currency: 'USD',
                    customerId: 'cus_Qvws3ZErMXTMOI');
            BlocProvider.of<CheckoutCubit>(context)
                .makePayment(model: paymentIntentInputModel);
          },
          title: 'Continue',
          isLoading: state is CheckoutLoading ? true : false,
        );
      },
      listener: (BuildContext context, CheckoutState state) {
        if (state is CheckoutSuccess) {
          GoRouter.of(context).pushReplacement(AppRouter.kPaymentSuccessPath);
        } else if (state is CheckoutFailure) {
          log(state.errMessage);
          GoRouter.of(context).pop();
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errMessage)));
        }
      },
    );
  }
}
