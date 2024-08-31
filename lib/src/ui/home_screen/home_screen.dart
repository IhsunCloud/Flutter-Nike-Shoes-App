import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:ionicons/ionicons.dart';
import 'package:nike_shoes_app/src/ui/product_screen/product_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:nike_shoes_app/src/kernel/constants/texts.dart';
import 'package:nike_shoes_app/src/models/dummy_data.dart';
import 'package:nike_shoes_app/src/ui/home_screen/components/discount_item.dart';
import 'package:nike_shoes_app/src/ui/home_screen/components/product_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  late int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    final pages = List.generate(
      4,
      (index) => const DiscountItem(),
    );

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.0),
            child: Row(
              children: [
                Image.asset('assets/icons/justdoit.png'),
                const SizedBox(width: 10.0),
                const Icon(IconlyLight.profile),
              ],
            ),
          ),
        ],
        leading: const Padding(
          padding: EdgeInsets.only(right: 21.0),
          child: Icon(IconlyLight.bag_2),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 240,
              width: deviceSize.width - 1.0,
              child: PageView.builder(
                controller: controller,
                itemCount: pages.length,
                itemBuilder: (_, index) {
                  return pages[index % pages.length];
                },
              ),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: pages.length,
              effect: const ExpandingDotsEffect(
                dotHeight: 16,
                dotWidth: 16,
                activeDotColor: Colors.black,
              ),
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
                        color: selectedIndex == index
                            ? Colors.black
                            : Colors.white,
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
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: 490,
              height: 500,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                children: shoes.map((item) {
                  return InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ProductDetail(product: item);
                        },
                      ),
                    ),
                    child: ProductItem(
                      title: item.title,
                      price: item.price,
                      imageUrl: item.imageUrl,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
