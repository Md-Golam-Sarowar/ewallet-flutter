
import 'package:flutter/material.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {

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
          title: Text("User Registration"),
          backgroundColor: Colors.green,
        ),
        body:
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black12,
            child: Column(
              children: [

              ],
            ),
          ),
      ),
    );
  }
}

