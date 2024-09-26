import 'package:flutter/material.dart';
import 'package:stripe_integration/core/utils/styles.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_outlined)),
      centerTitle: true,
      title:  Text(
        title,
        style: Styles.textStyle25,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
