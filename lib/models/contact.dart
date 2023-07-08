class contacts {
  int? id;
  String? phone;
  String? fullname;

  contacts({this.id, this.phone, this.fullname});

  contacts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    phone = json['phone'];
    fullname = json['fullname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['phone'] = phone;
    data['fullname'] = fullname;
    return data;
  }
}