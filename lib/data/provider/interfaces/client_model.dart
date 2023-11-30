import 'package:projeto_integrador_1/data/provider/interfaces/address_model.dart';

class ClientModel {
  final String id;
  final String name;
  final String phone;
  final String email;
  final AddressModel address;

  const ClientModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.address,
  });

  ClientModel copyWith({
    String? id,
    String? name,
    String? phone,
    String? email,
    AddressModel? address,
  }) {
    return ClientModel(
      id: id ?? this.id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      address: address ?? this.address,
    );
  }

  factory ClientModel.fromJson(Map<String, dynamic> json) {
    return ClientModel(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
      address:
          AddressModel.fromJson(Map<String, dynamic>.from(json['address'])),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'email': email,
      'address': address.toJson(),
    };
  }
}
