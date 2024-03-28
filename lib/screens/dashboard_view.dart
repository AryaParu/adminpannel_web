import 'package:adminpannel_web/screens/components/storage_info_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import 'components/filescard.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: HeaderDash(),
          ),
          Row(
            children: [
              Expanded(flex: 3, child: FilesCard()),
              Expanded(child: StorageCard()),
            ],
          )
        ],
      ),
    );
  }
}

class StorageCard extends StatelessWidget {
  const StorageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            'Storage Details',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white),
          ),
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                PieChart(
                  PieChartData(
                    sectionsSpace: 0,
                    centerSpaceRadius: 70,
                    startDegreeOffset: -90,
                    sections: paiChartSelectionData,
                  ),
                ),
                Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: defaultPadding),
                      Text(
                        "29.1",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              height: 0.5,
                            ),
                      ),
                      Text(
                        "of 128GB",
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              color: Colors.white,
                            ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Documents Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Media Files",
            amountOfFiles: "15.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Other Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Unknown",
            amountOfFiles: "1.3GB",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}

class HeaderDash extends StatelessWidget {
  const HeaderDash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(
          "Dashboard",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.white),
        )),
        Spacer(),
        Expanded(
          child: TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: secondaryColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  suffixIcon: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(defaultPadding * 0.75),
                      margin:
                          EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: SvgPicture.asset("assets/icons/Search.svg"),
                    ),
                  ))),
        ),
      ],
    );
  }
}

List<PieChartSectionData> paiChartSelectionData = [
  PieChartSectionData(
    color: primaryColor,
    value: 25,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: Color(0xFF26E5FF),
    value: 20,
    showTitle: false,
    radius: 22,
  ),
  PieChartSectionData(
    color: Color(0xFFFFCF26),
    value: 10,
    showTitle: false,
    radius: 19,
  ),
  PieChartSectionData(
    color: Color(0xFFEE2727),
    value: 15,
    showTitle: false,
    radius: 16,
  ),
  PieChartSectionData(
    color: primaryColor.withOpacity(0.1),
    value: 25,
    showTitle: false,
    radius: 13,
  ),
];
