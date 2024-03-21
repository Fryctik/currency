import 'package:http/http.dart' as http;
import 'package:task2/domain/currency_list_interface.dart';
import 'package:xml/xml.dart' as xml;
import 'package:task2/data/models/currency.dart';

class CurrencyListRepositories implements CurrencyListInterface {

  @override
  Future<List<Currency>> getCurrencyList() async {
    final responce = await http.get(
      Uri.parse(
        'http://www.cbr.ru/scripts/XML_daily.asp'
      )
    );
    if(responce.statusCode == 200){
      List<Currency> currencyList = [];
      var document = xml.XmlDocument.parse(responce.body);
      var elements = document.findAllElements('Valute');

      for(var element in elements){
        Currency currency = Currency.fromXML(element);
        currencyList.add(currency);
      }
      return currencyList;
    } else {
      throw Exception(responce.statusCode);
    }
    
  }
}