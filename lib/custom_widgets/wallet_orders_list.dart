import 'package:flutter/material.dart';

class WalletOrdersList extends StatelessWidget {
  const WalletOrdersList({
    required this.avatarImage,
    required this.orderTime,
    required this.plantAmount,
    required this.plantName,
    super.key,
});

  final String avatarImage;
  final String plantName;
  final String orderTime;
  final String plantAmount;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(avatarImage),
            backgroundColor: Colors.grey.shade300,
          ),
          SizedBox(width: 20),
          Column(
            children: [
              Text(plantName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              Text(orderTime),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Text(plantAmount, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.green),),
              Row(
                children: [
                  Text('Orders'),
                  Icon(Icons.arrow_circle_up_outlined, color: Colors.red,)
                ],
              )
            ],
          )
        ],
      );
  }
}
