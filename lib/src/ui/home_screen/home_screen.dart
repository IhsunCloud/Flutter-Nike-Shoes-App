import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:ionicons/ionicons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_shoes_app/src/kernel/constants/texts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.0),
            child: Row(
              children: [
                Image.asset('assets/icons/Nike-icon.png'),
                const SizedBox(width: 10.0),
                const Icon(IconlyLight.home),
              ],
            ),
          ),
        ],
        leading: const Padding(
          padding: EdgeInsets.only(right: 21.0),
          child: Icon(Ionicons.person),
        ),
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 31.0, vertical: 20.0),
                child: Container(
                  height: 210.0,
                  width: 360.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEFEFEF),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 50.0,
                right: 60.0,
                child: Text(
                  '۳۰ % تخفیف',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'Lalezar',
                    fontSize: 36.0,
                    letterSpacing: .5,
                  ),
                ),
              ),
              const Positioned(
                top: 100.0,
                right: 60.0,
                child: Text(
                  'برای اولین خرید',
                  style: TextStyle(
                    fontFamily: 'Estedad-Medium',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: .5,
                  ),
                ),
              ),
              Positioned(
                top: 150.0,
                right: 60.0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF000000),
                      foregroundColor: const Color(0xFFFFFFFF)),
                  child: const Text(
                    'مشاهده جزئیات',
                    style: TextStyle(
                      fontFamily: 'Estedad-Medium',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -60.0,
                top: 0.0,
                child: Image.asset(
                  'assets/images/RedShoe.png',
                  height: 260.0,
                  width: 250.0,
                ),
              ),
            ],
          ),
          Container(
            height: 110.0,
            padding: const EdgeInsets.symmetric(vertical: 32.0),
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    height: 36.0,
                    width: 120.0,
                    margin: const EdgeInsets.only(right: 31.0),
                    decoration: BoxDecoration(
                      color:
                          selectedIndex == index ? Colors.black : Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        menuItems[index],
                        style: GoogleFonts.vazirmatn(
                            color: selectedIndex == index
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
