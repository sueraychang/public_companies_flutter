import 'package:flutter/material.dart';
import 'package:publiccompanies/utils/common.dart';

class CompanyNameItem extends StatelessWidget {
  final String title;
  final String name;
  final String website;
  const CompanyNameItem({
    super.key,
    required this.title,
    required this.name,
    required this.website,
  });

  @override
  Widget build(BuildContext context) {
    final isValid = isValidUrl(website);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(color: Colors.black45)),
        InkWell(
          onTap: isValid
              ? () {
                  launchWebsite(website);
                }
              : null,
          child: Row(
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: isValid ? Colors.blueAccent : null
                ),
              ),
              if (isValid)
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.public),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
