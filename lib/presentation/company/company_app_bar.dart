import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:publiccompanies/domain/cubit/collections_cubit.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/presentation/collection_access_dialog.dart';
import 'package:sliver_app_bar_builder/sliver_app_bar_builder.dart';

class CompanyAppBar extends StatelessWidget {
  final Industry industry;
  final Company company;
  const CompanyAppBar({
    super.key,
    required this.industry,
    required this.company,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBarBuilder(
      barHeight: 56,
      pinned: true,
      backgroundColorAll: Colors.white,
      leadingActions: [
        (context, expandRatio, barHeight, overlapsContent) {
          return SizedBox(
            height: barHeight,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                AnimatedOpacity(
                  opacity: 1 - expandRatio,
                  duration: Duration.zero,
                  child: Text(industry.name),
                ),
              ],
            ),
          );
        }
      ],
      initialContentHeight: 56,
      contentBuilder: (context, expandRatio, contentHeight, centerPadding,
          overlapsContent) {
        return Container(
          alignment: Alignment.centerLeft,
          height: 56,
          transform:
              Matrix4.translationValues(16 + (1 - expandRatio) * 40, 0, 0),
          child: Text(
            '${company.code} ${company.abbreviation}',
            style: TextStyle(
              fontSize: 22 + expandRatio * 10,
              color: Theme.of(context).colorScheme.onBackground,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
      trailingActions: [
        (context, expandRatio, barHeight, overlapsContent) {
          return Builder(builder: (context) {
            final collectionsCubit = context.watch<CollectionsCubit>();
            final isInCollection =
                collectionsCubit.isInCollections(company.code);
            return IconButton(
              onPressed: () {
                if (isInCollection) {
                  showCollectionDeleteDialog(
                      context: context, company: company);
                } else {
                  showCollectionAddDialog(context: context, company: company);
                }
              },
              icon: isInCollection
                  ? Icon(
                      Icons.star,
                      color: Theme.of(context).colorScheme.primary,
                    )
                  : const Icon(Icons.star_border_outlined),
            );
          });
        },
      ],
    );
  }
}
