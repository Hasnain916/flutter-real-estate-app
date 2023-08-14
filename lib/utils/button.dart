import 'package:flutter/material.dart';
import 'package:home_rent/utils/color.dart';


class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;

  const RoundButton({Key? key,
    required this.title,
    required this.onTap,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color:   AppColors.primaryColor,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Center(child: loading ? const CircularProgressIndicator(strokeWidth: 4, color: Colors.white,):
        Text(title, style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        ),
      ),
    );
  }
}
