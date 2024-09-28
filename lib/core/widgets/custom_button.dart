import 'package:flutter/material.dart';
import 'package:stripe_integration/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onTap,
    this.isLoading = false,
  });
  final String title;
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xff34A853)),
          child: Center(
              child: isLoading
                  ? const CircularProgressIndicator()
                  : Text(
                      title,
                      style: Styles.textStyle22.copyWith(color: Colors.white),
                    )),
        ),
      ),
    );
  }
}
