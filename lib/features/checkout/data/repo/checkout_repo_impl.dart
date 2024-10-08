import 'package:dartz/dartz.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_integration/core/errors/failure.dart';
import 'package:stripe_integration/core/utils/stripe_service.dart';
import 'package:stripe_integration/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:stripe_integration/features/checkout/data/repo/checkout_repo.dart';

class CheckoutRepoImpl implements CheckoutRepo {
  final StripeService stripeService = StripeService();

  CheckoutRepoImpl();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel model}) async {
    try {
      await stripeService.makePayment(model: model);
      return Right(null);
    } on Exception catch (e) {
      // NOTE EXCEPTION MAY HAPPENED IF USER CANCEL THE PAYMENT IF U DONT USE TRY CATCH
      // SO FOR BETTER USER UX WE MUST HANDLE ERR MESSAGE
      String errMessage;
      if (e is StripeException &&
          e.error.localizedMessage == 'The payment flow has been canceled') {
        // Handle canceled payment
        errMessage = 'Payment canceled by the user';
      } else {
        // Handle other errors
        errMessage = e.toString();
      }
      return Left(ServerFailure(errMessage: errMessage));
    }
  }
}
