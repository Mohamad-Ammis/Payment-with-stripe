import 'package:flutter/material.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/payment_gateway_item.dart';

class PaymentGatewaysList extends StatefulWidget {
  const PaymentGatewaysList({super.key});

  @override
  State<PaymentGatewaysList> createState() => _PaymentGatewaysListState();
}

class _PaymentGatewaysListState extends State<PaymentGatewaysList> {
  final List itemsImages = const [
    'assets/images/card.svg',
    'assets/images/paypal.svg'
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemsImages.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  activeIndex = index;
                  setState(() {});
                },
                child: PaymentGatewayItem(
                  image: itemsImages[index],
                  isActive: activeIndex == index ? true : false,
                ),
              ),
            );
          }),
    );
  }
}
