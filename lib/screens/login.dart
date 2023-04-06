
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text('Login Page', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 780,
            color: Colors.lightBlueAccent,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 0, 5),
                      child: Image.asset('Assets/sonali.png', height: 80, width: 80, color: Colors.white,),
                    ),
                    const Text('Sonali e-Wallet', style: TextStyle(fontSize: 30, color: Colors.white),),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 50, 50, 0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.phone_android),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          label: Text('Enter Phone Number', style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 50, 0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.pin),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          label: Text('Enter Pin Number', style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 40, 50, 0),
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          elevation: 0,
                          minimumSize: const Size.fromHeight(50),
                        ),
                        child: const Text("Login", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Text('Dont Have any Account?', style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: TextButton(onPressed: (){
                        Navigator.pushNamed(context, '/register');
                      },
                        style: TextButton.styleFrom(
                          primary: Colors.yellow,
                        ), child: const Text('Register', style: TextStyle(fontSize: 20, decoration: TextDecoration.underline)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 70, 10, 0),
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.lightBlue,
                                ),
                                height: 100,
                                width: 130,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                                  child: Column(
                                    children: [
                                      Image.asset('Assets/branch.jpg', height: 70, width: 70,),
                                      const Text('Branch Locations', style: TextStyle(color: Colors.white, fontSize: 15,))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Container(
                                height: 100,
                                width: 120,
                                decoration: const BoxDecoration(
                                  color: Colors.lightBlue,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                                  child: Column(
                                    children: [
                                      Image.asset('Assets/ATM.avif', height: 70, width: 70,),
                                      const Text('ATM Locations', style: TextStyle(color: Colors.white, fontSize: 15),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 120,
                              decoration: const BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Image.asset('Assets/help.jpg', height: 70, width: 70,),
                                  const Text('Help & Support', style: TextStyle(color: Colors.white, fontSize: 15),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
