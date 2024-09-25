import 'package:flutter/material.dart';
import 'package:flutter_calculator/features/widgets/weather_info.dart';
import 'package:popover/popover.dart';

import '../../repository/models/weather.dart';
import '../../repository/weather_repository.dart';

class WeatherButton extends StatelessWidget {
  const WeatherButton({super.key});

  @override
  Widget build(BuildContext context) {
    Weather? _weather;
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () async {
          _weather == null
              ? _weather = await WeatherRepository().getWeather()
              : showPopover(
                  context: context,
                  bodyBuilder: (context) => WeatherInfo(
                    temperature: _weather!.temperature,
                    weatehrCode: _weather!.weatehrCode,
                  ),
                  backgroundColor: theme.colorScheme.primary,
                  radius: 8,
                  transition: PopoverTransition.scale,
                  arrowWidth: 16,
                  arrowHeight: 6,
                );
        },
        child: Icon(
          Icons.wb_cloudy,
          color: theme.textTheme.titleLarge!.color,
        ),
      ),
    );
  }
}
