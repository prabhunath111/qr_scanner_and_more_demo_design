import 'package:flutter/material.dart';

class BookingSummaryList extends StatelessWidget {
  const BookingSummaryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            Icons.charging_station,
            color: Colors.black,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'hhakjhkjk'
              ),
              Text(
                'qwerty'
              ),
            ],
          )
        ],
      ),
    );
  }
}
