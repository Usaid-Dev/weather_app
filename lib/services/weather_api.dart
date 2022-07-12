import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather_model.dart';

class Weather_Api {
  String ApiKey = '382ed4942eda431e83662408222606';
  Weather_Model? weatherApiModel;
  Map<String, dynamic>? result;

  Future<Map<String, dynamic>> GetCurrent(
      {Position? position, String? city}) async {
    if (position != null) {
      var url = Uri.parse(
          'http://api.weatherapi.com/v1/forecast.json?key=$ApiKey&q=${position
              .latitude},${position.longitude}&days=1');
      var response = await http.get(url);
      var decodedJson = jsonDecode(response.body);
      weatherApiModel = Weather_Model.fromJson(decodedJson);
      return result = {
        'country': weatherApiModel?.location?.country,
        'area': weatherApiModel?.location?.name,
        'temperature': weatherApiModel?.current?.tempC,
        'condition': weatherApiModel?.current?.condition?.text,
        'day': weatherApiModel?.current?.isDay
      };
    } else if (city != null) {
      var url = Uri.parse(
          'http://api.weatherapi.com/v1/forecast.json?key=$ApiKey&q=$city&days=1');
      var response = await http.get(url);
      var decodedJson = jsonDecode(response.body);
      weatherApiModel = Weather_Model.fromJson(decodedJson);

      return result = {
        'country': weatherApiModel?.location?.country,
        'area': weatherApiModel?.location?.name,
        'temperature': weatherApiModel?.current?.tempC,
        'condition': weatherApiModel?.current?.condition?.text,
        'day': weatherApiModel?.current?.isDay
      };
    }

    return result = {"Error": "Error while fetching"};
  }

  Future<Map<String, dynamic>> GetForecast(
      {Position? position, String? city}) async {
    if (position != null) {
      var url = Uri.parse(
          'http://api.weatherapi.com/v1/forecast.json?key=$ApiKey&q=${position
              .latitude},${position.longitude}&days=1');
      var response = await http.get(url);
      var decodedJson = jsonDecode(response.body);
      weatherApiModel = Weather_Model.fromJson(decodedJson);
      return result = {
        "hour1": weatherApiModel!.forecast!.forecastday![0].hour![0],
        "hour2": weatherApiModel!.forecast!.forecastday![0].hour![1],
        "hour3": weatherApiModel!.forecast!.forecastday![0].hour![2],
        "hour4": weatherApiModel!.forecast!.forecastday![0].hour![3],
        "hour5": weatherApiModel!.forecast!.forecastday![0].hour![5],
      };
    }
    else if (city != null) {
      var url = Uri.parse(
          'http://api.weatherapi.com/v1/forecast.json?key=$ApiKey&q=${city}&days=1');
      var response = await http.get(url);
      var decodedJson = jsonDecode(response.body);
      weatherApiModel = Weather_Model.fromJson(decodedJson);

      return result = {
        "hour1": weatherApiModel!.forecast!.forecastday![0].hour![0],
        "hour2": weatherApiModel!.forecast!.forecastday![0].hour![1],
        "hour3": weatherApiModel!.forecast!.forecastday![0].hour![2],
        "hour4": weatherApiModel!.forecast!.forecastday![0].hour![3],
        "hour5": weatherApiModel!.forecast!.forecastday![0].hour![5],
      };
    }
    return result = {"Error": "Error while fetching"};
  }
}