import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  final String contactName;
  final String msg;
  final bool isRead;

  const ContactView(
      {super.key,
      required this.contactName,
      required this.msg,
      required this.isRead});

  @override
  Widget build(BuildContext context) {
    return
       ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.person),
          backgroundColor: Colors.grey,
        ),
        title: Text(
          '$contactName',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          '$msg',
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Column(
          children: [
            const Text('2:03 Pm'),
            const SizedBox(
              height: 10,
            ),
            (isRead)
                ? const SizedBox()
                : Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                  ),
          ],
        ),
    );
  }
}
