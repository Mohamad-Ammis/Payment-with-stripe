import 'package:dartz/dartz.dart';
import 'package:stripe_integration/core/errors/failure.dart';
import 'package:stripe_integration/features/checkout/data/models/payment_intent_input_model.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel model});
}
