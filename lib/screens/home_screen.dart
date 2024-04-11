import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 59, 58, 58),
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Chats',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ))
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 59, 58, 58),
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search...',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                stretchModes: [StretchMode.zoomBackground],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  // Replace this with your chat room widget
                  return ListTile(
                    leading: CircleAvatar(
                      radius: screenWidth * 0.06,
                      child: Text('${index + 1}'),
                    ),
                    title: Text(
                      'Chat Room ${index + 1}',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text('Last message in the chat room'),
                    onTap: () {},
                  );
                },
                childCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
