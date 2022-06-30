import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Our Services',
          style: GoogleFonts.sansita(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: 100,
          height: 6,
          color: const Color(0xFF303ef7),
        ),
        const SizedBox(height: 60),
      ],
    );
  }
}
