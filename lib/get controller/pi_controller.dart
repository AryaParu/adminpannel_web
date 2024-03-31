import 'package:adminpannel_web/models/Myfiles.dart';
import 'package:adminpannel_web/screens/components/storage_info_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class Picontroller extends GetxController {
  List<PieChartSectionData> paiChartSelectionData = [
    PieChartSectionData(
      title: 'Outter',
      color: primaryColor.withOpacity(0.1),
      value: 25,
      showTitle: false,
      radius: 13,
    ),
  ].obs;
  List<bool> checklist = [false, false, false, false].obs;
  RxDouble totalsorageuserd = 0.0.obs;
  void add({required CloudStorageInfo data}) {
    if (data.title == 'Documents') {
      paiChartSelectionData.add(PieChartSectionData(
        title: 'Documents',
        color: primaryColor,
        value: data.percentage!.toDouble(),
        showTitle: false,
        radius: 25,
      ));
      updateChecklist(data.title!, true, data.totalStorage!);
    }
    if (data.title == 'Media') {
      paiChartSelectionData.add(PieChartSectionData(
        title: 'Media',
        color: Color(0xFF26E5FF),
        value: data.percentage!.toDouble(),
        showTitle: false,
        radius: 22,
      ));
      updateChecklist(data.title!, true, data.totalStorage!);
    }
    if (data.title == 'One Drive') {
      paiChartSelectionData.add(PieChartSectionData(
        title: 'One Drive',
        color: Color(0xFFFFCF26),
        value: data.percentage!.toDouble(),
        showTitle: false,
        radius: 19,
      ));
      updateChecklist(data.title!, true, data.totalStorage!);
    }
    if (data.title == 'Sound') {
      paiChartSelectionData.add(PieChartSectionData(
        title: 'Sound',
        color: Color(0xFFEE2727),
        value: data.percentage!.toDouble(),
        showTitle: false,
        radius: 16,
      ));
      updateChecklist(data.title!, true, data.totalStorage!);
    }

    if (kDebugMode) {
      print(
          'data after add $checklist list ${paiChartSelectionData.map((e) => e)}');
    }
  }

  void remove({required CloudStorageInfo data}) {
    for (int i = 0; i < paiChartSelectionData.length; i++) {
      if (paiChartSelectionData[i].title == data.title) {
        paiChartSelectionData.removeAt(i);
        updateChecklist(data.title!, false, data.totalStorage!);
        break;
      }
    }

    if (kDebugMode) {
      print(
          'data after remove $checklist list ${paiChartSelectionData.map((e) => e)}');
    }
  }

  void updateChecklist(String title, bool value, double storage) {
    switch (title) {
      case 'Documents':
        checklist[0] = value;

        break;
      case 'Media':
        checklist[1] = value;
        break;
      case 'One Drive':
        checklist[2] = value;
        break;
      case 'Sound':
        checklist[3] = value;
        break;
    }
    if (value == true) {
      totalsorageuserd = totalsorageuserd + storage as RxDouble;
    } else if (value == false) {
      totalsorageuserd = totalsorageuserd - storage as RxDouble;
    }
  }
}
