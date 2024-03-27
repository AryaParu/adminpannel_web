import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilesCard extends StatelessWidget {
  const FilesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'MyFiles',
                  style: Theme.of(context).textTheme.titleLarge,
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
          Row(
            children: [
              RowCards(
                title: 'Doc',
                svg: 'assets/icons/doc_file.svg',
              ),
              RowCards(
                title: 'Doc',
                svg: 'assets/icons/doc_file.svg',
              ),
              RowCards(
                title: 'Doc',
                svg: 'assets/icons/doc_file.svg',
              ),
              RowCards(
                title: 'Doc',
                svg: 'assets/icons/doc_file.svg',
              ),
            ],
          )
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
