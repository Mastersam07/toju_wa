import 'package:http/http.dart' as http;
import 'package:tojuwa/models/coviddata.dart';
import 'dart:convert';

class CasesForCorona {
  List<Covid> cases = [];

  Future<void> getCasesForCorona() async {
    String url =
        "https://covid19.mathdro.id/api/countries/nigeria/confirmed";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData.forEach((element) {
        Covid gottencases = Covid(
          confirmed: element['confirmed'],
          recovered: element['recovered'],
          deaths: element['deaths'],
        );
        cases.add(gottencases);
      });
    }
  }
}

class GlobalTotalForCorona {
  List<Covid> cases = [];

  Future<void> getTotalCasesForCorona() async {
    String url =
        "https://covid19.mathdro.id/api";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData.forEach((element) {
        Covid gottencases = Covid(
          confirmed: element['confirmed']['value'],
          recovered: element['recovered']['value'],
          deaths: element['deaths']['value'],
        );
        cases.add(gottencases);
      });
    }
  }
}
