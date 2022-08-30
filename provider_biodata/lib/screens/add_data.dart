import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_login/models/bio_data_state.dart';

import '../models/bio_data_model.dart';

class AddData extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bio-Data"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Name"),
            TextField(
              controller: nameController,
              keyboardType: TextInputType.name,
            ),
            Text("Age"),
            TextField(
              controller: ageController,
              keyboardType: TextInputType.number,
            ),
            Text("Phone Number"),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
            ),
            Text("Email Address"),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<BioDataState>(context, listen: false).updateList(
                    BioDataModel(
                        name: nameController.text,
                        age: int.parse(ageController.text),
                        phone: int.parse(phoneController.text),
                        email: emailController.text));
                Navigator.pop(context);
              },
              child: Text("Enter"),
            ),
          ],
        ),
      ),
    );
  }
}
