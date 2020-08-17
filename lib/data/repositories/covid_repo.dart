import 'package:meta/meta.dart';
import 'package:tojuwa/data/dataSource/covid_data.dart';
import 'package:tojuwa/data/models/coviddata.dart';

class CoronaRepository {

  CovidDataSource coronaDataSource;

  CoronaRepository({@required this.coronaDataSource});

  Future<Covid> fetchCovidSummary() async {
    return await coronaDataSource.getCovidSummary();
  }
  
}