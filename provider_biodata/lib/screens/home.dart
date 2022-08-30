import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_login/models/bio_data_model.dart';
import 'package:provider_login/models/bio_data_state.dart';
import 'package:provider_login/screens/add_data.dart';
import 'package:provider_login/widgets/data_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (((context, index) => DataItem(
              pername: Provider.of<BioDataState>(context).dataList[index].name,
              perage: Provider.of<BioDataState>(context).dataList[index].age,
              perphone:
                  Provider.of<BioDataState>(context).dataList[index].phone,
              peremail:
                  Provider.of<BioDataState>(context).dataList[index].name))),
          itemCount: Provider.of<BioDataState>(context).dataList.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: ((context) => AddData())),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
