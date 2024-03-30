import 'package:adminpannel_web/models/Myfiles.dart';
import 'package:adminpannel_web/models/Recentfiles.dart';

class UserModel {
  final RecentFile recentFile;
  final CloudStorageInfo cloudStorageInfo;
  final String name;
  final String icon;
  UserModel({
    required this.cloudStorageInfo,
    required this.recentFile,
    required this.name,
    required this.icon,
  });
}
