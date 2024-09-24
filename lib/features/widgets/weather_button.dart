import 'package:flutter/material.dart';
import 'package:flutter_calculator/features/widgets/weather_info.dart';
import 'package:popover/popover.dart';

class WeatherButton extends StatelessWidget {
  const WeatherButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () => showPopover(
          context: context,
          bodyBuilder: (context) => const WeatherInfo(),
          backgroundColor: theme.colorScheme.primary,
          radius: 8,
          transition: PopoverTransition.scale,
          arrowWidth: 16,
          arrowHeight: 6,
        ),
        child: const Icon(
          Icons.wb_cloudy,
        ),
      ),
    );
  }
}
