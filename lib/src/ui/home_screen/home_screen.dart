import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:ionicons/ionicons.dart';
import 'package:nike_shoes_app/src/kernel/constants/colors.dart';
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
    final pages = List.generate(
      4,
      (index) => const DiscountItem(),
    );

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
          padding: EdgeInsets.only(right: 12.0),
          child: Icon(IconlyLight.bag_2),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
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
              effect: ExpandingDotsEffect(
                dotHeight: 16,
                dotWidth: 16,
                activeDotColor: ColorPalette.littleBlueHeron,
                dotColor: ColorPalette.lakeLucerne.withOpacity(.5),
              ),
            ),
            const SizedBox(height: 32.0),
            Container(
              height: 40.0,
              margin: const EdgeInsets.only(right: 16.0),
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
                      width: 130.0,
                      margin: const EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? ColorPalette.flushMahogany
                            : ColorPalette.lakeLucerne.withOpacity(.2),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(18.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          menuItems[index],
                          style: GoogleFonts.vazirmatn(
                            fontSize: 14,
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
            const SizedBox(height: 32.0),
            SizedBox(
              width: 490.0,
              height: 680.0,
              child: GridView(
                padding: const EdgeInsets.only(right: 12.0, left: 12.0),
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
                      id: item.id,
                      title: item.title,
                      imageUrl: item.imageUrl,
                      price: item.price,
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
