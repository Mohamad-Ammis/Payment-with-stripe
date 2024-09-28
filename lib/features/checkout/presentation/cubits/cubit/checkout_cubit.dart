import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:stripe_integration/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:stripe_integration/features/checkout/data/repo/checkout_repo.dart';

part 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit(this.checkoutRepo) : super(CheckoutInitial());
  final CheckoutRepo checkoutRepo;
  Future makePayment({required PaymentIntentInputModel model}) async {
    emit(CheckoutLoading());
    var data = await checkoutRepo.makePayment(model: model);
    data.fold((l) {
      emit(CheckoutFailure(errMessage: l.errMessage));
    }, (r) {
      emit(CheckoutSuccess());
    });
  }

  @override
  void onChange(Change<CheckoutState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
