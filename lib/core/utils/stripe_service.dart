import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_integration/core/utils/api_keys.dart';
import 'package:stripe_integration/core/utils/api_service.dart';
import 'package:stripe_integration/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:stripe_integration/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel model) async {
    var response = await apiService.post(
        url: 'https://api.stripe.com/v1/payment_intents',
        body: model.toJson(),
        token: ApiKeys.secretKey);
    PaymentIntentModel paymentIntentModel =
        PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }
}
