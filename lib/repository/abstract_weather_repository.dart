import 'models/weather.dart';

abstract class AbstractWeatherRepository {
  Future<Weather> getWeather();
}
