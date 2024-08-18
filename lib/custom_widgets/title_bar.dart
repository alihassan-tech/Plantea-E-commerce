import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    required this.imagePath,
    required this.mainTitle,
    required this.subTitle,
    super.key,
  });

  final String imagePath;
  final String mainTitle;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(imagePath),
        ),
        SizedBox(
          width: 22,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(mainTitle),
            Text(
            subTitle,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ],
        ),
        Spacer(),
        Row(
          children: [
            Icon(Icons.notifications_active_outlined, size: 35,),
            SizedBox(
              width: 3,
            ),
            Icon(Icons.favorite_outline_outlined, size: 35,),
          ],
        )
      ],
    );
  }
}
