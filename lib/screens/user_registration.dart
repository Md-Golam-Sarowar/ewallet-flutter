
import 'package:ewalletstack/dbHelper/dbHelperFile.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {

  dbconnection db = dbconnection();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final nidController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();
  final mobileController = TextEditingController();
  final bankAccController = TextEditingController();
  final dateOfBirthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("User Registration"),
          backgroundColor: Colors.green,
        ),
        body:
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 25, 30, 0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: TextFormField(
                        controller: nameController,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          icon: Icon(Icons.abc, color: Colors.black54,size: 25,),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black38, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),                    child: TextFormField(
                        controller: emailController,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email, color: Colors.black54,size: 25,),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black38, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),                    child: TextFormField(
                        controller: nidController,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          icon: Icon(Icons.perm_identity_rounded, color: Colors.black54,size: 25,),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black38, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),                    child: TextFormField(
                        controller: bankAccController,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          icon: Icon(Icons.account_balance, color: Colors.black54,size: 25,),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black38, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),                    child: TextFormField(
                        controller: mobileController,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          icon: Icon(Icons.phone_android, color: Colors.black54,size: 25,),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black38, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),                    child: TextFormField(
                        controller: dateOfBirthController,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          icon: Icon(Icons.date_range, color: Colors.black54,size: 25,),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black38, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),                    child: TextFormField(
                        controller: passController,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          icon: Icon(Icons.password, color: Colors.black54,size: 25,),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black38, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),                    child: TextFormField(
                        controller: confirmPassController,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          icon: Icon(Icons.admin_panel_settings_sharp, color: Colors.black54,size: 25,),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black38, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Row(
                        children: [
                          Checkbox(
                            value: false, onChanged: (bool? value) {  },
                          ),
                          const Text("I agree to the terms and conditions", style: TextStyle(fontSize: 18),),
                        ],
                      ),
                    ),
                    TextButton(onPressed: (){ print("click here button pressed"); },
                        child: const Text("For Details Click Here", style: TextStyle(fontSize: 20, color: Colors.blue),),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(55, 0, 35, 0),
                      child: ElevatedButton(
                        onPressed: () async {
                          if(nidController.text.isNotEmpty && nameController.text.isNotEmpty && emailController.text.isNotEmpty && passController.text.isNotEmpty && confirmPassController.text.isNotEmpty && dateOfBirthController.text.isNotEmpty && bankAccController.text.isNotEmpty && mobileController.text.isNotEmpty) {
                            user individualUser = user(
                              Nid: nidController.text,
                              name: nameController.text,
                              email: emailController.text,
                              pass: passController.text,
                              confirmPass: confirmPassController.text,
                              date: dateOfBirthController.text,
                              bankAc: bankAccController.text,
                              mobile: mobileController.text, id:0,);
                            db.addItem(individualUser);
                            Navigator.pushNamed(context, '/login');
                          }
                          else
                            {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return const AlertDialog(
                                    // Retrieve the text that the user has entered by using the
                                    // TextEditingController.
                                    content: Text("All fields are required!"),
                                  );
                                },
                              );
                            }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          elevation: 0,
                          minimumSize: const Size.fromHeight(50),
                        ),
                        child: const Text("Submit", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }
}

