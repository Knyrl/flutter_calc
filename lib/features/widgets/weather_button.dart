import 'package:flutter/material.dart';
import 'package:flutter_calculator/features/geolocation.dart';
import 'package:flutter_calculator/features/widgets/weather_info.dart';
import 'package:popover/popover.dart';
import 'package:get/get.dart';

import '../../repository/weather_repository.dart';
import '../../controller/weather_controller.dart';

class WeatherButton extends StatelessWidget {
  // const WeatherButton({super.key});

  final _weatherController = Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () async {
          if (_weatherController.weather == null) {
            _weatherController.isLoading = true;
            final position = await determinePosition();
            final weather = await WeatherRepository().getWeather(
                position.longitude.toString(), position.latitude.toString());
            _weatherController.weather = weather;
            _weatherController.isLoading = false;
          } else {
            showPopover(
              context: context,
              bodyBuilder: (context) => WeatherInfo(
                temperature: _weatherController.weather!.temperature,
                weatehrCode: _weatherController.weather!.weatehrCode,
              ),
              backgroundColor: theme.colorScheme.primary,
              radius: 8,
              transition: PopoverTransition.scale,
              arrowWidth: 16,
              arrowHeight: 6,
            );
          }
        },
        child: Container(
          width: 20,
          height: 20,
          child: Obx(() {
            if (_weatherController.isLoading) {
              return Center(
                  child: CircularProgressIndicator(
                color: theme.textTheme.titleLarge!.color,
                strokeWidth: 3,
              ));
            } else {
              return Icon(
                Icons.wb_cloudy,
                color: theme.textTheme.titleLarge!.color,
              );
            }
          }),
        ),
      ),
    );
  }
}
