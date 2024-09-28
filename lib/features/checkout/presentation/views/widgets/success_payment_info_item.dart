import 'package:flutter/material.dart';
import 'package:stripe_integration/core/utils/styles.dart';

class SuccessPaymentInfoItem extends StatelessWidget {
  const SuccessPaymentInfoItem(
      {super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.textStyle18,
        ),
        Text(
          value,
          style: Styles.textStyle18SemiBold,
        ),
      ],
    );
  }
}
