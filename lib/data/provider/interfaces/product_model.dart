class ProductModel {
  final String id;
  final String name;
  final String color;
  final int quantity;
  final double cost;
  final double price;
  final String supplier;

  const ProductModel({
    required this.id,
    required this.name,
    required this.color,
    required this.quantity,
    required this.cost,
    required this.price,
    required this.supplier,
  });

  ProductModel copyWith({
    String? id,
    String? name,
    String? color,
    int? quantity,
    double? cost,
    double? price,
    String? supplier,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      quantity: quantity ?? this.quantity,
      cost: cost ?? this.cost,
      price: price ?? this.price,
      supplier: supplier ?? this.supplier,
    );
  }

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      color: json['color'],
      quantity: json['quantity'],
      cost: json['cost'],
      price: json['price'],
      supplier: json['supplier'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'color': color,
      'quantity': quantity,
      'cost': cost,
      'price': price,
      'supplier': supplier,
    };
  }
}
