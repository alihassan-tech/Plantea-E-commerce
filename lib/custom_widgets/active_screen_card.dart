import 'package:flutter/material.dart';

class ActiveScreenCard extends StatelessWidget {
  const ActiveScreenCard({
    required this.cardImage,
    required this.cardAmount,
    required this.cardQuantity,
    required this.cardTitle,
    required this.showCompleteButton,
    super.key
  });

  final String cardImage;
  final String cardTitle;
  final String cardQuantity;
  final String cardAmount;
  final bool showCompleteButton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),
                    width: 75,
                    height: 110,
                    child: Image(image: AssetImage(cardImage)),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cardTitle, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                      Text(cardQuantity),
                      Container(
                        color: Colors.green.shade100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('In', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.green.shade600),),
                            Text('Delievery', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.green.shade600),),
                          ],
                        ),
                      ),
                      Text(cardAmount, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.green.shade600),),
                    ],
                  ),
                  Spacer(),
                  if(showCompleteButton)
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.green.shade500,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.5),
                      child: Text('Completed', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
