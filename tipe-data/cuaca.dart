import 'dart:async';

class WeatherService {
  // Simulasi Fetch data API
  Future<String> fetchWeather(String city) async {
    print('Mengambil data cuaca untuk $city...');
    
    // Simulasi delay
    await Future.delayed(Duration(seconds: 2));

    // Simulasi hasil API
    return 'Cuaca di $city: Cerah, 28°C';
  }

  // mendapatkan ramalan cuaca dengan delay berbeda
  Future<Map<String, String>> fetchWeatherForecast(String city) async {
    print('Mengambil data ramalan cuaca untuk $city...');
    
    // Menjalankan Future.wait
    List<String> forecasts = await Future.wait([
      _fetchDayForecast('Senin'),
      _fetchDayForecast('Selasa'),
      _fetchDayForecast('Rabu'),
    ]);

    return {
      'Senin': forecasts[0],
      'Selasa': forecasts[1],
      'Rabu': forecasts[2],
    };
  }

  // simulasi ramalan cuaca tiap hari
  Future<String> _fetchDayForecast(String day) async {
    await Future.delayed(Duration(seconds: 1));
    return '$day: Hujan ringan, 25°C';
  }
}

void main() async {
  // instance dari WeatherService
  WeatherService weatherService = WeatherService();

  // Memanggil fetchWeather dengan Future
  String weather = await weatherService.fetchWeather('Jakarta');
  print(weather);

  // Memanggil fetchWeatherForecast 
  Map<String, String> forecast = await weatherService.fetchWeatherForecast('Jakarta');
  print('\nRamalan Cuaca Jakarta:');
  forecast.forEach((day, report) {
    print('- $report');
  });
}
