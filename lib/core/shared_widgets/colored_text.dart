import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visualizer/core/text_styles.dart';

import '../colors.dart';

class ColoredText extends StatelessWidget {
  const ColoredText({Key? key , required this.str, this.fontSize , this.color}) : super(key: key);

  final String str;
  final double? fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {

    int findLen(String word) {
      return word.replaceAll(new RegExp(r'[a-zA-Z]'), "").length;
    }

    return Container(
      child: RichText(
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
      maxLines: 4,
      text: TextSpan(
        children: str
            .split(" ")
            .map((word) => TextSpan(
            text: word + " ",
            style: findLen(word) == word.length ||
                word.substring(0, ).contains("experts") || word.substring(0, ).contains("specialize") ||
                word.substring(0, ).contains("minimalism") || word.substring(0, ).contains("contemporary") ||
                word.substring(0, ).contains("cad") || word.substring(0, ).contains("drawing") ||
                word.substring(0, ).contains("expectations") || word.substring(0, ).contains("sketch") ||
                word.substring(0, ).contains("chat") || word.substring(0, ).contains("box") ||
                word.substring(0, ).contains("Best") || word.substring(0, ).contains("seller") ||
                word.substring(0, ).contains("we") || word.substring(0, ).contains("Hex") ||
                word.substring(0, ).contains("app") || word.substring(0, ).contains("corrections")||
                word.substring(0, ).contains("STARTED") || word.substring(0, ).contains("Gated-") ||
                word.substring(0, ).contains("Towers") || word.substring(0, ).contains("Landscape") ||
                word.substring(0, ).contains("views") || word.substring(0, ).contains("Miscellaneous") ||
                word.substring(0, ).contains("Add") || word.substring(0, ).contains("work") ||
                word.substring(0, ).contains("Farm houses") || word.substring(0, ).contains("Acres") ||
                word.substring(0, ).contains("Documents")|| word.substring(0, ).contains('Design')||
                word.substring(0, ).contains("Villas")|| word.substring(0, ).contains('shown')||
                word.substring(0, ).contains("Villa")|| word.substring(0, ).contains('Types')||
                word.substring(0, ).contains("Floors")|| word.substring(0, ).contains('view')||
                word.substring(0, ).contains("Direction")|| word.substring(0, ).contains('Type')||
                word.substring(0, ).contains("Entrance")|| word.substring(0, ).contains('gate')||
                word.substring(0, ).contains("Clculate")|| word.substring(0, ).contains('area')||
                word.substring(0, ).contains("Lounge")|| word.substring(0, ).contains('area')||
                word.substring(0, ).contains("Club")|| word.substring(0, ).contains('house')||
                word.substring(0, ).contains("Gate")|| word.substring(0, ).contains('width')||
                word.substring(0, ).contains("Marketing")|| word.substring(0, ).contains('office')||
                word.substring(0, ).contains("Brochure")|| word.substring(0, ).contains('Plot')||
                word.substring(0, ).contains("Ask")|| word.substring(0, ).contains('Help')||
                word.substring(0, ).contains("Apartments")||  word.substring(0, ).contains("world")||  word.substring(0, ).contains("finger")||  word.substring(0, ).contains("tips")
                ? TextStyles.titleStyle16.copyWith(color: color ??AppColors.coffeColor , fontSize: fontSize ?? 16 , fontWeight: FontWeight.w400)
                : TextStyles.titleStyle16.copyWith(color:color ?? AppColors.onboardingText , fontSize: fontSize ?? 16 , fontWeight: FontWeight.w400)))
            .toList(),
      ),
    ),
    );
  }
}
