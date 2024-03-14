import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: const Color.fromRGBO(245, 245, 245, 1),
              )
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: const Color.fromRGBO(245, 245, 245, 1),
              )
            ),
            Expanded(
              flex: 8,
              child: Container(
                color: const Color.fromRGBO(245, 245, 245, 1),
              )
            )
          ],
        ),
      ),
      Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: const Color.fromRGBO(245, 245, 245, 1),
              )
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: const Color.fromRGBO(245, 245, 245, 1),
              )
            ),
            Expanded(
              flex: 8,
              child: Container(
                color: const Color.fromRGBO(245, 245, 245, 1),
              )
            )
          ],
        ),
      ),
      Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: const Color.fromRGBO(245, 245, 245, 1),
              )
            ),
          ],
        ),
      ),
      Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: const Color.fromRGBO(245, 245, 245, 1),
              )
            ),
          ],
        ),
      ),
      Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: const Color.fromRGBO(245, 245, 245, 1),
              )
            ),
          ],
        ),
      ),
    ];
    return Scaffold(
      key: _scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
        elevation: 0,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child: IconButton(
                onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                icon: const Icon(
                  Icons.menu_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        leadingWidth: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.account_balance_wallet_outlined,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    '5.167 ETH',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  )
                ],
              ),
            )
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.explore_outlined, title: 'Explore'),
          TabItem(icon: Icons.swap_vert_rounded, title: 'Swap'),
          TabItem(icon: Icons.pie_chart_outline, title: 'Market'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: 2,
        onTap: (int i) {
          setState(() {
            currentIndex = i;
          });
        },
      ),
    );
  }
}
