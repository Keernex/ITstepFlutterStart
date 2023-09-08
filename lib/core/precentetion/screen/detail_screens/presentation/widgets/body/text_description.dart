import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextDescription extends StatelessWidget {
  const TextDescription({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: GoogleFonts.sora(
              fontSize: 16,
              color: const Color(0xFF2F2D2C),
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 20),
        ScrollableTextWidget(
          children: [
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    description,
                    style: GoogleFonts.sora(
                      fontSize: 14,
                      color: const Color(0xFF9B9B9B),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
