import 'package:flutter/material.dart';
import 'package:home_rent/utils/color.dart';
import 'package:home_rent/utils/gap.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: width / 2.40,
            height: height / 14,
            decoration: BoxDecoration(
                color: Color(0xff234F68),
                borderRadius: BorderRadius.circular(50)),
            child: Row(
              children: [
                const Icon(
                  Icons.location_on,
                  size: 20,
                  color: AppColors.whiteColor,
                ),
                 Gap(isWidth: true, isHeight: false, width: 5),
                Text(
                  "Pabna Sadar",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontSize: 14, color: AppColors.whiteColor),
                ),
                const Icon(
                  Icons.arrow_drop_down,
                  size: 20,
                  color: AppColors.whiteColor,
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            InkWell(
              onTap: () {

              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: AppColors.primaryColor)),
                child: const Center(
                  child: Icon(Icons.notifications),
                ),
              ),
            ),
            Gap(isWidth: true, isHeight: false, width: width * 0.03),
          ],
        )
      ],
    );
  }
}
