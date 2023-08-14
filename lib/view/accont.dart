
import 'package:flutter/material.dart';
import 'package:home_rent/utils/color.dart';
import 'package:home_rent/view/home.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}
class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    final chooseProfile = Container(
      alignment: Alignment.center,
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: Stack(
        children: [
          const Positioned(
            child: CircleAvatar(
              backgroundColor: AppColors.textPrimary,
              radius: 70,
               child: CircleAvatar(
                backgroundColor: AppColors.textPrimary,
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
              left: 103,
              top: 90,
              width: 37,
              // height: 37,
              child: GestureDetector(
                onTap: () async {
                },
                child: const CircleAvatar(
                    backgroundColor: Color(0xFFe7edeb),
                    child: Icon(
                      Icons.camera_alt, color: AppColors.textPrimary,)),
              )),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.textPrimary,
          title: const Text('My Account', style: TextStyle(
            color: Colors.white
          ),),
          centerTitle: true,
          leading: InkWell(
              onTap: () =>
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  ),
              child: const Icon(Icons.arrow_back_ios, color: Colors.white,)
          )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            chooseProfile,
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  //privacy policy
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      shape:
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: const Color(0xFFe7edeb),
                    ),
                    onPressed: () {

                    },
                    child: Row(
                      children: const [
                        Icon(Icons.privacy_tip_rounded,color: AppColors.textPrimary),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(child: Text("Privacy Policy",style: TextStyle(color: AppColors.textPrimary))),
                        // Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // share app features
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      shape:
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: const Color(0xFFe7edeb),
                    ),
                    onPressed: () {

                    },
                    child: Row(
                      children: const [
                        Icon(Icons.share,color: AppColors.textPrimary),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(child: Text("Share App",style: TextStyle(color: AppColors.textPrimary))),
                        // Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //Rate us
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      shape:
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: const Color(0xFFe7edeb),
                    ),
                    onPressed: () {

                    },
                    child: Row(
                      children: const [
                        Icon(Icons.star,color: AppColors.textPrimary),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(child: Text("Rate Us",style: TextStyle(color: AppColors.textPrimary))),
                        // Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      shape:
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: const Color(0xFFe7edeb),
                    ),
                    onPressed: () async =>
                    {
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.logout,color: AppColors.textPrimary),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(child: Text("Log Out",style: TextStyle(color: AppColors.textPrimary))),
                        // Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



