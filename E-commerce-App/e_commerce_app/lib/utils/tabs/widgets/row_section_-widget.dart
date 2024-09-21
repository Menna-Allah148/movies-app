import 'package:flutter/material.dart';

class RowSectionWidget extends StatelessWidget {
  final String name;
  
  RowSectionWidget({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0), // Customize the padding as needed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          InkWell(
            onTap: () {
              // Define the action for the 'View all' button
            },
            child: Text(
              'View all',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
