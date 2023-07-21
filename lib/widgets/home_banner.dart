import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 18),
      sliver: SliverToBoxAdapter(
        child: Container(
          width: double.infinity,
          height: 172,
          padding: const EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 22,
          ),
          decoration: ShapeDecoration(
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(38),
            ),
            color: Colors.grey[200],
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "20% Discount",
                    style: GoogleFonts.workSans(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "on your first purchase",
                    style: GoogleFonts.workSans(
                      fontSize: 14,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      backgroundColor: Colors.black,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 18,
                      ),
                      child: Text(
                        "Shop now",
                        style: GoogleFonts.workSans(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: -24,
                right: -62,
                child: Transform.rotate(
                  angle: -120,
                  child: SizedBox(
                    width: 272,
                    child: Image.asset("images/shoe2.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
