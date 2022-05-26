import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umershahzad/utils/custom_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Description extends StatelessWidget {
  final bool isVertical;
  final double width;
  const Description({required this.isVertical, required this.width, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isVertical ? double.infinity : width * 0.29,
      child: Column(
        crossAxisAlignment:
            isVertical ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: 135,
              height: 40,
              alignment: Alignment.center,
              color: CustomColors.primary,
              child: Center(
                  child: Text('flutter developer',
                      style: GoogleFonts.getFont('Days One',
                          color: Colors.black, fontSize: 10)))),
          SizedBox(height: 0.015 * width),
          Text('Talk is cheap.',
              style: GoogleFonts.getFont('Delius',
                  color: Colors.white, fontSize: 30)),
          const SizedBox(height: 5),
          Text('Show me the code.',
              style: GoogleFonts.getFont('Delius',
                  color: Colors.white, fontSize: 30)),
          const SizedBox(height: 20),
          SizedBox(
            width: isVertical ? double.infinity : width * 0.29,
            height: 90,
            child: AnimatedTextKit(
              repeatForever: true,
              pause: const Duration(seconds: 2),
              animatedTexts: [
                TyperAnimatedText(
                    "I'm developing mobile,frontend and backend applications",
                    textAlign: isVertical ? TextAlign.center : TextAlign.start,
                    textStyle: GoogleFonts.getFont('Delius',
                        color: CustomColors.gray, fontSize: 15)),
              ],
            ),
          ),
          InkWell(
            // ignore: deprecated_member_use
            onTap: () async => !await launch(
                'https://mail.google.com/mail/u/0/?fs=1&to=umershahzad0346@gmail.com&tf=cm'),
            child: Text("Let's chat me",
                style: GoogleFonts.getFont('Delius',
                    decoration: TextDecoration.underline,
                    color: CustomColors.primary,
                    fontSize: 20)),
          )
        ],
      ),
    );
  }
}
