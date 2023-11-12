import 'package:flutter/material.dart';

class CompanyInfoItem extends StatelessWidget {
  final String title;
  final String content;
  const CompanyInfoItem(
      {super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(color: Colors.black45)),
        Text(content, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
