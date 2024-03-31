import 'package:adminpannel_web/constants.dart';
import 'package:adminpannel_web/models/Recentfiles.dart';
import 'package:adminpannel_web/screens/new_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class RecentFilesInfo extends StatelessWidget {
  const RecentFilesInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: demoRecentFiles.length,
      itemBuilder: (context, index) {
        final info = demoRecentFiles[index];
        return Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              InkWell(
                onTap: () => Get.to(FileScreen(file: info)),
                child: Row(
                  children: [
                    SizedBox(
                        height: 40,
                        width: 40,
                        child: SvgPicture.asset(info.icon)),
                    Text(
                      '\t\t' + info.title,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      info.date,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      info.size,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Divider()
            ],
          ),
        );
      },
    );
  }
}
