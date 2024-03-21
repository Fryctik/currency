
import 'package:realm/realm.dart';

part 'history_convertation.g.dart';

@RealmModel()
class _HistoryConvertation {
  @PrimaryKey()
  late String id;
  late String charCode;
  late double inputValue;
  late double resultNumber;
}