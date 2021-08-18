import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';
import 'package:bwa_chatty/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add, 
          size: 28,
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/me.png',
                  width: 100,
                  height: 100 ,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(
                    fontSize: 16,
                    color: lightBlueColor
                  ),
                ),
                SizedBox(
                  height: 30
                ),
                Container(
                  
                  width: double.infinity,
                  // height: 100,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(40))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend1.png',
                        name: 'Joshuer',
                        status: 'Sorry, you’re not my ty...',
                        time: 'Now',
                        isRead: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend2.png',
                        name: 'Gabriella',
                        status: 'I saw it clearly and mig...',
                        time: '2:30',
                        isRead: true,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group1.png',
                        name: 'Jakarta Fair',
                        status: 'Why does everyone ca...',
                        time: '11:11',
                        isRead: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: 'BWA Flutter',
                        status: 'Enjoy Flutter...',
                        time: '11:11',
                        isRead: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: 'Flutter Everyday',
                        status: 'Everyday is Flutter Day...',
                        time: '7:11',
                        isRead: true,
                      ),
                      
                    ],
                  ),
                )
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
