class Ingredients {
  Ingredients({
      this.name, 
      this.quantity, 
      this.unit,});

  Ingredients.fromJson(dynamic json) {
    name = json['name'];
    quantity = json['quantity'];
    unit = json['unit'];
  }
  String? name;
  int? quantity;
  String? unit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['quantity'] = quantity;
    map['unit'] = unit;
    return map;
  }

}