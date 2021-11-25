import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//Create Your Own Template Contrainer
class MoneyBox extends StatelessWidget {
  String title;//ชื่อสกุลเงิน currency
  double amount;//จำนวนเงิน
  Color color;//สีกล่อง
  double size;//ขนาด
  String currency;//สกุล

  MoneyBox(this.title, this.amount, this.color, this.size, this.currency);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
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
              '${NumberFormat("#,###,###.##").format(amount)}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Text(
            currency,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
