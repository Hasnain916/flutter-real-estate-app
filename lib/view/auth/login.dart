
import 'package:flutter/material.dart';
import 'package:home_rent/utils/button.dart';
import 'package:home_rent/view/auth/otp.dart';


class LoginWithPhoneNumber extends StatefulWidget {
  const LoginWithPhoneNumber({Key? key}) : super(key: key);

  @override
  State<LoginWithPhoneNumber> createState() => _LoginWithPhoneNumberState();
}

class _LoginWithPhoneNumberState extends State<LoginWithPhoneNumber> {
  TextEditingController countryController = TextEditingController();
  bool loading=false;
  bool floading=true;

  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+92";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/log.png',
              ),

              const SizedBox(
                height: 25,
              ),
              const Text(
                "Phone Verification",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "We need to register your phone before getting started!",
                style: TextStyle(
                  fontSize: 16,
                    color: Colors.black87
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(10)),
                child:
                TextField(
                  controller: countryController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(

                    border: InputBorder.none,
                    hintText: "+923768798",
                    prefixIcon: Icon(Icons.phone),

                  ),
                ),

              ),
              const SizedBox(
                height: 20,
              ),
              RoundButton(
                  title: "send code",
                  loading: loading,
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  OTP()));

                  })
            ],
          ),
        ),
      ),
    );
  }
}