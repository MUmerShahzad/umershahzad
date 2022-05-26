import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umershahzad/utils/breakpoints.dart';
import 'package:umershahzad/utils/custom_colors.dart';
import 'package:umershahzad/widgets/logo.dart';

class Footer extends StatelessWidget {
  final double width;
  final ScrollController scrollController;
  const Footer({required this.width, required this.scrollController, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.darkBackground,
        padding: const EdgeInsets.symmetric(vertical: 20),
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Logo(
              width: width,
              scrollController: scrollController,
            ),
            const SizedBox(height: 22),
            width > Breakpoints.sm
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Copyright © 2021 Umar shahzad',
                          style: GoogleFonts.getFont('Delius',
                              color: CustomColors.gray, fontSize: 14)),
                      Text('All rights reserved',
                          style: GoogleFonts.getFont('Delius',
                              color: CustomColors.gray, fontSize: 14)),
                      Text('umershahzad0346@gmail.com',
                          style: GoogleFonts.getFont('Delius',
                              color: CustomColors.gray, fontSize: 14)),
                    ],
                  )
                : Column(
                    children: [
                      Text('Copyright © 2021 Umar shahzad',
                          style: GoogleFonts.getFont('Delius',
                              color: CustomColors.gray, fontSize: 14)),
                      const SizedBox(height: 10),
                      Text(' All rights reserved',
                          style: GoogleFonts.getFont('Delius',
                              color: CustomColors.gray, fontSize: 14)),
                      const SizedBox(height: 10),
                      Text('umershahzad0346@gmail.com',
                          style: GoogleFonts.getFont('Delius',
                              color: CustomColors.gray, fontSize: 14)),
                    ],
                  ),
          ],
        ));
  }
}
