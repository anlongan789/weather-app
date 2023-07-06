import 'package:http/http.dart' as http;
import 'package:weather_app/models/city_model.dart';
import 'package:weather_app/repositories/buid_server.dart';

class CityRepository {
  static final client = http.Client();

  getCityByCountry() async {
    var response = await client.get(
      BuildServer.buildCityUrl(),
    );
    if (response.statusCode == 200) {
      var resultString = response.body;
      return listCityFromJson(resultString);
    } else {
      return null;
    }
  }
}
