import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_store/widgets/icon_container.dart';
import 'package:unicons/unicons.dart';

class ShoeAppBar extends StatelessWidget {
  final String title;
  final int cartItemCount;

  const ShoeAppBar({
    super.key,
    required this.title,
    this.cartItemCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: const IconContainer(
              child: Icon(UniconsLine.arrow_left),
            ),
          ),
          Text(
            title,
            style: GoogleFonts.workSans(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              const IconContainer(
                child: Icon(UniconsLine.shopping_bag),
              ),
              Positioned(
                top: -4,
                left: -4,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      cartItemCount.toString(),
                      style: GoogleFonts.workSans(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
