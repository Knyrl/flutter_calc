// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({
    Key? key,
    required this.temperature,
    required this.weatehrCode,
  }) : super(key: key);

  final String temperature;
  final String weatehrCode;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: theme.colorScheme.primary,
      height: 70,
      width: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            temperature,
            style: theme.textTheme.titleLarge,
          ),
          VerticalDivider(
            width: 0.1,
            thickness: 2,
            indent: 10,
            endIndent: 10,
            color: theme.colorScheme.secondary,
          ),
          Icon(
            getWeatherIcon(weatehrCode),
            size: 30,
            color: theme.textTheme.titleLarge!.color,
          ),
        ],
      ),
    );
  }

  IconData getWeatherIcon(String code) {
    var codeInt = int.parse(code);
    if (0 <= codeInt && codeInt <= 2) {
      return Icons.wb_sunny;
    } else if (45 <= codeInt && codeInt <= 57) {
      return Icons.wb_cloudy;
    } else if (61 <= codeInt && codeInt <= 77) {
      return Icons.cloudy_snowing;
    }
    return Icons.thunderstorm;
  }
}
