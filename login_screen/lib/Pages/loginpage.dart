import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController;
  var passwordController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                height: 100,
                width: double.infinity,
                child: Center(
                  child: Image.asset(
                    "assets/img/logo.png",
                    width: 250,
                    height: 250,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  color: Colors.white,
                  height: 100,
                  width: double.infinity,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Welcome back",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffff4765)),
                        ),
                        TextFormField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.mail, color: Colors.grey),
                              hintText: "Email/Phone Number",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            )),
                        TextFormField(
                            controller: passwordController,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.lock, color: Colors.grey),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            )),
                        Row(
                          children: [
                            const Checkbox(
                              value: false,
                              shape: CircleBorder(),
                              side: BorderSide(
                                color: Color(0xffff4765),
                              ),
                              onChanged: null,
                              activeColor: Color(0xffff4765),
                            ),
                            const Text(
                              "Remember me",
                              style: TextStyle(
                                color: Color(0xffff4765),
                                fontSize: 15,
                              ),
                            ),
                            const Spacer(),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Forget Password?",
                                  style: TextStyle(
                                    color: Color(0xffff4765),
                                    fontSize: 15,
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  color: Colors.white,
                  height: 100,
                  width: double.infinity,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {},
                            child:Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffff4765)),
                          ),
                        ),
                        const Text("Or Login with",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/img/fblogo.png",
                              width: 50,
                              height: 50,
                            ),
                            Image.asset(
                              "assets/img/instalogo.png",
                              width: 50,
                              height: 50,
                            ),
                            Image.asset(
                              "assets/img/inlogo.png",
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have account?",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            TextButton(
                                onPressed: () {}, child: const Text("Sign up",
                                style: TextStyle(
                                  color: Color(0xffff4765),
                                  fontSize: 15,
                                ),))
                          ],
                        ),
                      ],
                    ),
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
