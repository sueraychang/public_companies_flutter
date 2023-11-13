import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:publiccompanies/domain/cubit/collections_cubit.dart';
import 'package:publiccompanies/presentation/collection_access_dialog.dart';
import 'package:publiccompanies/utils/build_context_extension.dart';
import 'package:publiccompanies/utils/go_router.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.bottomNavigationItemCollectionTitle),
      ),
      body: Builder(builder: (context) {
        final collectionsCubit = context.watch<CollectionsCubit>();
        if (collectionsCubit.state.isNotEmpty) {
          return ListView.builder(
            itemCount: collectionsCubit.state.length,
            itemBuilder: (context, index) {
              final collection = collectionsCubit.state[index];
              return Slidable(
                key: ValueKey(index),
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  extentRatio: 0.25,
                  children: [
                    SlidableAction(
                      onPressed: (_) {
                        showCollectionDeleteDialog(
                          context: context,
                          company: collection,
                        );
                      },
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: context.l10n.commonDelete,
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    context.push(
                      ROUTE_PATH_COMPANY.replaceFirst(
                          ':companyCode', collection.code),
                    );
                  },
                  child: ListTile(
                    title:
                        Text('${collection.code} ${collection.abbreviation}'),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 12),
                  ),
                ),
              );
            },
          );
        } else {
          return Center(
            child: Text(context.l10n.emptyCollectionHint),
          );
        }
      }),
    );
  }
}
