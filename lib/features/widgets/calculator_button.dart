// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
    required this.name,
    this.icon,
  });

  final String name;
  final IconData? icon;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return DecoratedBox(
//       decoration: BoxDecoration(shape: BoxShape.circle),
//       child: ElevatedButton(
//         style: theme.elevatedButtonTheme.style,
//         onPressed: () {},
//         child: icon != null
//             ? Icon(
//                 icon,
//                 color: theme.colorScheme.onPrimary,
//               )
//             : Text(
//                 name,
//                 style: theme.textTheme.labelMedium,
//               ),
//       ),
//     );
//   }
// }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(0.7),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 55,
            color: theme.colorScheme.primary,
            child: Center(
              child: icon != null
                  ? Icon(
                      icon,
                      color: theme.colorScheme.onPrimary,
                    )
                  : Text(
                      name,
                      style: theme.textTheme.labelMedium,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
