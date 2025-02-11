import 'dart:async';

class WeatherService {
  // Method untuk mengambil cuaca dengan Future (mensimulasikan fetch data dari API)
  Future<String> fetchWeather(String city) async {
    print('Mengambil data cuaca untuk $city...');
    
    // Simulasi delay 2 detik untuk mengambil data
    await Future.delayed(Duration(seconds: 2));

    // Simulasi hasil API
    return 'Cuaca di $city: Cerah, 28°C';
  }

  // Method untuk mendapatkan ramalan cuaca dengan beberapa delay berbeda
  Future<Map<String, String>> fetchWeatherForecast(String city) async {
    print('Mengambil data ramalan cuaca untuk $city...');
    
    // Menjalankan Future.wait agar beberapa operasi berjalan bersamaan
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

  // Method private untuk simulasi ramalan cuaca tiap hari
  Future<String> _fetchDayForecast(String day) async {
    await Future.delayed(Duration(seconds: 1));
    return '$day: Hujan ringan, 25°C';
  }
}

void main() async {
  // Membuat instance dari WeatherService
  WeatherService weatherService = WeatherService();

  // Memanggil method fetchWeather dengan Future dan menangani hasilnya
  String weather = await weatherService.fetchWeather('Jakarta');
  print(weather);

  // Memanggil method fetchWeatherForecast untuk mendapatkan ramalan cuaca
  Map<String, String> forecast = await weatherService.fetchWeatherForecast('Jakarta');
  print('\nRamalan Cuaca Jakarta:');
  forecast.forEach((day, report) {
    print('- $report');
  });
}
