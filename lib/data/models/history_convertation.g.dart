// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_convertation.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class HistoryConvertation extends _HistoryConvertation
    with RealmEntity, RealmObjectBase, RealmObject {
  HistoryConvertation(
    String id,
    String charCode,
    double inputValue,
    double resultNumber,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'charCode', charCode);
    RealmObjectBase.set(this, 'inputValue', inputValue);
    RealmObjectBase.set(this, 'resultNumber', resultNumber);
  }

  HistoryConvertation._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get charCode =>
      RealmObjectBase.get<String>(this, 'charCode') as String;
  @override
  set charCode(String value) => RealmObjectBase.set(this, 'charCode', value);

  @override
  double get inputValue =>
      RealmObjectBase.get<double>(this, 'inputValue') as double;
  @override
  set inputValue(double value) =>
      RealmObjectBase.set(this, 'inputValue', value);

  @override
  double get resultNumber =>
      RealmObjectBase.get<double>(this, 'resultNumber') as double;
  @override
  set resultNumber(double value) =>
      RealmObjectBase.set(this, 'resultNumber', value);

  @override
  Stream<RealmObjectChanges<HistoryConvertation>> get changes =>
      RealmObjectBase.getChanges<HistoryConvertation>(this);

  @override
  HistoryConvertation freeze() =>
      RealmObjectBase.freezeObject<HistoryConvertation>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(HistoryConvertation._);
    return const SchemaObject(
        ObjectType.realmObject, HistoryConvertation, 'HistoryConvertation', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('charCode', RealmPropertyType.string),
      SchemaProperty('inputValue', RealmPropertyType.double),
      SchemaProperty('resultNumber', RealmPropertyType.double),
    ]);
  }
}
