
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stripe_integration/core/utils/styles.dart';

class SuccessPaymentCardInfo extends StatelessWidget {
  const SuccessPaymentCardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/masterCard.svg'),
          const SizedBox(
            width: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Credit Card",
                style: Styles.textStyle18,
              ),
              Text(
                "Mastercard **78",
                style: Styles.textStyle16,
              ),
            ],
          )
        ],
      ),
    );
  }
}
