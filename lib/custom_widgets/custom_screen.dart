import 'package:flutter/material.dart';
import 'package:untitled12/custom_widgets/title_bar.dart';

import 'card_image.dart';
import 'custom_btn.dart';

class CustomHomeScreen extends StatelessWidget {
  const CustomHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleBar(
              imagePath: 'images/ali.jpg',
              mainTitle: "Good Morning",
              subTitle: "Ali Hassan",
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                suffixIcon: Icon(Icons.settings_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20),
            buildSectionTitle('Special Offers'),
            SizedBox(height: 15),
            buildHorizontalListView(),
            buildSectionTitle('Most Popular'),
            SizedBox(height: 15),
            buildHorizontalButtonList(),
            SizedBox(height: 15),
            buildGrid(),
          ],
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Text(
          'See All',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.greenAccent.shade700,
          ),
        ),
      ],
    );
  }

  Widget buildHorizontalListView() {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CustomCard(cardImage: 'images/aloevera.png', imageText: 'Aloevera', imageRating: '3.6', dollarSign: '\$23',),
          CustomCard(cardImage: 'images/americanplantexchange.png', imageText: 'American Plant', imageRating: '4.6', dollarSign: '\$55',),
          CustomCard(cardImage: 'images/crassulaovata.png', imageText: 'Crassulaovata', imageRating: '4.9', dollarSign: '\$62',),
          CustomCard(cardImage: 'images/fiddleleaf.png', imageText: 'Fiddle Leaf', imageRating: '2.6', dollarSign: '\$86',),
          CustomCard(cardImage: 'images/dieffenbachia.png', imageText: 'DieffenBachia', imageRating: '3.9', dollarSign: '\$49',),
          CustomCard(cardImage: 'images/hobbitjade.png', imageText: 'Hobbit Jade', imageRating: '4.2', dollarSign: '\$85',),
          CustomCard(cardImage: 'images/livealoe.png', imageText: 'Livealoe', imageRating: '2.7', dollarSign: '\$74',),
          CustomCard(cardImage: 'images/p55.png', imageText: 'P55 Flower', imageRating: '5.0', dollarSign: '\$93',),
          CustomCard(cardImage: 'images/redchristmas2.png', imageText: 'Red Christman', imageRating: '3.1', dollarSign: '\$28',),
          CustomCard(cardImage: 'images/snakeplant.png', imageText: 'Snake Plant', imageRating: '2.8', dollarSign: '\$53',),
          CustomCard(cardImage: 'images/yellowchristman.png', imageText: 'Yellow Christman', imageRating: '4.7', dollarSign: '\$67',),
          // Add more cards as needed
        ],
      ),
    );
  }

  Widget buildHorizontalButtonList() {
    return SizedBox(
      height: 35,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CustomBtn(btnText: 'All'),
          CustomBtn(btnText: 'Monstera'),
          CustomBtn(btnText: 'Palm'),
          CustomBtn(btnText: 'Aloe'),
          CustomBtn(btnText: 'Olive'),
          CustomBtn(btnText: 'Plantea'),
          CustomBtn(btnText: 'Snake'),
          CustomBtn(btnText: 'Dieffen'),
          CustomBtn(btnText: 'Bachia'),
          CustomBtn(btnText: 'Crassul'),
          CustomBtn(btnText: 'Aovata')
        ],
      ),
    );
  }

  Widget buildGrid() {
    return Column(
      children: [
        Row(
          children: [
            CustomCard(cardImage: 'images/snakeplant.png', imageText: 'Snake Plant', imageRating: '2.8', dollarSign: '\$53',),
            CustomCard(cardImage: 'images/yellowchristman.png', imageText: 'Yellow Christman', imageRating: '4.7', dollarSign: '\$67',),
          ],
        ),

        SizedBox(
          height: 15,
        ),

        Row(
          children: [
            CustomCard(cardImage: 'images/p55.png', imageText: 'P55 Flower', imageRating: '5.0', dollarSign: '\$93',),
            CustomCard(cardImage: 'images/redchristmas2.png', imageText: 'Red Christman', imageRating: '3.1', dollarSign: '\$28',),
          ],
        ),

        SizedBox(
          height: 15,
        ),

        Row(
          children: [
            CustomCard(cardImage: 'images/hobbitjade.png', imageText: 'Hobbit Jade', imageRating: '4.2', dollarSign: '\$85',),
            CustomCard(cardImage: 'images/livealoe.png', imageText: 'Livealoe', imageRating: '2.7', dollarSign: '\$74',),
          ],
        ),

        SizedBox(
          height: 15,
        ),

        Row(
          children: [
            CustomCard(cardImage: 'images/fiddleleaf.png', imageText: 'Fiddle Leaf', imageRating: '2.6', dollarSign: '\$86',),
            CustomCard(cardImage: 'images/dieffenbachia.png', imageText: 'DieffenBachia', imageRating: '3.9', dollarSign: '\$49',),
          ],
        ),

        SizedBox(
          height: 15,
        ),

        Row(
          children: [
            CustomCard(cardImage: 'images/americanplantexchange.png', imageText: 'American Plant', imageRating: '4.6', dollarSign: '\$55',),
            CustomCard(cardImage: 'images/crassulaovata.png', imageText: 'Crassulaovata', imageRating: '4.9', dollarSign: '\$62',),
          ],
        )
      ],
    );
  }
}
