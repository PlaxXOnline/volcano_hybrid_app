import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:volcano_hybrid/data/workflows.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WorkflowForm extends StatelessWidget {
  const WorkflowForm({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> allWorkflows = [
      ...Workflows.defaultWorkflows,
      ...Workflows.premadeWorkflows,
    ];
    final AppLocalizations locale = AppLocalizations.of(context)!;
    final Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      height: size.height,
      child: GroupedListView<Map<String, dynamic>, String>(
        elements: allWorkflows,
        groupBy: (element) => element['group'],
        groupComparator: (value1, value2) => value1.compareTo(value2),
        itemComparator: (item1, item2) => item1['id'].compareTo(item2['id']),
        order: GroupedListOrder.ASC,
        useStickyGroupSeparators: true,
        groupSeparatorBuilder: (String group) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '$group ${locale.workflow}',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        itemBuilder: (context, element) {
          return ExpansionTile(
            title: Text(element['name']),
            subtitle: Text('${locale.steps}: ${element['payload']?.length}'),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: EasyStepper(
                  direction: Axis.vertical,
                  steps: List.generate(
                    element['payload'].length,
                    (index) => EasyStep(
                      icon: const Icon(Icons.add),
                      title: '${element['payload'][index]['type']}',
                    ),
                  ),
                  activeStep: 0,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
