import 'package:dio/dio.dart';
import 'models/weather.dart';
import 'abstract_weather_repository.dart';

class WeatherRepository implements AbstractWeatherRepository {
  @override
  Future<Weather> getWeather(String latitude, String longitude) async {
    final response = await Dio().get(
        'https://api.open-meteo.com/v1/forecast?latitude=$latitude&longitude=$longitude&current=temperature_2m,weather_code&forecast_days=1');
    final dataCurrent = response.data['current'] as Map<String, dynamic>;
    return Weather(
      temperature: (dataCurrent['temperature_2m'] as double).round().toString(),
      weatehrCode: dataCurrent['weather_code'].toString(),
    );
  }
}
