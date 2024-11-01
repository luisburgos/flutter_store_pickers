import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/app/app_routes.dart';
import 'package:flutter_store_pickers/showcase/layout.dart';
import 'package:flutter_store_pickers/showcase/models.dart';
import 'package:flutter_store_pickers/showcase/stores/widgets.dart';

class ShowcaseView extends StatelessWidget {
  const ShowcaseView({required this.data, super.key});

  final ShowcaseData data;

  @override
  Widget build(BuildContext context) {
    return ShowcaseViewLayout(
      title: StoresViewTitle(data.title),
      description: StoresViewDescription(data.description),
      stores: data.groups.values
          .map(
            (group) => ShowcaseGroupView(
              data: group,
              onItemPressed: context.navigateToDetails,
            ),
          )
          .toList(),
    );
  }
}
