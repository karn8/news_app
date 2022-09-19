import 'package:flutter/material.dart';

class TabHeader extends StatelessWidget {
  const TabHeader({ Key? key, required this.headerName, required this.isSelected }) : super(key: key);

  final String headerName;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Text(
        headerName,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: isSelected? Colors.purple[300] : Colors.grey[700],
        )
        ),
    );
  }
}