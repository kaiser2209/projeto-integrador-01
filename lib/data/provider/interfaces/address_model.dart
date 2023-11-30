class AddressModel {
  final String street;
  final String number;
  final String complement;
  final String neighborhood;
  final String postalCode;
  final String city;
  final String state;

  const AddressModel({
    required this.street,
    required this.number,
    required this.complement,
    required this.neighborhood,
    required this.postalCode,
    required this.city,
    required this.state,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      street: json['street'],
      number: json['number'],
      complement: json['complement'],
      neighborhood: json['neighborhood'],
      postalCode: json['postalCode'],
      city: json['city'],
      state: json['state'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'street': street,
      'number': number,
      'complement': complement,
      'neighborhood': neighborhood,
      'postalCode': postalCode,
      'city': city,
      'state': state,
    };
  }
}
