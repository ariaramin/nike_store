import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_store/model/shoe.dart';
import 'package:nike_store/widgets/icon_container.dart';
import 'package:unicons/unicons.dart';

class ShoeDetail extends StatelessWidget {
  const ShoeDetail({
    super.key,
    required this.shoe,
  });

  final Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
             Text(
              "Size",
              style: GoogleFonts.workSans(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Column(
              children: List.generate(
                shoe.sizes.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: IconContainer(
                    width: 58,
                    child: Text(
                      shoe.sizes[index],
                      style:  GoogleFonts.workSans(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 86),
            Text(
              r"$" "${shoe.price}",
              style:  GoogleFonts.workSans(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
             Text(
              "10% OFF",
              style: GoogleFonts.workSans(
                fontSize: 14,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            const IconContainer(child: Icon(UniconsLine.bookmark)),
            const SizedBox(height: 86),
             Text(
              "Colour",
              style: GoogleFonts.workSans(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Column(
              children: List.generate(
                shoe.colors.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: IconContainer(
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(),
                        color: shoe.colors[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
