import 'package:flutter/material.dart';
import 'package:stripe_integration/core/widgets/custom_button.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/payment_methodes_bottomsheet.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/total_price.dart';

class OrderInfoSection extends StatelessWidget {
  const OrderInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OrderInfoItem(
          title: 'Order subtotal',
          value: r"30.21$",
        ),
        const SizedBox(
          height: 3,
        ),
        const OrderInfoItem(
          title: 'Discount',
          value: r"0$",
        ),
        const SizedBox(
          height: 3,
        ),
        const OrderInfoItem(
          title: 'Shipping',
          value: r"8$",
        ),
        const Divider(
          height: 34,
          thickness: 2,
          color: Color(0xffC7C7C7),
          indent: 10,
          endIndent: 10,
        ),
        const TotalPrice(title: 'Total Price', value: r'50.12$'),
        // Spacer(),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const PaymentMethodesBottomSheet();
                });
          },
          title: 'Complete Payment',
        ),
      ],
    );
  }
}
