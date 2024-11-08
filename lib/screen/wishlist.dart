import 'package:flutter/material.dart';

import '../res/global.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: const Text(
            "Wish List Page",
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: wishList.isEmpty
            ? Center(
                child: Text("No Favorite Yet!"),
              )
            : ListView.builder(
                itemCount: wishList.length,
                itemBuilder: (context, index) {
                  final item = wishList[index];
                  return Card(
                    margin: EdgeInsets.all(10),
                    child: ListTile(
                      leading: Image.network(item['image']),
                      title: Text(item['quote']),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            wishList.removeAt(index);
                          });
                        },
                      ),
                    ),
                  );
                },
              ));
  }
}
