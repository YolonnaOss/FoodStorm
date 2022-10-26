// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveCardsModelAdapter extends TypeAdapter<HiveCardsModel> {
  @override
  final int typeId = 0;

  @override
  HiveCardsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveCardsModel(
      postID: fields[0] as int?,
      cafeID: fields[1] as int?,
      promotion: fields[2] as bool?,
      message: fields[3] as String?,
      discount: fields[4] as HiveDiscount,
      createdAt: fields[5] as String?,
      image: fields[6] as String?,
      cafeName: fields[7] as String?,
      cafeLogo: fields[8] as String?,
      cafeRating: fields[9] as String?,
      tags: (fields[10] as List?)?.cast<String?>(),
    );
  }

  @override
  void write(BinaryWriter writer, HiveCardsModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.postID)
      ..writeByte(1)
      ..write(obj.cafeID)
      ..writeByte(2)
      ..write(obj.promotion)
      ..writeByte(3)
      ..write(obj.message)
      ..writeByte(4)
      ..write(obj.discount)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.image)
      ..writeByte(7)
      ..write(obj.cafeName)
      ..writeByte(8)
      ..write(obj.cafeLogo)
      ..writeByte(9)
      ..write(obj.cafeRating)
      ..writeByte(10)
      ..write(obj.tags);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveCardsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveDiscountAdapter extends TypeAdapter<HiveDiscount> {
  @override
  final int typeId = 1;

  @override
  HiveDiscount read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveDiscount(
      present: fields[0] as bool?,
      presentText: fields[1] as String?,
      percents: fields[2] as int?,
      fullPrice: fields[3] as int?,
      finalPrice: fields[4] as int?,
      validTo: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveDiscount obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.present)
      ..writeByte(1)
      ..write(obj.presentText)
      ..writeByte(2)
      ..write(obj.percents)
      ..writeByte(3)
      ..write(obj.fullPrice)
      ..writeByte(4)
      ..write(obj.finalPrice)
      ..writeByte(5)
      ..write(obj.validTo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveDiscountAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
