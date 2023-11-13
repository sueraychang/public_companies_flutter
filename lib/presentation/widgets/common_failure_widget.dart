import 'package:flutter/material.dart';
import 'package:publiccompanies/utils/build_context_extension.dart';

class CommonFailureWidget extends StatelessWidget {
  const CommonFailureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.warning_rounded,
            size: 56,
            color: Colors.orangeAccent,
          ),
          Text(context.l10n.commonFailure),
        ],
      ),
    );
  }
}
