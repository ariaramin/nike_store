import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_store/model/shoe.dart';
import 'package:nike_store/screens/shoe/shoe_screen.dart';
import 'package:nike_store/widgets/icon_container.dart';
import 'package:unicons/unicons.dart';

class ShoeItem extends StatelessWidget {
  final Shoe shoe;

  const ShoeItem({
    super.key,
    required this.shoe,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(ShoeScreen(shoe: shoe)),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 12,
        ),
        decoration: ShapeDecoration(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(38),
          ),
          color: Colors.grey[200],
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 12,
              child: Hero(
                tag: shoe.name,
                child: Transform.rotate(
                  angle: -120,
                  child: SizedBox(
                    width: 186,
                    child: Image.asset(shoe.image),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shoe.name,
                        style: GoogleFonts.workSans(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        r"$" "${shoe.price}",
                        style: GoogleFonts.workSans(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const IconContainer(
                  width: 30,
                  child: Icon(UniconsLine.arrow_right),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
