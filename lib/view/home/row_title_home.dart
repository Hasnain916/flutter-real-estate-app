import 'package:flutter/material.dart';
import 'package:home_rent/utils/color.dart';

class RowTitleHome extends StatelessWidget {
  final VoidCallback onPress;
  final String title, subtitle;

  const RowTitleHome(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline1!.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: AppColors.textPrimary),
        ),
        InkWell(
          onTap: onPress,
          child: Text(
            subtitle,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: const Color(0xff234F68), fontSize: 15),
          ),
        ),
      ],
    );
  }
}
