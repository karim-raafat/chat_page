import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final bool isRead;
  final String time;
  final String msg;
  final bool sentByMe;

  const ChatBubble(
      {super.key, required this.isRead, required this.time, required this.msg, required this.sentByMe});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: (sentByMe)? Colors.lightGreen[200] : Colors.white ,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
                      child: Text(
                        '$msg',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        softWrap: true,

                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 5,
                      top: 15
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '$time',
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.done_all,
                          color: (isRead) ? Colors.blue : Colors.grey,
                          size: 12,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
