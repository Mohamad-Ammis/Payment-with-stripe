import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentGatewayItem extends StatelessWidget {
  const PaymentGatewayItem({
    super.key,
    this.isActive = false,
    required this.image,
  });
  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      clipBehavior: Clip.hardEdge,
      width: 104,
      decoration: ShapeDecoration(
          shape: (RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                width: 1.5,
                color: isActive ? const Color(0xff34A853) : Colors.grey,
              ))),
          shadows: [
            if (isActive)
              const BoxShadow(
                  blurRadius: 4,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                  color: Color(0xff34A853))
          ]),
      duration: const Duration(milliseconds: 300),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: SvgPicture.asset(
          image,
          height: 30,
        )),
      ),
    );
  }
}
