// import 'package:icon_checker_core/src/theme/theme.dart';
// import 'package:flutter/widgets.dart';

// enum XTextLevel {
//   paragraph1,
//   title1,
// }

// class XText extends StatelessWidget {
//   const XText(
//     this.data, {
//     Key? key,
//     this.color,
//     this.fontSize,
//     this.maxLines,
//     this.level = XTextLevel.paragraph1,
//   }) : super(key: key);

//   const XText.paragraph1(
//     this.data, {
//     Key? key,
//     this.color,
//     this.fontSize,
//     this.maxLines,
//   })  : level = XTextLevel.paragraph1,
//         super(key: key);

//   const XText.title1(
//     this.data, {
//     Key? key,
//     this.color,
//     this.fontSize,
//     this.maxLines,
//   })  : level = XTextLevel.title1,
//         super(key: key);

//   final String data;
//   final XTextLevel level;
//   final Color? color;
//   final double? fontSize;
//   final int? maxLines;

//   @override
//   Widget build(BuildContext context) {
//     final theme = XTheme.of(context);
//     final color = this.color ?? theme.x_colors.foreground;
//     final style = () {
//       switch (level) {
//         case XTextLevel.paragraph1:
//           return theme.typography.paragraph1;
//         case XTextLevel.title1:
//           return theme.typography.title1;
//       }
//     }();
//     return Text(
//       data,
//       style: style.copyWith(
//         color: color,
//         fontSize: fontSize,
//       ),
//       maxLines: maxLines,
//     );
//   }
// }
