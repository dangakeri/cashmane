// ignore_for_file: unnecessary_const

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .055,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.cyan),
                  child: const Center(
                    child: Text(
                      'J',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Good Morning',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      'Jean Haus',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            const CardWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            Row(
              children: [
                Text(
                  'For you',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListWidget(
                    icon: const Icon(
                      BootstrapIcons.wallet2,
                      color: Colors.white,
                    ),
                    text: 'Deposit ',
                    callback: () {}),
                const Spacer(),
                ListWidget(
                    icon: const Icon(
                      BootstrapIcons.currency_exchange,
                      color: Colors.white,
                    ),
                    text: 'Withdraw ',
                    callback: () {}),
                const Spacer(),
                ListWidget(
                    icon: const Icon(
                      BootstrapIcons.percent,
                      color: Colors.white,
                    ),
                    text: 'Interest',
                    callback: () {}),
                const Spacer(),
                ListWidget(
                    icon: const Icon(
                      BootstrapIcons.card_checklist,
                      color: Colors.white,
                    ),
                    text: 'Reports',
                    callback: () {}),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListWidget(
                    icon: const Icon(
                      BootstrapIcons.gift,
                      color: Colors.white,
                    ),
                    text: 'Refferals',
                    callback: () {}),
                const Spacer(),
                ListWidget(
                    icon: const Icon(
                      BootstrapIcons.bezier2,
                      color: Colors.white,
                    ),
                    text: 'support',
                    callback: () {}),
                const Spacer(),
                ListWidget(
                    icon: const Icon(
                      BootstrapIcons.balloon,
                      color: Colors.white,
                    ),
                    text: 'Redeem',
                    callback: () {}),
                const Spacer(),
                ListWidget(
                    icon: const Icon(
                      BootstrapIcons.coin,
                      color: Colors.white,
                    ),
                    text: 'Coins',
                    callback: () {}),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage(
                        'assets/wallet.jpeg',
                      ),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.only(top: 28.0, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome to Cashmane',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .02),
                    const Text(
                      'How it works',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .02),
                    const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            const TilesWidget(),
            const TilesWidget(),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Cashmane Account',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 40,
                      width: 85,
                      decoration: BoxDecoration(
                          border: Border.all(
                              style: BorderStyle.solid, color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return CupertinoAlertDialog(
                                      title: const Text('Transfer Cash'),
                                      actions: [
                                        TextButton(
                                            onPressed: () {},
                                            child: const Text('Cancel')),
                                        TextButton(
                                            onPressed: () {},
                                            child: const Text('Ok'))
                                      ],
                                    );
                                  });
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: const Icon(
                                Icons.add,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          const Text(
                            'Top-Up',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Balance',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Text(
                  '\$15,000',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 10),
                const Text(
                  'Daily Profit',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                const Text(
                  '13%',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 10),
              ],
            ),
            Text(
              'Wallet number',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            const Text(
              '1251 **** **** 4895',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const SizedBox(
              width: 35,
            ),
          ],
        ),
      ),
    );
  }
}

class ListWidget extends StatelessWidget {
  final Icon icon;
  final String text;
  final VoidCallback callback;
  const ListWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        child: Column(children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(20),
            ),
            child: icon,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(text)
        ]),
      ),
    );
  }
}

class TilesWidget extends StatelessWidget {
  const TilesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(.2), width: 1.5),
            borderRadius: BorderRadius.circular(20)),
        child: ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.cyan,
            child: Text(
              'J',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          title: const Text(
            'Jean Haus',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: const Text(
            '100,000',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * .009),
              const Text(
                '13% profit',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                'Withdrawable',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ));
  }
}

class AppColors {
  static final Color blue = const Color(0xFF027c90);
  static final Color background = const Color(0xFF070707);
  static final Color background1 = Color(0xFF0B132B);
  // static final Color silverChalice = const Color(0xFFabada9);
  // static final Color Gainsboro = const Color(0xFFdaddd8);
  // static final Color platinum = const Color(0xFFe3e4de);
  // static final Color alibaster = const Color(0xFFecebe4);
  // static final Color cultured = const Color(0xFFeef0f2);
  // static final Color ghostWhite = const Color(0xFFfafaff);
}
