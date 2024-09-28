import 'package:flutter/material.dart';
import 'package:stripe_integration/core/utils/styles.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/success_payment_card_info.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/success_payment_info_item.dart';
import 'package:stripe_integration/features/checkout/presentation/views/widgets/total_price.dart';

class PaymentSuccessCard extends StatelessWidget {
  const PaymentSuccessCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50 + 16, left: 16, right: 16),
      width: double.infinity,
      decoration: ShapeDecoration(
          color: const Color(0xffEDEDED),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Column(
        children: [
          const Text(
            'Thank You !',
            style: Styles.textStyle25,
          ),
          Text(
            'Your transaction was successful',
            style: Styles.textStyle20,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 42,
          ),
          const SuccessPaymentInfoItem(
            title: 'Date',
            value: '01/24/2023',
          ),
          const SizedBox(
            height: 20,
          ),
          const SuccessPaymentInfoItem(
            title: 'Time',
            value: '10:15 AM',
          ),
          const SizedBox(
            height: 20,
          ),
          const SuccessPaymentInfoItem(
            title: 'To',
            value: 'Sam Louis',
          ),
          const Divider(
            thickness: 2,
            height: 60,
            color: Color(0xffC6C6C6),
          ),
          const TotalPrice(title: "Total", value: r'50.12$'),
          const SizedBox(
            height: 30,
          ),
          const SuccessPaymentCardInfo(),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/QR.png',
                width: 100,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1.5, color: Colors.green)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 29, vertical: 12),
                child: Text(
                  'Paid',
                  style: Styles.textStyle24.copyWith(color: Colors.green),
                ),
              )
            ],
          ),
          SizedBox(
            height:
                (MediaQuery.sizeOf(context).height * 0.2 + 20) / 2 - (58 / 2),
          )
        ],
      ),
    );
  }
}
