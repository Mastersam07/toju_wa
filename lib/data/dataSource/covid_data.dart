import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tojuwa/data/models/coviddata.dart';

class CovidDataSource {
  Future<Covid> getCovidSummary() async {
    var response =
        await http.get("https://covid19.mathdro.id/api/countries/nigeria");
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      Covid covidSummary = Covid.fromJson(data);
      return covidSummary;
    } else {
      throw Exception();
    }
  }
}
