import 'package:flutter/material.dart';
import 'package:untitled12/custom_widgets/wallet_orders_list.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image(image: AssetImage('images/Plantea Logo.png',), height: 40,),
                SizedBox(width: 15,),
                Text('My E-Wallet', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                Spacer(),
                Icon(Icons.search_sharp),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text('Transaction History', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                Spacer(),
                Text('See All', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.green),),
              ],
            ),
            SizedBox(height: 16,),
            WalletOrdersList(avatarImage: 'images/yellowchristman.png', orderTime: 'Dec 15,2024 | 10:00AM', plantAmount: '\$28', plantName: 'Prayer Plant'),
            SizedBox(height: 16,),
            WalletOrdersList(avatarImage: 'images/aloevera.png', orderTime: 'Jan 05,2024 | 08:58PM', plantAmount: '\$76', plantName: 'Aloe Vera'),
            SizedBox(height: 16,),
            WalletOrdersList(avatarImage: 'images/dieffenbachia.png', orderTime: 'July 28,2024 | 06:18AM', plantAmount: '\$47', plantName: 'Dieffen Bachia'),
            SizedBox(height: 16,),
            WalletOrdersList(avatarImage: 'images/fiddleleaf.png', orderTime: 'Sept 23,2024 | 01:51PM', plantAmount: '\$85', plantName: 'Fiddle Leaf'),
            SizedBox(height: 16,),
            WalletOrdersList(avatarImage: 'images/hobbitjade.png', orderTime: 'Nov 17,2024 | 07:54AM', plantAmount: '\$94', plantName: 'Hobbit Jade'),
            SizedBox(height: 16,),
            WalletOrdersList(avatarImage: 'images/livealoe.png', orderTime: 'June 31,2024 | 04:47PM', plantAmount: '\$62', plantName: 'Live Aloe'),
            SizedBox(height: 16,),
            WalletOrdersList(avatarImage: 'images/snakeplant.png', orderTime: 'Aug 19,2024 | 10:30PM', plantAmount: '\$59', plantName: 'Snake Plant'),
            SizedBox(height: 16,),
            WalletOrdersList(avatarImage: 'images/crassulaovata.png', orderTime: 'Oct 26,2024 | 02:18AM', plantAmount: '\$83', plantName: 'Yellow Christman'),

          ],
        ),
      ),
    );
  }
}
