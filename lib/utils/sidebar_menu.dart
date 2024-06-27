import 'package:chat_page/utils/contatct_view.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Padding(
      padding: const EdgeInsets.only(
        top: 35,
        left: 10,
        right: 10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Chats',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 30,
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5.0),
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.grey[300],
                  filled: true,
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  )),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 80,
              itemBuilder: (context, index) => Column(children: [
                ContactView(
                    contactName: 'Ahmed Raafat',
                    msg: 'This is the Sideba menu',
                    isRead: false),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                )
              ]),
            ),
          ),
        ],
      ),
    ));
  }
}
