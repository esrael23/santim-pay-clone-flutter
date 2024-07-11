import 'package:flutter/material.dart';
import 'package:santim_pay/LinkedAccountsScreen.dart';
import 'package:santim_pay/WalletScreen.dart';
import 'package:santim_pay/home_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        elevation: 1,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(
                'images/avator.jpg',
              ),
            ),
            Text(
              "Esrael Erimas",
              style: TextStyle(color: Color(0xFFDAA520), fontSize: 22),
            ),
            Text(
              "+1234545566",
              style: TextStyle(fontSize: 22, color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Divider(
                color: Color.fromARGB(255, 236, 236, 236),
                height: 10,
                thickness: 2,
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.fromLTRB(12, 15, 12, 15),
                decoration: BoxDecoration(
                  // color: Color.fromARGB(255, 252, 247, 247),
                  borderRadius: BorderRadius.circular(10),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Color.fromARGB(255, 245, 241, 241)
                  //         .withOpacity(0.5), // Shadow color
                  //     spreadRadius: 1, // How far the shadow spreads
                  //     blurRadius: 5, // How blurry the shadow is
                  //     offset: Offset(0, 2), // Offset in (x,y) direction
                  //   ),
                  // ],
                  border: Border.all(
                      color: Color.fromARGB(255, 216, 214, 214), width: 1),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.store,
                      size: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Merchant',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("Link your contactlist card")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.fromLTRB(12, 15, 12, 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Color.fromARGB(255, 216, 214, 214), width: 1),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.language,
                      size: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Language',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("en")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.fromLTRB(12, 15, 12, 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Color.fromARGB(255, 216, 214, 214), width: 1),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.security,
                      size: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Security',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("pin code, fingerprint")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.fromLTRB(12, 15, 12, 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Color.fromARGB(255, 216, 214, 214), width: 1),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.support,
                      size: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Customer Support',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("Contact Us")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.login),
                label: Text('Logout'))
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WalletScreen()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LinkedAccountsScreen()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet, color: Colors.grey),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance, color: Colors.grey),
            label: 'Banks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color(0xFFD4AF37)),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
