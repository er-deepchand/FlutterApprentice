import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title, required this.onBack})
      : super(key: key);
  final String title;
  final Function() onBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          GestureDetector(
            onTap: onBack,
            child: const Icon(Icons.keyboard_backspace),
          ),
          const SizedBox(width: 16,),
          Text(title, style:const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),)
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
