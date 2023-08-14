import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_rent/utils/color.dart';
import 'package:home_rent/utils/gap.dart';

class ExploreCard extends StatelessWidget {
  final String title, loc, bed, path;
  final bool isHeart;
  const ExploreCard({
    Key? key,
    required this.bed,
    required this.title,
    required this.loc,
    required this.path,
    required this.isHeart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Expanded(
        child: InkWell(
      onTap: () {
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.inputBackground,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    fit: BoxFit.cover,
                    height: 160,
                    image: AssetImage(path),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        CupertinoIcons.heart,
                        size: 20,
                        color: Colors.red,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Gap(isWidth: false, isHeight: true, height: height * 0.01),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            Gap(isWidth: false, isHeight: true, height: height * 0.01),
            Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.location_pin,
                      color: Colors.grey,
                    ),
                    Text(loc)
                  ],
                ),
                Gap(isWidth: true, isHeight: false, width: width * 0.01),
                Row(
                  children: [
                    const Icon(
                      Icons.bed,
                      color: Colors.grey,
                    ),
                    Text(
                      bed,
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontSize: 12),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
