import 'package:bwa_chatty/theme.dart';
// import 'package:bwa_chatty/widgets/msg_tile.dart';
import 'package:flutter/material.dart';

class MsgPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                header(),
                body()
              ],
            )),
      ),
    );
  }

  Widget receiverBubble({
    String imageUrl = '',
    String msg = '',
    String time = '',
  }) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              imageUrl,
              height: 40,
              width: 40,
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              decoration: BoxDecoration(
                  color: receiveColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(msg),
                  SizedBox(
                    height: 5,
                  ),
                  Text(time)
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget senderBubble({
    String imageUrl = '',
    String msg = '',
    String time = '',
  }) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: senderColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(msg),
                  SizedBox(
                    height: 5,
                  ),
                  Text(time)
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Image.asset(
              imageUrl,
              height: 40,
              width: 40,
            ),
          ],
        ),
      ],
    );
  }

  Widget header() {
    return Container(
      child: Row(children: [
        Icon(
          Icons.navigate_before_rounded,
          size: 30,
        ),
        Image.asset(
          'assets/images/group1.png',
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
              'Jakarta Fair',
              style: titleTextStyle,
            ),
            Text(
              '149000 Members',
            )
          ],
        ),
        Spacer(),
        Image.asset(
          'assets/images/call_btn.png',
          height: 55,
          width: 55,
        ),
      ]),
    );
  }

  Widget body() {
    return Expanded(
        child: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        receiverBubble(
          imageUrl: 'assets/images/friend1.png',
          msg: 'How are you guys?',
          time: '2:30',
        ),
        senderBubble(
          imageUrl: 'assets/images/friend2.png',
          msg: 'Find here :P',
          time: '2:31',
        ),
        receiverBubble(
          imageUrl: 'assets/images/friend3.png',
          msg: 'Thinking about how to deal \nwith this client from hell...',
          time: '2:33',
        ),
        senderBubble(
          imageUrl: 'assets/images/friend2.png',
          msg: 'Love them',
          time: '2:35',
        ),
      ],
    ));
  }

  Widget chatInput() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: receiveColor, 
          borderRadius: BorderRadius.circular(75)
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "type message...",
                    hintStyle: TextStyle(color: greyColor),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.send,
                color: whiteColor,
                size: 18,
              ),
              backgroundColor: blueColor,
              elevation: 0,
            )
          ],
        ),
      ),
    );
  }
}
