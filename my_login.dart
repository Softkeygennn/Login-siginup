import 'dart:ui';

import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/login.png"),
          fit: BoxFit.cover
        ),

      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(),
            Container(
              child: const Padding(
                padding: EdgeInsets.only(left: 35, top: 130),
                child: Text(
                  "Welcome \n Back",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,
                  right: 35, left: 35),
              
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Enter Gmail',
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                      ),
                      const SizedBox(height: 20,),
              
                      TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            hintText: 'Enter Password',
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Sign In",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          const SizedBox(width: 30,),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: const Color(0xff4c505b),
                            child: IconButton(
                                onPressed: (){}, icon: const Icon(Icons.arrow_forward),
                            color: Colors.white,),
                          )
                        ],
                      ),
                      const SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: (){
                                Navigator.pushNamed(context, 'register');
                              },
                            style: const ButtonStyle(),
                              child: const Text("Sign Up",
                              textAlign: TextAlign.left,
                                style: TextStyle(
                               color:    Color(0xff4c505b),
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          ),

                          TextButton(
                              onPressed: (){},
                              child: const Text("Forgot Password",
                                  style: TextStyle(
                                    color:    Color(0xff4c505b),
                                    decoration: TextDecoration.underline,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],

        ),

      ),
    );
  }
}
