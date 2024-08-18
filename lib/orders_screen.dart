import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled12/custom_widgets/active_screen_card.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> with TickerProviderStateMixin {

  late TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    controller=TabController(length: 2, vsync: this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children: [
              Image(image: AssetImage('images/Plantea Logo.png',), height: 40,),
              SizedBox(width: 20,),
              Text('My Orders', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              Spacer(),
              Icon(Icons.search_sharp),
            ],
          ),
        ),

        TabBar(
            controller: controller,
            labelColor: Colors.green,
            tabs: [
              Tab(
                child: Text('Active', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 19),),
              ),
              Tab(
                child: Text('Completed', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
              )
            ]
        ),

        Expanded(
          child: Container(
            color: Colors.grey.shade300,
            child: TabBarView(
                controller: controller,
                children: [
                  Container(
                    child: ListView(
                      children: [
                        ActiveScreenCard(showCompleteButton: true, cardTitle: 'Red Christmas', cardImage: 'images/redchristmas2.png', cardAmount: '\$0', cardQuantity: 'Qty = 0'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: true, cardTitle: 'Snake Plant', cardImage: 'images/snakeplant.png', cardAmount: '\$30', cardQuantity: 'Qty = 4'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: true, cardTitle: 'Yellow Christman', cardImage: 'images/yellowchristman.png', cardAmount: '\$76', cardQuantity: 'Qty = 8'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: true, cardTitle: 'Live Aloe', cardImage: 'images/livealoe.png', cardAmount: '\$63', cardQuantity: 'Qty = 7'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: true, cardTitle: 'Hobbit Jade', cardImage: 'images/hobbitjade.png', cardAmount: '\$56', cardQuantity: 'Qty = 2'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: true, cardTitle: 'Fiddle Leaf', cardImage: 'images/fiddleleaf.png', cardAmount: '\$38', cardQuantity: 'Qty = 9'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: true, cardTitle: 'Dieffen Bachia', cardImage: 'images/dieffenbachia.png', cardAmount: '\$92', cardQuantity: 'Qty = 6'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: true, cardTitle: 'Crassulaovata', cardImage: 'images/crassulaovata.png', cardAmount: '\$47', cardQuantity: 'Qty = 3'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: true, cardTitle: 'American Plant', cardImage: 'images/americanplantexchange.png', cardAmount: '\$51', cardQuantity: 'Qty = 7'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: true, cardTitle: 'Aloe Vera', cardImage: 'images/aloevera.png', cardAmount: '\$29', cardQuantity: 'Qty = 3'),
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      children: [
                        ActiveScreenCard(showCompleteButton: false, cardTitle: 'American Plant', cardImage: 'images/americanplantexchange.png', cardAmount: '\$0', cardQuantity: 'Qty = 0'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: false, cardTitle: 'Aloe Vera', cardImage: 'images/aloevera.png', cardAmount: '\$30', cardQuantity: 'Qty = 4'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: false, cardTitle: 'Crassulaovata', cardImage: 'images/crassulaovata.png', cardAmount: '\$76', cardQuantity: 'Qty = 8'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: false, cardTitle: 'Dieffen Bachia', cardImage: 'images/dieffenbachia.png', cardAmount: '\$63', cardQuantity: 'Qty = 7'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: false, cardTitle: 'Fiddle Leaf', cardImage: 'images/fiddleleaf.png', cardAmount: '\$56', cardQuantity: 'Qty = 2'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: false, cardTitle: 'Hobbit Jade', cardImage: 'images/hobbitjade.png', cardAmount: '\$38', cardQuantity: 'Qty = 9'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: false, cardTitle: 'Live Aloe', cardImage: 'images/livealoe.png', cardAmount: '\$92', cardQuantity: 'Qty = 6'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: false, cardTitle: 'Red Christmas', cardImage: 'images/redchristmas2.png', cardAmount: '\$47', cardQuantity: 'Qty = 3'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: false, cardTitle: 'Snake Plant', cardImage: 'images/snakeplant.png', cardAmount: '\$51', cardQuantity: 'Qty = 7'),
                        SizedBox(height: 10,),
                        ActiveScreenCard(showCompleteButton: false, cardTitle: 'Yellow Christman', cardImage: 'images/yellowchristman.png', cardAmount: '\$29', cardQuantity: 'Qty = 3'),
                      ],
                    ),
                  )
                ]
            ),
          ),
        ),
      ],
    );
  }
}
