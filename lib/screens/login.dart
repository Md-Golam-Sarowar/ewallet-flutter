
import 'package:ewalletstack/Providers/authenticationProvider.dart';
import 'package:ewalletstack/dbHelper/dbHelperFile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/user.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  final pnController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<authenticationProvider>(
      create: (context) => authenticationProvider(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text('Login Page', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          body: SingleChildScrollView(
            child: Container(
              height: 780,
              color: Colors.green,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 25, 0, 5),
                        child: Image.asset('Assets/sonali.png', height: 80, width: 80, color: Colors.yellow,),
                      ),
                      const Text('Sonali e-Wallet', style: TextStyle(fontSize: 30, color: Colors.white),),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 50, 50, 0),
                        child: TextFormField(
                          controller: pnController,
                          style: TextStyle(color: Colors.white),
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
                          controller: passController,
                          style: TextStyle(color: Colors.white),
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
                        child: Consumer<authenticationProvider>(
                          builder: (context, provider, child) {
                            return ElevatedButton(
                              onPressed: () async {
                                bool authenticated = false;
                                dbconnection db = dbconnection();
                                List<user> users = await db.fetchUsers();

                                users.forEach((individualUser) {
                                  if (individualUser.mobile ==
                                      pnController.text &&
                                      individualUser.pass ==
                                          passController.text) {
                                    provider.setData(individualUser.name, individualUser.pass, individualUser.id);
                                    authenticated = true;
                                    Navigator.pushNamed(context, '/home');
                                  }
                                });

                                if (pnController.text.length == 0 ||
                                    passController.text.length == 0) {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const AlertDialog(
                                        // Retrieve the text that the user has entered by using the
                                        // TextEditingController.
                                        content: Text(
                                            "Phone Number/Password can not be empty!"),
                                      );
                                    },
                                  );
                                }
                                else if (authenticated == false) {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const AlertDialog(
                                        // Retrieve the text that the user has entered by using the
                                        // TextEditingController.
                                        content: Text(
                                            "Invalid username/password"),
                                      );
                                    },
                                  );
                                }

                                // showDialog(
                                //   context: context,
                                //   builder: (context) {
                                //     return AlertDialog(
                                //       // Retrieve the text that the user has entered by using the
                                //       // TextEditingController.
                                //       content: Text(pnController.text+"  "+passController.text),
                                //     );
                                //   },
                                // );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black38,
                                elevation: 0,
                                minimumSize: const Size.fromHeight(50),
                              ),
                              child: const Text("Login", style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),),
                            );
                          }
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
                                    color: Colors.black38,
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
                                    color: Colors.black38,
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
                                  color: Colors.black38,
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
      ),
    );
  }
  }
