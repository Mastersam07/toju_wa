import 'package:http/http.dart' as http;
import 'package:tojuwa/models/coviddata.dart';
import 'dart:convert';

class CasesForCorona {
  List<Covid> cases = [];

  Future<void> getCasesForCorona() async {
    String url = "https://covid19.mathdro.id/api/countries/nigeria/confirmed";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      Covid gottencases = Covid(
        confirmed: jsonData['confirmed']['value'],
        recovered: jsonData['recovered']['value'],
        deaths: jsonData['deaths']['value'],
      );
      cases.add(gottencases);
    } else {
      print(response.statusCode);
    }
  }
}

class GlobalTotalForCorona {
  List<Covid> cases = [];

  Future<void> getTotalCasesForCorona() async {
    String url = "https://covid19.mathdro.id/api";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      Covid gottencases = Covid(
        confirmed: jsonData['confirmed']['value'],
        recovered: jsonData['recovered']['value'],
        deaths: jsonData['deaths']['value'],
      );
      cases.add(gottencases);
    } else {
      print(response.statusCode);
    }
  }
}
