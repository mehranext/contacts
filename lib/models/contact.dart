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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['phone'] = this.phone;
    data['fullname'] = this.fullname;
    return data;
  }
}