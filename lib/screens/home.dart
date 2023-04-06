

import 'package:flutter/material.dart';
import '../dbHelper/dbHelperFile.dart';
import '../models/user.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {

    user individual = new user(id:1, name: "golam sarowar", bankAc: "0002601026358", email: "sojolewu6@gmail.com", Nid: "3756221168", mobile: "01712344953", date: "05/04/2023", pass: "836736736", confirmPass: "836736736");
    dbconnection db = new dbconnection();
    db.addItem(individual);
    db.fetchUsers();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        body: Stack(
          children: [
            Positioned(
                left: 0,
                child: Container(
                  height: 150,
                  width: 412,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 3, 0),
                              child: Image.asset('Assets/sonali.png', height: 40, width:40, alignment: Alignment.center, color: Colors.white,),
                            ),
                            const Text('Sonali e-Wallet', style: TextStyle(color: Colors.white, fontSize: 20)),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 45),
                          child: Center(child: Text('Welcome to sonali e-wallet', style: TextStyle(color: Colors.yellow, fontSize: 25))),
                        ),
                      ],
                    ),
                  ),
                )),
            Positioned(
                left: 0,
                right: 0,
                top: 150,
                bottom: 0,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.white60,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 65, 0, 0),
                    child: GridView.count(crossAxisCount: 3,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 4, 4, 20),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/login');
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            backgroundColor: Colors.white30
                          ),
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: const BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                            ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Image.asset('Assets/transaction2.avif', height: 80, width: 80, alignment: Alignment.center,),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(8, 0, 8, 5),
                                    child: Text('Transaction', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                ],
                              ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 4, 5, 20),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/login');
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              backgroundColor: Colors.white30
                          ),
                          child: Container(
                            width: 150,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Image.asset('Assets/bill_pay.jpg', height: 90, width: 90, alignment: Alignment.center,),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(8, 0, 6, 0),
                                  child: Text('Bill Pay', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 4, 10, 20),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/login');
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              backgroundColor: Colors.white30
                          ),
                          child: Container(
                            width: 150,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                                  child: Image.asset('Assets/Recharge.avif', height: 70, width: 70, alignment: Alignment.center,),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(8, 4, 8, 0),
                                  child: Text('Recharge', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 4, 4, 20),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/login');
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              backgroundColor: Colors.white30
                          ),
                          child: Container(
                            width: 150,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                                  child: Image.asset('Assets/add_money.webp', height: 75, width: 75, alignment: Alignment.center,),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(8, 3, 8, 5),
                                  child: Text('Add Money', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(6, 4, 8, 20),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/login');
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              backgroundColor: Colors.white30
                          ),
                          child: Container(
                            width: 150,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                  child: Image.asset('Assets/statement.jpg', height: 75, width: 75, alignment: Alignment.center,),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(8, 3, 8, 5),
                                  child: Text('Statement', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 4, 10, 20),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/login');
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              backgroundColor: Colors.white30
                          ),
                          child: Container(
                            width: 150,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                  child: Image.asset('Assets/estatement.webp', height: 75, width: 75, alignment: Alignment.center,),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(8, 3, 8, 5),
                                  child: Text('eStatement', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 4, 4, 20),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/login');
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              backgroundColor: Colors.white30
                          ),
                          child: Container(
                            width: 150,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                  child: Image.asset('Assets/bankDeposit.jpg', height: 70, width: 70, alignment: Alignment.center,),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(8, 3, 8, 5),
                                  child: Text('Bank Deposit', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(6, 4, 8, 20),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/login');
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              backgroundColor: Colors.white30
                          ),
                          child: Container(
                            width: 150,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Image.asset('Assets/cards.avif', height: 80, width: 80, alignment: Alignment.center,),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(8, 0, 8, 5),
                                  child: Text('Cards', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 4, 10, 20),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/login');
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              backgroundColor: Colors.white30
                          ),
                          child: Container(
                            width: 150,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Image.asset('Assets/tapandpay.jpg', height: 80, width: 80, alignment: Alignment.center,),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(8, 0, 8, 5),
                                  child: Text('Tap and Pay', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 4, 4, 20),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/login');
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              backgroundColor: Colors.white30
                          ),
                          child: Container(
                            width: 150,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Image.asset('Assets/sendMoney.png', height: 80, width: 80, alignment: Alignment.center,),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(8, 0, 8, 5),
                                  child: Text('Send Money', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(6, 4, 8, 20),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/login');
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              backgroundColor: Colors.white30
                          ),
                          child: Container(
                            width: 150,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Image.asset('Assets/inbox.png', height: 80, width: 80, alignment: Alignment.center,),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(8, 0, 8, 5),
                                  child: Text('Inbox', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 4, 10, 20),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/login');
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              backgroundColor: Colors.white30
                          ),
                          child: Container(
                            width: 150,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Image.asset('Assets/more.png', height: 80, width: 80, alignment: Alignment.center,),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(8, 0, 8, 5),
                                  child: Text('More', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                    ),
                  ),
                )
            ),
            Positioned(
                left: 50,
                right: 50,
                bottom: 645,
                child: Container(
                  height: 65,
                  width: 400,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(35.0)),
                    color: Colors.blueGrey,
                  ),

                  child: FloatingActionButton.extended(
                  onPressed: (){Navigator.pushNamed(context, '/login');},
                  label: Row(
                    children: const [
                      Text(
                        'Tap to Continue',
                        style: TextStyle(fontSize: 22),
                      ),
                      Icon(
                        Icons.arrow_right_alt,
                        color: Colors.white,
                        size: 40,
                      ),
                    ],
                  ),
                    backgroundColor: Colors.lightGreen,
                ),
                ))
          ],
        ),
      ),
    );
  }
}
