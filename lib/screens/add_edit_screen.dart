import 'package:contacts/utils/network.dart';
import 'package:contacts/widgets/MyButton.dart';
import 'package:contacts/widgets/MyTextField.dart';
import 'package:flutter/material.dart';

class AppEditScreen extends StatefulWidget {
  static TextEditingController nameController = TextEditingController();
  static TextEditingController phoneController = TextEditingController();

  const AppEditScreen({super.key});

  @override
  State<AppEditScreen> createState() => _AppEditScreenState();
}

class _AppEditScreenState extends State<AppEditScreen> {
  // ignore: non_constant_identifier_names
  final FormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: FormKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: const Text(
            'مخاطب جدید',
            style: TextStyle(fontSize: 18),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              MyTextField(
                controller: AppEditScreen.nameController,
                errorText: 'Enter Your Name',
                hintText: 'Name',
                inputType: TextInputType.name,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: AppEditScreen.phoneController,
                errorText: 'Enter Your Phone Number',
                hintText: 'phone',
                inputType: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              MyButton(
                  width: 350,
                  onPressed: () {
                    if (FormKey.currentState!.validate()) {
                      Network.postData(
                          phone: AppEditScreen.phoneController.text,
                          fullname: AppEditScreen.nameController.text);
                    }
                  },
                  child: const Text('Add'))
            ],
          ),
        ),
      ),
    );
  }
}
