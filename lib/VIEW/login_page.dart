import 'package:c_star/Utils/styles.dart';
import 'package:c_star/VIEW/Home/home_drawer.dart';
import 'package:c_star/VIEW/Home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/login_background_image.JPG'))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/STAR NEW LOGO.png',
                    height: 150,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "LOGIN",
                    style: styles.headerStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "E-MAIL",
                      style: styles.textStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5),
                          child: TextFormField(
                              style: styles.textStyle,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '#########',
                                  hintStyle: styles.textStyle)))),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "PASSWORD",
                      style: styles.textStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5),
                          child: TextFormField(
                              style: styles.textStyle,
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '*******',
                                  hintStyle: styles.textStyle)))),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const HomePage())));
                      },
                      child: const Text(
                        "SIGNUP",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  // Divider(
                  //   color: Colors.grey,
                  //   thickness: 2,
                  // ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "/ OR /",
                    style: styles.textStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'ALREADY A USER ?  LOGIN',
                    style: styles.textStyle,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
