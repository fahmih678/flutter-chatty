import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String status;
  final String time;
  final bool isRead;

  ChatTile(
      {this.imageUrl = '',
      this.name = 'name',
      this.status = 'unknown',
      this.time = '',
      this.isRead = false
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 55,
            height: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                status,
                style: isRead ? subtitleTextStyle : subtitleTextStyle.copyWith(color: blackColor, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: TextStyle(color: greyColor),
          )
        ],
      ),
    );
  }
}
