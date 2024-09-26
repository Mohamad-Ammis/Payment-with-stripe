
import 'package:flutter/material.dart';
import 'package:stripe_integration/core/widgets/custom_button.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/total_price.dart';

class OrderInfoSection extends StatelessWidget {
  const OrderInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OrderInfoItem(
          title: 'Order subtotal',
          value: r"30.21$",
        ),
        SizedBox(
          height: 3,
        ),
        OrderInfoItem(
          title: 'Discount',
          value: r"0$",
        ),
        SizedBox(
          height: 3,
        ),
        OrderInfoItem(
          title: 'Shipping',
          value: r"8$",
        ),
        Divider(
          height: 34,
          thickness: 2,
          color: Color(0xffC7C7C7),
          indent: 10,
          endIndent: 10,
        ),
        TotalPrice(title: 'Total Price', value: r'50.12$'),
        // Spacer(),
        SizedBox(
          height: 30,
        ),
        CustomButton(
          title: 'Complete Payment',
        ),
         SizedBox(
          height: 12,
        )
      ],
    );
  }
}
