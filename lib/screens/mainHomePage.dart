import 'package:ewalletstack/Providers/authenticationProvider.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

class mainHomePage extends StatefulWidget {
  const mainHomePage({Key? key}) : super(key: key);

  @override
  State<mainHomePage> createState() => _mainHomePageState();
}

class _mainHomePageState extends State<mainHomePage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<authenticationProvider>(context);

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Welcome ${provider.name}"),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          Positioned(
              left: 0,
              child: Container(
                  height: 150,
                  width: 412,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 60),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Image.asset(
                            "Assets/sonali.png",
                            height: 50,
                            width: 50,
                            color: Colors.yellow,
                          ),
                        ),
                        const Text(
                          "Sonali E-Wallet",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(80, 15, 10, 60),
                          child:
                              Icon(Icons.add_alert_sharp, color: Colors.yellow),
                        ),
                        // Image.asset(Icon(Icons.add_alert_sharp) as String,height: 10, width: 10, color: Colors.white,),
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.white),
                            child: Image.asset("Assets/profile.jpg",
                                height: 50, width: 50))
                      ],
                    ),
                  ))),
          Positioned(
              left: 0,
              top: 180,
              child: Container(
                height: 500,
                width: 420,
                color: Colors.white70,
                child: GridView.count(
                  crossAxisCount: 3,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            backgroundColor: Colors.white70),
                        child: Container(
                          width: 110,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Image.asset(
                                  'Assets/transaction2.avif',
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 8, 5),
                                child: Text(
                                  'E-Bank',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            backgroundColor: Colors.white70),
                        child: Container(
                          width: 110,
                          height: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Image.asset(
                                  'Assets/bill_pay.jpg',
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 6, 0),
                                child: Text(
                                  'Bill Pay',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            backgroundColor: Colors.white70),
                        child: Container(
                          width: 110,
                          height: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Image.asset(
                                  'Assets/Recharge.avif',
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(8, 4, 8, 0),
                                child: Text(
                                  'Recharge',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            backgroundColor: Colors.white70),
                        child: Container(
                          width: 110,
                          height: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Image.asset(
                                  'Assets/add_money.webp',
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(8, 3, 8, 5),
                                child: Text(
                                  'Remittance',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            backgroundColor: Colors.white70),
                        child: Container(
                          width: 110,
                          height: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 17, 0, 0),
                                child: Image.asset(
                                  'Assets/statement.jpg',
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(8, 3, 8, 5),
                                child: Text(
                                  'DPS',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            backgroundColor: Colors.white70),
                        child: Container(
                          width: 150,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Image.asset(
                                  'Assets/estatement.webp',
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(8, 3, 8, 5),
                                child: Text(
                                  'BEFTN',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            backgroundColor: Colors.white70),
                        child: Container(
                          width: 110,
                          height: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Image.asset(
                                  'Assets/eSheba.png',
                                  height: 60,
                                  width: 60,
                                  alignment: Alignment.center,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(8, 7, 8, 5),
                                child: Text(
                                  'Sonali eSheba',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            backgroundColor: Colors.white70),
                        child: Container(
                          width: 110,
                          height: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Image.asset(
                                  'Assets/cards.avif',
                                  height: 60,
                                  width: 60,
                                  alignment: Alignment.center,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 8, 5),
                                child: Text(
                                  'Cards',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            backgroundColor: Colors.white70),
                        child: Container(
                          width: 110,
                          height: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Image.asset(
                                  'Assets/binimoy.jpg',
                                  height: 60,
                                  width: 60,
                                  alignment: Alignment.center,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 8, 5),
                                child: Text(
                                  'Binimoy',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            backgroundColor: Colors.white70),
                        child: Container(
                          width: 110,
                          height: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Image.asset(
                                  'Assets/sendMoney.png',
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 8, 5),
                                child: Text(
                                  'Send Money',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              left: 30,
              right: 30,
              top: 105,
              child: Container(
                height: 70,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: Colors.teal,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 45, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.teal),
                            shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              side: BorderSide(color: Colors.white),
                            ))),
                        child: const Text("Bank Balance",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.teal),
                          shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  side: BorderSide(color: Colors.white)))),
                      child: const Text(
                        "Wallet Balance",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        iconSize: 25,
        unselectedFontSize: 15,
        selectedFontSize: 15,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              color: Colors.white,
            ),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Icon(
                Icons.qr_code_scanner,
                color: Colors.white,
                size: 30,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bar_chart,
              color: Colors.white,
            ),
            label: "TP",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            label: "Menu",
          ),
        ],
      ),
    ));
  }
}
