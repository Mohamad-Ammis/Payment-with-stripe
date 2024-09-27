import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_integration/core/utils/app_routes.dart';

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
//1. CREATE PAYMENT INTENT WITH REQUIRD PARAM {AMOUNT , CUREENCY}
//2. INTEGRATE PAYMENT SHEET WITH REQUIRED PARAM {merchantDisplayName,paymentIntentClientSecret}
// Future<void> initPaymentSheet() async {
//     try {
//       // 1. create payment intent on the server
//       final data = await _createTestPaymentSheet();

//       // 2. initialize the payment sheet
//      await Stripe.instance.initPaymentSheet(
//         paymentSheetParameters: SetupPaymentSheetParameters(
//           // Set to true for custom flow
//           customFlow: false,
//           // Main params
//           merchantDisplayName: 'Flutter Stripe Store Demo',
//           paymentIntentClientSecret: data['paymentIntent'],
//         ),
//       );
//       setState(() {
//         _ready = true;
//       });
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error: $e')),
//       );
//       rethrow;
//     }
// }
//3. PRESENT PAYMENT SHEET 