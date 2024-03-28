import 'package:adminpannel_web/models/Myfiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:adminpannel_web/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilesInfo extends StatelessWidget {
  const FilesInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding,
          childAspectRatio: 1,
        ),
        shrinkWrap: true,
        itemCount: demoMyFiles.length,
        itemBuilder: ((context, index) {
          final info = demoMyFiles[index];
          return Container(
              padding: EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(defaultPadding * 0.75),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: info.color!.withOpacity(0.1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: SvgPicture.asset(
                            info.svgSrc!,
                            colorFilter: ColorFilter.mode(
                                info.color ?? Colors.black, BlendMode.srcIn),
                          ),
                        ),
                        Icon(Icons.more_vert, color: Colors.white54)
                      ],
                    ),
                    Text(
                      info.title!,
                      style: TextStyle(color: Colors.white54),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    ProgressLine(
                      color: info.color,
                      percentage: info.percentage,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${info.numOfFiles} Files",
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(color: Colors.white70),
                        ),
                        Text(
                          info.totalStorage!,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    )
                  ]));
        }));
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    this.color = primaryColor,
    required this.percentage,
  }) : super(key: key);

  final Color? color;
  final int? percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color!.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage! / 100),
            height: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}
