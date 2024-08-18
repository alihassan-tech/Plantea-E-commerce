import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled12/custom_widgets/card_image.dart';
import 'package:untitled12/custom_widgets/custom_btn.dart';
import 'package:untitled12/orders_screen.dart';
import 'package:untitled12/profile_screen.dart';
import 'package:untitled12/wallet_screen.dart';
import 'custom_widgets/custom_screen.dart';
import 'custom_widgets/title_bar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}


class _DashboardScreenState extends State<DashboardScreen>  {

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget> [
    CustomHomeScreen(),
    OrdersScreen(),
    WalletScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: 'Home',
                ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_sharp),
                label: 'Orders',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet),
                label: 'Wallet',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
                ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          onTap: _onItemTapped,
              ),
        body:
          _widgetOptions[_selectedIndex],
      ),
    );
  }


}
