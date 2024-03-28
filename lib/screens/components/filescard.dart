import 'package:adminpannel_web/constants.dart';
import 'package:adminpannel_web/models/Myfiles.dart';
import 'package:adminpannel_web/screens/components/recentfileinfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'filesinfo.dart';

class FilesCard extends StatelessWidget {
  const FilesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'MyFiles',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  Spacer(),
                  ElevatedButton.icon(
                    style: ButtonStyle(),
                    onPressed: () {},
                    label: Text('Add New'),
                    icon: Icon(Icons.add),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Card(child: FilesInfo()),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recent Files",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colors.white60),
                ),
                Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'File Name',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.white),
                          ),
                          Spacer(),
                          Text(
                            'Date',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.white),
                          ),
                          Spacer(),
                          Text(
                            'Size',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Divider()
                    ],
                  ),
                ),
                RecentFilesInfo()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RowCards extends StatelessWidget {
  const RowCards({
    super.key,
    required this.svg,
    required this.title,
  });
  final String svg, title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Card(
      child: Column(children: [
        SvgPicture.asset(svg),
        SizedBox(
          height: 10,
        ),
        Text(title)
      ]),
    ));
  }
}
