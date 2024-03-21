import 'package:windows1251/windows1251.dart';
import 'package:xml/xml.dart';

class Currency {
  final String charCode;
  String name;
  final double value;

  Currency({
    required this.charCode, 
    required this.name, 
    required this.value, 
  });

  factory Currency.fromXML(XmlElement xml) {
    return Currency(
      charCode: xml.findElements('CharCode').first.innerText, 
      name: windows1251.decode(xml.findElements('Name').first.innerText.codeUnits), 
      value: double.parse(xml.findElements('Value').first.innerText.replaceAll(',', '.')), 
    );
  }
}