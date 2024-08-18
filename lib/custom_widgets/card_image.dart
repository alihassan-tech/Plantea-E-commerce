import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.cardImage,
    required this.imageRating,
    required this.imageText,
    required this.dollarSign,
    super.key,
  });

  final String cardImage;
  final String imageText;
  final String imageRating;
  final String dollarSign;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 7),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(30),
          ),
          width: 171,
          height: 150,
          child: Image(image: AssetImage(cardImage)),
        ),
        Container(
          width: 171,
          child: Text(
            overflow: TextOverflow.ellipsis,
            imageText,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),


        Row(
          children: [
            Icon(
              Icons.star_half,
              color: Colors.green,
            ),
            SizedBox(
              width: 5,
            ),
            Text(imageRating),
          ],
        ),
        Text(
          dollarSign,
          style: TextStyle(
              color: Colors.green, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
