import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:publiccompanies/domain/cubit/collections_cubit.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/utils/build_context_extension.dart';

Future<bool?> showCollectionAddDialog({
  required BuildContext context,
  required Company company,
}) async {
  final result = await showDialog(
    context: context,
    builder: (_) {
      return CupertinoAlertDialog(
        title: Text(context.l10n.addToCollectionTitle),
        content: Text(context.l10n.addToCollectionDescription(
            '${company.code} ${company.abbreviation}')),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text(
              context.l10n.commonCancel,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoDialogAction(
            isDefaultAction: true,
            child: Text(
              context.l10n.commonAdd,
            ),
            onPressed: () {
              context
                  .read<CollectionsCubit>()
                  .addToCollections(company)
                  .then((value) => Navigator.pop(context));
            },
          ),
        ],
      );
    },
  );
  return result;
}

Future<bool?> showCollectionDeleteDialog({
  required BuildContext context,
  required Company company,
}) async {
  final result = await showDialog(
    context: context,
    builder: (_) {
      return CupertinoAlertDialog(
        title: Text(context.l10n.deleteFromCollectionTitle),
        content: Text(context.l10n.deleteFromCollectionDescription(
            '${company.code} ${company.abbreviation}')),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text(
              context.l10n.commonCancel,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            child: Text(
              context.l10n.commonDelete,
            ),
            onPressed: () {
              context
                  .read<CollectionsCubit>()
                  .deleteFromCollections(company.code)
                  .then((value) => Navigator.pop(context));
            },
          ),
        ],
      );
    },
  );
  return result;
}
