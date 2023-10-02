// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/utils/my_button.dart';
import 'package:walletappui/utils/my_card.dart';
import 'package:walletappui/utils/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(Icons.monetization_on,size: 32,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                 icon: Icon(Icons.home,
                 size: 32,
                 color: Colors.pink[200],)
                 ),
                 IconButton(
                onPressed: () {},
                 icon: Icon(Icons.settings,
                 size: 32,
                 color: Colors.pink[200],)
                 ),
                 ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Text(
                      "My ",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Cards",
                      style: TextStyle(fontSize: 28),
                    ),
                  ],
                ),
                Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                    child: const Icon(Icons.add))
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          // my cards
          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                  balance: 5250.35,
                  cardNumber: 12345678,
                  expiryMonth: 10,
                  expiryYear: 26,
                  color: Colors.deepPurple[400],
                ),
                MyCard(
                  balance: 1250,
                  cardNumber: 56123478,
                  expiryMonth: 11,
                  expiryYear: 28,
                  color: Colors.blue[900],
                ),
                const MyCard(
                  balance: 520.35,
                  cardNumber: 13456728,
                  expiryMonth: 12,
                  expiryYear: 27,
                  color: Colors.brown,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
          ),
          const SizedBox(
            height: 40,
          ),
          // 3 buttons send  pay and bills
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //send button
                  MyButton(
                    iconpath: "lib/icons/send-money.png",
                    buttonText: "Send",
                  ),
                  // pay button
                  MyButton(
                    iconpath: "lib/icons/credit-card.png",
                    buttonText: "Pay",
                  ),
                  // bills button
                  MyButton(
                    iconpath: "lib/icons/bill.png",
                    buttonText: "Bills",
                  ),
                ]),
          ),
          SizedBox(
            height: 40,
          ),
          // column for stats and transactions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                // statistics
                MyListTile(
                    title: "Statistics",
                    description: "Payments and Income",
                    iconpath: "lib/icons/statistics.png"),
                //transactions
                MyListTile(
                    title: "Transactions",
                    description: "Transaction History",
                    iconpath: "lib/icons/transaction.png")
              ],
            ),
          )
        ]),
      ),
    );
  }
}
