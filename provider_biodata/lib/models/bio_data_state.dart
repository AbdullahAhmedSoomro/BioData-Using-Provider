import 'package:flutter/material.dart';
import 'bio_data_model.dart';

class BioDataState extends ChangeNotifier {
  List<BioDataModel> dataList = [];

  updateList(BioDataModel newEntry) {
    dataList.add(newEntry);
    notifyListeners();
  }
}
