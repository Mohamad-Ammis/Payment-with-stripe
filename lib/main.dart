import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_integration/core/utils/api_keys.dart';
import 'package:stripe_integration/core/utils/app_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = ApiKeys.publishableKey;
  //  Stripe.merchantIdentifier = 'any string works';
  await Stripe.instance.applySettings();
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
// TO SAVE CARD INFO
//WHEN CREATE USER APP ACCOUNT WE MUSR CREATE STRIPE ACCOUNT TO SAVE USER INFO
//SO WE CAN USE IT WHEN WE NEED ANY PAYMENT INFO
// TO GET USER DATA WE CAN USE EPHEMERAL KEY
// SO FIRST CREARE EPHMERAL KEY TO GET USER INFO KEY
//CREATE EPHEMERAL KEY(STRIPE VERSION,CUSTOMER ID)
//1. CREATE PAYMENT INTENT WITH REQUIRD PARAM {AMOUNT , CUREENCY,}
//OPTIONAL CUSTOMER ID FOR SAVE USER CARD INFO
//2. INIT PAYMENT SHEET WITH REQUIRED PARAM {merchantDisplayName,paymentIntentClientSecret}
//3. PRESENT PAYMENT SHEET
//4. TO SAVE CUSTOMER CARD WE CAN USE CUSTOMER AND EPHERMAL TOPIC
