import 'package:realm/realm.dart';
import 'package:task2/data/models/history_convertation.dart';
import 'package:task2/domain/convertation_interface.dart';

class ConvertationHistoryRepositories implements ConvertationHistoryInterface {

  final Realm realm;

  ConvertationHistoryRepositories({required this.realm});

  @override
  Future<void> addConvertation(double resultNumber, String inputNumber, String charCode) async {
    
    HistoryConvertation convertation = HistoryConvertation(
      Uuid.v4().toString(), 
      charCode, 
      double.parse(inputNumber), 
      resultNumber
    );
    realm.write(() => realm.add(convertation));
  }

  @override
  Future<List<HistoryConvertation>> getConvertationList() async {
    return realm.all<HistoryConvertation>().toList();
  }
  
}