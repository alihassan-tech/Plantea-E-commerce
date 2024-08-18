import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                Image(image: AssetImage('images/Plantea Logo.png',), height: 40,),
                SizedBox(width: 20,),
                Text('My Profile', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                Spacer(),
                Icon(Icons.person, color: Colors.green.shade300, size: 30,),
              ],
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/ali.jpg'),
            ),
            Text('Ali Hassan', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
            Text('+92 370 2077164', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold), ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Row(
                    children: [
                      Icon(Icons.person, color: Colors.blue, size: 30,),
                      SizedBox(width: 20,),
                      Text('Edit Profile', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold), ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined, color: Colors.green, size: 30,),
                      SizedBox(width: 20,),
                      Text('Address', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold), ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.notifications_active_outlined, color: Colors.red, size: 30,),
                      SizedBox(width: 20,),
                      Text('Notifications', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold), ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.account_balance_wallet_outlined, color: Colors.brown, size: 30,),
                      SizedBox(width: 20,),
                      Text('Wallet', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold), ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.security, color: Colors.amberAccent, size: 30,),
                      SizedBox(width: 20,),
                      Text('Security', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold), ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.language, color: Colors.blueAccent, size: 30,),
                      SizedBox(width: 20,),
                      Text('Language', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold), ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.remove_red_eye_outlined, color: Colors.black45, size: 30,),
                      SizedBox(width: 20,),
                      Text('Dark Mode', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold), ),
                      Spacer(),
                      Icon(Icons.light_mode_outlined),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.lock_outline_rounded, color: Colors.teal, size: 30,),
                      SizedBox(width: 20,),
                      Text('Privacy Policy', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold), ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.help_center_outlined, color: Colors.redAccent, size: 30,),
                      SizedBox(width: 20,),
                      Text('Help Centre', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold), ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.groups, color: Colors.pinkAccent, size: 30,),
                      SizedBox(width: 20,),
                      Text('Invite Friends', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold), ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.dynamic_feed_rounded, color: Colors.red, size: 30,),
                      SizedBox(width: 20,),
                      Text('Feedback', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold), ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.settings_outlined, color: Colors.black87, size: 30,),
                      SizedBox(width: 20,),
                      Text('Settings', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold), ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.login_outlined, color: Colors.blue, size: 30,),
                      SizedBox(width: 20,),
                      Text('Log Out', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold), ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}
