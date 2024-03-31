import 'package:flutter/material.dart';
import '../constants.dart';

class CloudStorageInfo {
  final String? svgSrc, title;
  final int? numOfFiles, percentage;
  final Color? color;
  final double? totalStorage;
  bool active = false;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
    required this.active,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Documents",
    numOfFiles: 1328,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: 1.9,
    color: primaryColor,
    percentage: 35,
    active: false,
  ),
  CloudStorageInfo(
    title: "Media",
    numOfFiles: 1328,
    svgSrc: "assets/icons/media_file.svg",
    totalStorage: 2.9,
    color: Color(0xFFFFA113),
    percentage: 35,
    active: false,
  ),
  CloudStorageInfo(
    title: "One Drive",
    numOfFiles: 1328,
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: 1,
    color: Color(0xFFA4CDFF),
    percentage: 10,
    active: false,
  ),
  CloudStorageInfo(
    title: "Sound",
    numOfFiles: 5328,
    svgSrc: "assets/icons/sound_file.svg",
    totalStorage: 7.3,
    color: Color(0xFF007EE5),
    percentage: 78,
    active: false,
  ),
];
