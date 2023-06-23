import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:payment_app/utils/colors.dart';
import 'package:payment_app/utils/images.dart';
import 'package:payment_app/views/signup_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

    final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              
          
              
              Center(child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.11,
                  ),
                  images.logoPic,
                  Text('VIRTUAL CARD',style: TextStyle( fontSize: 30,fontWeight: FontWeight.bold),),
                ],
              )),
         SizedBox(
           height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    children: [
                      Text('LOGIN',style: TextStyle( fontSize: 25,fontWeight: FontWeight.bold),),
                    ],
                  ),
            Row(
                    children: [
                      SizedBox(
           height: MediaQuery.of(context).size.height * 0.03,
                  ),  
                      Text(
                        'Email',
                        style: TextStyle(color: colors.greyColor),
                      ),
                    ],
                  ),
        
                  Form(
                    key:formKey ,
                    child: Column(children: [
        
          TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Masukkan Email',
                      hintStyle: TextStyle(color: Color(0xff004A61)),
                      prefixIcon: Icon(Icons.email),
                      fillColor: Colors.grey[50],
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    controller: emailController,
                  ),
        SizedBox(
           height: MediaQuery.of(context).size.height * 0.03,
                  ),                Row(
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(color: colors.greyColor),
                      ),
                    ],
                  ),
                  
        // SizedBox(
        //    height: MediaQuery.of(context).size.height * 0.03,
        //                 ),      
                            TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Masukkan Password',
                      hintStyle: TextStyle(color: Color(0xff004A61)),
                      prefixIcon: Icon(Icons.lock_open_rounded),
                      fillColor: Colors.grey[50],
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    controller: passwordController,
                  ),
        
                  ],)),
        
        SizedBox(
           height: MediaQuery.of(context).size.height * 0.03,
                  ),                           Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't Have any Account  "),
        SizedBox(
           height: MediaQuery.of(context).size.height * 0.03,
                  ),                               GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpView()));
                          },
                          child: Text("Sign Up? ",
                              style: TextStyle(
                                color: colors.themeColor,
                              ))),
                    ],
                  ),
            
            ],),
          ),
        ),
      ),
    );
  }
}
