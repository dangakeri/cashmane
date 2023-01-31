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
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .055,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
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
                SizedBox(width: 10),
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
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Balance',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 130,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Visa',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '\$15,000',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Account',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '1251 **** **** 4895',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 35,
                      ),
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
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
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
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListWidget(
                    icon: Icon(Icons.add), text: 'Deposit ', callback: () {}),
                Spacer(),
                ListWidget(
                    icon: Icon(Icons.add), text: 'Withdraw ', callback: () {}),
                Spacer(),
                ListWidget(
                    icon: Icon(BootstrapIcons.percent),
                    text: 'Interest',
                    callback: () {}),
                Spacer(),
                ListWidget(
                    icon: Icon(Icons.add), text: 'Reports', callback: () {}),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListWidget(
                    icon: Icon(Icons.add), text: 'Refferals', callback: () {}),
                Spacer(),
                ListWidget(
                    icon: Icon(Icons.add), text: 'support', callback: () {}),
                Spacer(),
                ListWidget(
                    icon: Icon(Icons.add), text: 'Redeem', callback: () {}),
                Spacer(),
                ListWidget(
                    icon: Icon(Icons.add), text: 'Coins', callback: () {}),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            TilesWidget()
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
              color: Colors.blueAccent.withOpacity(.3),
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
      margin: const EdgeInsets.only(left: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(.2), width: 1.5),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue.withOpacity(.3),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Dan Gakeri',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Yesterday',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
