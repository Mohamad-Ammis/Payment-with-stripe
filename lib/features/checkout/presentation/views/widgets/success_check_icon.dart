import 'package:flutter/material.dart';

class SuccessCheckIcon extends StatelessWidget {
  const SuccessCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Color(0xffEDEDED),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.green,
        child: Icon(
          Icons.done,
          color: Colors.white,
          size: 60,
        ),
      ),
    );
  }
}
