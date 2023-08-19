import 'package:flutter/material.dart';
import 'package:home_rent/utils/color.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}
class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body:  Stack(
        children: [
          Positioned(
            top: 0.0,
            child: Container(
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration:const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: const Icon(Icons.arrow_back_ios, size: 20,  color: AppColors.primaryColor,)),
                    ),
                   const SizedBox(
                      width: 100,
                    ),
                    const Text('My Profile', style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),)
                  ],
                ),
              ),

            ),
          ),
          Positioned(
            top: 130,
            right: 30,
            left: 30,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: const Center(
                      child: Text(
                        'No Image', style: TextStyle(
                          color: Colors.white
                      ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const[
                         SizedBox(
                          height: 15,
                        ),
                        Text('Name:', style:  TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold
                        ),),
                         SizedBox(
                          height: 10,
                        ),
                        Text('ID: ', style:   TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
          Positioned(
            top: 280,
            left: 15,
            right: 15,
            bottom: 0,
            child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      // ACCOUNT
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const[
                           Icon(Icons.account_circle_rounded, size: 35,  color: AppColors.primaryColor,),
                           SizedBox(
                            width: 10,
                          ),
                           Text('Account', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(15),
                          shape:
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {

                        },
                        child: Row(
                          children: const [
                            Icon(Icons.account_circle,  color: AppColors.primaryColor,),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Text("Profile", style: TextStyle(
                              color: AppColors.primaryColor,
                            ),)),
                            Icon(Icons.arrow_forward_ios,  color: AppColors.primaryColor,)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:const [
                           Icon(Icons.help, size: 35,  color: AppColors.primaryColor,),
                           SizedBox(
                            width: 10,
                          ),
                           Text('Contact and Help', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(15),
                          shape:
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.help_center_rounded,  color: AppColors.primaryColor,),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Text("Help",style: TextStyle(
                              color: AppColors.primaryColor,
                            ),)),
                            Icon(Icons.arrow_forward_ios,  color: AppColors.primaryColor,),
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
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.email,  color: AppColors.primaryColor,),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Text("Contact Us",style: TextStyle(
                              color: AppColors.primaryColor,
                            ),)),
                            Icon(Icons.arrow_forward_ios,  color: AppColors.primaryColor,),
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
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.bug_report,  color: AppColors.primaryColor,),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Text("Report issues",style: TextStyle(
                              color: AppColors.primaryColor,
                            ),)),
                            Icon(Icons.arrow_forward_ios,  color: AppColors.primaryColor,),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //Others
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const[
                           Icon(Icons.restore_page, size: 35,  color: AppColors.primaryColor,),
                           SizedBox(
                            width: 10,
                          ),
                           Text('Others', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(15),
                          shape:
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {

                        },
                        child: Row(
                          children: const [
                            Icon(Icons.privacy_tip,  color: AppColors.primaryColor,),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Text("Privacy Policy",style: TextStyle(
                              color: AppColors.primaryColor,
                            ),)),
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
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {

                        },
                        child: Row(
                          children: const [
                            Icon(Icons.interpreter_mode_sharp,  color: AppColors.primaryColor,),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Text("Term & conditions",style: TextStyle(
                              color: AppColors.primaryColor,
                            ),)),
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
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {

                        },
                        child: Row(
                          children: const [
                            Icon(Icons.logout,  color: AppColors.primaryColor,),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Text("Log Out",style: TextStyle(
                              color: AppColors.primaryColor,
                            ),)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Text('testing version', style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      )
                    ],
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}
