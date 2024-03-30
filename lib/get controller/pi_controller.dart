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
      color: primaryColor.withOpacity(0.1),
      value: 25,
      showTitle: false,
      radius: 13,
    ),
  ].obs;
  List<bool> checklist = [false, false, false, false].obs;
  void add({required CloudStorageInfo data}) {
    if (data.title == 'Documents Files') {
      paiChartSelectionData.add(PieChartSectionData(
        color: primaryColor,
        value: data.percentage!.toDouble(),
        showTitle: false,
        radius: 25,
      ));
      checklist[0] = true;
    }
    if (data.title == 'Media Files') {
      paiChartSelectionData.add(PieChartSectionData(
        color: Color(0xFF26E5FF),
        value: data.percentage!.toDouble(),
        showTitle: false,
        radius: 22,
      ));
      checklist[1] = true;
    }
    if (data.title == 'Other Files') {
      paiChartSelectionData.add(PieChartSectionData(
        color: Color(0xFFFFCF26),
        value: data.percentage!.toDouble(),
        showTitle: false,
        radius: 19,
      ));
      checklist[2] = true;
    }
    if (data.title == 'Unknown') {
      paiChartSelectionData.add(PieChartSectionData(
        color: Color(0xFFEE2727),
        value: data.percentage!.toDouble(),
        showTitle: false,
        radius: 16,
      ));
      checklist[3] = true;
    }
    // if (kDebugMode) {
    //   print('data after ${checklist} list ${paiChartSelectionData}');
    // }
  }

  void remove({required CloudStorageInfo data}) {
    if (data.title == 'Documents Files') {
      paiChartSelectionData.remove(PieChartSectionData(
        color: primaryColor,
        value: data.percentage!.toDouble(),
        showTitle: false,
        radius: 25,
      ));
      checklist[0] = false;
    }
    if (data.title == 'Media Files') {
      paiChartSelectionData.remove(PieChartSectionData(
        color: Color(0xFF26E5FF),
        value: data.percentage!.toDouble(),
        showTitle: false,
        radius: 22,
      ));
      checklist[1] = false;
    }
    if (data.title == 'Other Files') {
      paiChartSelectionData.remove(PieChartSectionData(
        color: Color(0xFFFFCF26),
        value: data.percentage!.toDouble(),
        showTitle: false,
        radius: 19,
      ));
      checklist[2] = false;
    }
    if (data.title == 'Unknown') {
      paiChartSelectionData.remove(PieChartSectionData(
        color: Color(0xFFEE2727),
        value: data.percentage!.toDouble(),
        showTitle: false,
        radius: 16,
      ));
      checklist[3] = false;
    }
  }
}
