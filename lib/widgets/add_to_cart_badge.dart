import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class AddToCartBadge extends StatelessWidget {
  const AddToCartBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Swipe down to add",
          style: GoogleFonts.workSans(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(38),
            color: Colors.black,
          ),
          child: const Column(
            children: [
              Icon(
                UniconsLine.shopping_bag,
                color: Colors.white,
                size: 28,
              ),
              SizedBox(height: 6),
              Icon(
                UniconsLine.arrow_down,
                color: Colors.white,
                size: 28,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
