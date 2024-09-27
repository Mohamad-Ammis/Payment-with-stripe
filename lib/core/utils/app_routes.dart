import 'package:go_router/go_router.dart';
import 'package:stripe_integration/features/checkout/presentation/views/my_cart_view.dart';
import 'package:stripe_integration/features/checkout/presentation/views/payment_details_view.dart';

abstract class AppRouter {
  static const String kMyCartPath = '/myCart';
  static const String kPaymentDetailsPath = '/paymentDetails';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MyCartView(),
      ),
      GoRoute(
        path: kPaymentDetailsPath,
        builder: (context, state) => const PaymentDetailsView(),
      ),
    ],
  );
}
