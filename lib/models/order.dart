class Order {
  String drugtype;
  String drugname;

  Order({required this.drugtype, required this.drugname});
  static List<Order> getOrders() {
    return <Order>[
      Order(drugtype: "diuretics", drugname: "lasix"),
      Order(drugtype: "antibiotics", drugname: "penicillin"),
    ];
  }
}
