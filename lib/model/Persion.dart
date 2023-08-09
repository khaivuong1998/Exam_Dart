abstract class Persion {
  int? id;
  String? name;
  String? numberPhone;
  String? address;

  Persion();

  Persion.constructor(this.id, this.name, this.numberPhone, this.address);

  @override
  String toString() {
    return 'Persion{id: $id, name: $name, numberPhone: $numberPhone, address: $address}';
  }

  void input() {}
}
