import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemDetailsRecord extends FirestoreRecord {
  ItemDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "cartRef" field.
  DocumentReference? _cartRef;
  DocumentReference? get cartRef => _cartRef;
  bool hasCartRef() => _cartRef != null;

  // "menuItemRefs" field.
  DocumentReference? _menuItemRefs;
  DocumentReference? get menuItemRefs => _menuItemRefs;
  bool hasMenuItemRefs() => _menuItemRefs != null;

  // "modifiers" field.
  List<String>? _modifiers;
  List<String> get modifiers => _modifiers ?? const [];
  bool hasModifiers() => _modifiers != null;

  // "modifiers_2" field.
  List<String>? _modifiers2;
  List<String> get modifiers2 => _modifiers2 ?? const [];
  bool hasModifiers2() => _modifiers2 != null;

  // "menuItemPhoto" field.
  String? _menuItemPhoto;
  String get menuItemPhoto => _menuItemPhoto ?? '';
  bool hasMenuItemPhoto() => _menuItemPhoto != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _cartRef = snapshotData['cartRef'] as DocumentReference?;
    _menuItemRefs = snapshotData['menuItemRefs'] as DocumentReference?;
    _modifiers = getDataList(snapshotData['modifiers']);
    _modifiers2 = getDataList(snapshotData['modifiers_2']);
    _menuItemPhoto = snapshotData['menuItemPhoto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('itemDetails');

  static Stream<ItemDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemDetailsRecord.fromSnapshot(s));

  static Future<ItemDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemDetailsRecord.fromSnapshot(s));

  static ItemDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ItemDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemDetailsRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  int? quantity,
  DocumentReference? cartRef,
  DocumentReference? menuItemRefs,
  String? menuItemPhoto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'price': price,
      'quantity': quantity,
      'cartRef': cartRef,
      'menuItemRefs': menuItemRefs,
      'menuItemPhoto': menuItemPhoto,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItemDetailsRecordDocumentEquality implements Equality<ItemDetailsRecord> {
  const ItemDetailsRecordDocumentEquality();

  @override
  bool equals(ItemDetailsRecord? e1, ItemDetailsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.price == e2?.price &&
        e1?.quantity == e2?.quantity &&
        e1?.cartRef == e2?.cartRef &&
        e1?.menuItemRefs == e2?.menuItemRefs &&
        listEquality.equals(e1?.modifiers, e2?.modifiers) &&
        listEquality.equals(e1?.modifiers2, e2?.modifiers2) &&
        e1?.menuItemPhoto == e2?.menuItemPhoto;
  }

  @override
  int hash(ItemDetailsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.price,
        e?.quantity,
        e?.cartRef,
        e?.menuItemRefs,
        e?.modifiers,
        e?.modifiers2,
        e?.menuItemPhoto
      ]);

  @override
  bool isValidKey(Object? o) => o is ItemDetailsRecord;
}
