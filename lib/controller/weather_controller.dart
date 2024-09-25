import 'package:get/get.dart';

// import '../repository/weather_repository.dart';
import '../../repository/models/weather.dart';

class WeatherController extends GetxController {
  final _weather = Rxn<Weather>();
  final _isLoading = RxBool(false);

  Weather? get weather => _weather.value;
  bool get isLoading => _isLoading.value;

  set weather(Weather? value) => _weather.value = value;
  set isLoading(bool value) => _isLoading.value = value;
}
