import 'package:contacts/models/contact.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Network {
  //
  static Uri url = Uri.parse('https://retoolapi.dev/4lY5RH/Contacts');
  //
  static Uri urlWithId(String id) {
    Uri url = Uri.parse('https://retoolapi.dev/4lY5RH/Contacts/$id');
    return url;
  }

  //
  static List<contacts> contact = [];
  //! Get Data
  static void getData() async {
    contact.clear();
    http.get(Network.url).then((respones) {
      if (respones.statusCode == 200) {
        List jsonDcode = convert.jsonDecode(respones.body);
        for (var json in jsonDcode) {
          contact.add(contacts.fromJson(json));
        }
      }
    });
  } //* post data

  static void postData({
    required String phone,
    required String fullname,
  }) async {
    contacts contact = contacts(phone: phone, fullname: fullname);

    http.post(Network.url, body: contact.toJson()).then((response) {
      print(response.body);
    });
  }
  //* put data

  static void putData({
    required String phone,
    required String fullname,
    required String id,
  }) async {
    contacts contact = contacts(phone: phone, fullname: fullname);

    http.put(urlWithId(id), body: contact.toJson()).then((response) {
      print(response.body);
    });
  }
//*delet contact

  static void deleteContact(String id) {
    http.delete(Network.urlWithId(id)).then((value) {
      getData();
    });
  }
}
