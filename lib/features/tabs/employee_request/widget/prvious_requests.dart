import 'package:flutter/material.dart';
import 'package:hr_system/features/tabs/employee_request/widget/type_request.dart';

class PreviousRequests extends StatelessWidget {
  final String title;
  final String dateFrom;
  final String dateTo;
  final String status;

  const PreviousRequests({
    super.key,
    required this.title,
    required this.dateFrom,
    required this.dateTo,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TypeRequest(
          title: title,
          dateFrom: dateFrom,
          dateTo: dateTo,
          status: status,
        ),
      ],
    );
  }
}
