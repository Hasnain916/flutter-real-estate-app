import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_rent/utils/color.dart';
import 'package:home_rent/utils/gap.dart';
import 'package:home_rent/view/accont.dart';
import 'package:home_rent/view/home/explore_card.dart';
import 'package:home_rent/view/home/featured_card.dart';
import 'package:home_rent/view/home/row_title_home.dart';
import 'package:home_rent/view/home/top_location.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchInput = TextEditingController();
  final searchFocus = FocusNode();

  @override
  void dispose() {
    super.dispose();
    searchInput.dispose();
    searchFocus.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.0,
          toolbarHeight: 80,
           //Home page APP BAR , SALAM and Profile Icon
          title: Row(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    color:  AppColors.Black,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: AppColors.Black)
                ),
                child: const Center(
                  child: Icon(Icons.line_weight_sharp, color: Colors.grey,),
                ),
              ),
              Gap(isWidth: true, isHeight: false, width: width * 0.03),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Abbottabad ,kpk', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:  AppColors.textPrimary,
                    fontSize: 22,
                  ),),
                  Text('location',style: TextStyle(
                      color:  AppColors.textPrimary,
                      fontSize: 15
                  ),
                  ),
                ],
              ),
              const SizedBox(
                width: 40,
              ),
              Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color:  AppColors.Black,
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: AppColors.Black)
                    ),
                    child: const Center(
                      child: Icon(Icons.chat, color: Colors.grey,),
                    ),
                  ),
                  Gap(isWidth: true, isHeight: false, width: width * 0.03),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color:  AppColors.Black,
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: AppColors.Black)
                    ),
                    child: const Center(
                      child: Icon(Icons.notifications, color: Colors.grey,),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 290,
                      height: 60,
                      decoration: BoxDecoration(
                        color: AppColors.Black,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.search, color: Colors.grey, size: 22,),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Search here', style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),)
                        ],
                      ),
                    ),
                    Gap(isWidth: true, isHeight: false, width: width * 0.03),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color:  AppColors.textPrimary,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.Black)
                      ),
                      child: const Center(
                        child: Icon(Icons.format_line_spacing_outlined, color: Colors.white,),
                      ),
                    ),
                  ],
                ),

                Gap(isWidth: false, isHeight: true, height: height * 0.03),
                SizedBox(
                  height: height / 20,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 5,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.Black),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 5),
                              child: Icon(Icons.supervisor_account_rounded, size: 25, color: Colors.grey,),
                            ),
                            Text('Family', style: TextStyle(
                              fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                      Gap(isWidth: true, isHeight: false, width: width * 0.03),
                      Container(
                        height: 5,
                        width: 120,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.Black),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 5),
                              child: Icon(Icons.person, size: 25, color: Colors.grey,),
                            ),
                            Text('Bachelor', style: TextStyle(
                                fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                      Gap(isWidth: true, isHeight: false, width: width * 0.03),
                      Container(
                        height: 5,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.Black),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 5),
                              child: Icon(Icons.people_alt_sharp, size: 25, color: Colors.grey,),
                            ),
                            Text('Sublet', style: TextStyle(
                                fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                      Gap(isWidth: true, isHeight: false, width: width * 0.03),
                      Container(
                        height: 5,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.Black),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 5),
                              child: Icon(Icons.hotel, size: 25, color: Colors.grey,),
                            ),
                            Text('Hostel', style: TextStyle(
                                fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                      Gap(isWidth: true, isHeight: false, width: width * 0.03),
                      Container(
                        height: 5,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.Black),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 5),
                              child: Icon(Icons.local_hotel, size: 25, color: Colors.grey,),
                            ),
                            Text('Hotel', style: TextStyle(
                                fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //Near by Estate Explore
                Gap(isWidth: false, isHeight: true, height: height * 0.03),
                RowTitleHome(
                  title: "Exclusive Listings",
                  subtitle: "view all",
                  onPress: () {

                  },
                ),
                Gap(isWidth: false, isHeight: true, height: height * 0.02),
                Row(
                  children: [
                    // called Explored Card
                    const ExploreCard(
                      title: "Garden House",
                      loc: "shinkiari",
                      bed: " 2",
                      isHeart: false,
                      path:
                      "assets/property.jpg",
                    ),
                    Gap(isWidth: true, isHeight: false, width: width * 0.03),
                    const ExploreCard(
                      title: "Ahmed",
                      loc: "Mansehra",
                      bed: " 6",
                      isHeart: false,
                      path:
                      "assets/property2.jpg",
                    ),
                  ],
                ),
                Gap(isWidth: false, isHeight: true, height: height * 0.02),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 130,
                    decoration: BoxDecoration(
                      color: Colors.white10,
                        borderRadius: BorderRadius.circular(10),
                       image: const DecorationImage(
                         image: AssetImage( 'assets/property2.jpg'),
                         fit: BoxFit.fill
                       )
                    ),
                ),

                RowTitleHome(
                  title: "Popular",
                  subtitle: "view all",
                  onPress: () {

                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

