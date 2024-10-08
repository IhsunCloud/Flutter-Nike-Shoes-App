import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:nike_shoes_app/src/models/shoe.dart';

class ProductDetail extends StatelessWidget {
  final Shoe product;
  const ProductDetail({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 900,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(color: Colors.white),
            child: Stack(
              children: [
                Positioned(
                  left: 21,
                  top: 64,
                  child: Container(
                    width: 36,
                    height: 34,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x33374957)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(IconlyLight.arrow_left_2),
                    ),
                  ),
                ),
                Positioned(
                  right: 32,
                  top: 68,
                  child: Text(
                    product.title,
                    style: GoogleFonts.vazirmatn(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Positioned(
                  left: 330.98,
                  top: 93.44,
                  child: SizedBox(
                    width: 492.70,
                    height: 186.83,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(1.57),
                      child: Text(
                        'NIKE',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.black.withOpacity(0.10000000149011612),
                          fontSize: 160,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 60.0,
                  top: 210.15,
                  child: Hero(
                    tag: product.id,
                    child: Container(
                      width: 300.77,
                      height: 300.89,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(product.imageUrl),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x4C000000),
                            blurRadius: 120.08,
                            offset: Offset(0, 27.54),
                            spreadRadius: .9,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 21,
                  top: 215,
                  child: SizedBox(
                    width: 54,
                    height: 189,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 54,
                            height: 36,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  width: 0.82,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFFDEE3EA),
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 51,
                          child: Container(
                            width: 54,
                            height: 36,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  width: 0.82,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 102,
                          child: Container(
                            width: 54,
                            height: 36,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  width: 0.82,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFFDEE3EA),
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 153,
                          child: Container(
                            width: 54,
                            height: 36,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  width: 0.82,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFFDEE3EA),
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20.02,
                          top: 10.08,
                          child: Center(
                            child: Text(
                              '۴۰',
                              style: GoogleFonts.vazirmatn(
                                color: const Color(0xFF1F2732),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: 0.25,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20.02,
                          top: 61.08,
                          child: Text(
                            '۴۱',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.vazirmatn(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: 0.25,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20.02,
                          top: 112.08,
                          child: Text(
                            '۴۲',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.vazirmatn(
                              color: Color(0xFF1F2732),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: 0.25,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20.02,
                          top: 163.08,
                          child: Text(
                            '۴۳',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.vazirmatn(
                              color: Color(0xFF1F2732),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: 0.25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 32.0,
                  top: 180.0,
                  child: Text(
                    'سایز',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.vazirmatn(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: 0.25,
                    ),
                  ),
                ),

                // bookmark
                Positioned(
                  right: 32,
                  top: 180.0,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x33374957)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Icon(IconlyLight.bookmark),
                  ),
                ),
                Positioned(
                  right: 32.0,
                  top: 320.0,
                  child: Text(
                    'رنگ ها',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.vazirmatn(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
                // red color stroke
                Positioned(
                  right: 29,
                  top: 373,
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                // blue color stroke.
                Positioned(
                  right: 29,
                  top: 422,
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Color(0xFFDFE0E0),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 37.0,
                  top: 382,
                  child: Container(
                    width: 14,
                    height: 14,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFCD2626),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                    ),
                  ),
                ),
                Positioned(
                  right: 37.0,
                  top: 430,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF394376),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                ),
                Positioned(
                  left: 32.0,
                  top: 521.0,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '\$',
                          style: GoogleFonts.vazirmatn(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '۸.۹۰۰',
                          style: GoogleFonts.vazirmatn(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 32.0,
                  top: 560.0,
                  child: Text(
                    '۱۰ % تخفیف',
                    style: GoogleFonts.vazirmatn(
                      color: const Color(0xFFBE3032),
                      fontSize: 11.86,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 90,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24.0, bottom: 30.0),
                    child: ExpandText(
                      'نایک  ایرزوم   گاید 10 ایکس یکی از  با کیفیت‌ ترین و \nراحت‌ ترین کفش‌ های نایک است که برای پیاده‌روی و\nدویدن بسیار مناسب است.اگر با برند نایک\tو تولیداتش\nآشنا باشید ، حتما  می دانید که  این مدل  همیشه\nاز پرفروش ترین هایش است.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.vazirmatn(fontSize: 18),
                      overflow: TextOverflow.fade,
                      maxLines: 6,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  right: 80,
                  left: 80,
                  child: ElevatedButton.icon(
                    icon: Icon(IconlyLight.bag_2),
                    label: Text(
                      'اضافه کردن به سبد خرید',
                      style: GoogleFonts.vazirmatn(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(80, 60),
                      backgroundColor: Color(0xFFBE3032),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
