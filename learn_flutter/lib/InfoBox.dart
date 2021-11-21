import 'package:flutter/material.dart';

//Create Your Own Template Contrainer
class InfoBox extends StatelessWidget {

  String title;
  double amount;
  Color color;
  double size;

  InfoBox(this.title,this.amount,this.color,this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      height: size,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              amount.toString(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
