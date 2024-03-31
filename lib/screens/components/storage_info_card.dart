import 'package:adminpannel_web/models/Myfiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../../get controller/pi_controller.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key? key,
    required this.info,
    required this.amountOfFiles,
    required this.index,
  }) : super(key: key);

  final CloudStorageInfo info;
  final int index;
  final String amountOfFiles;

  @override
  Widget build(BuildContext context) {
    final Picontroller c = Get.put(Picontroller());
    return Container(
      margin: const EdgeInsets.all(defaultPadding),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultPadding),
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            child: Obx(() => Checkbox(
                value: c.checklist[index],
                onChanged: (value) {
                  if (value != null) {
                    if (value) {
                      c.add(data: info);
                    } else {
                      c.remove(data: info);
                    }
                  }
                })),
          ),
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(info.svgSrc!),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    info.title!,
                    style: const TextStyle(color: Colors.white70),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${info.numOfFiles} Files",
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          Text(
            "${info.totalStorage.toString()}GB",
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(color: Colors.white70),
          )
        ],
      ),
    );
  }
}
