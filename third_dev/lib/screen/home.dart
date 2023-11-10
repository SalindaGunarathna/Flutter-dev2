import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 41, 27, 64),
          ),
          // Container(
          //   width: 300,
          //   height: 300,
          //   color: Colors.grey,
          // ),
          // Container(
          //   width: 100,
          //   height: 100,
          //   color: const Color.fromARGB(255, 72, 34, 34),
          // ),
          // ListView.builder(
          //     padding: const EdgeInsets.all(8),
          //     itemCount: entries.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       return Container(
          //         height: 50,
          //         color: Colors.amber[colorCodes[index]],
          //         child: Center(child: Text('Entry ${entries[index]}')),
          //       );
          //     }),

          // *************************
          //   separator list view
          //***************************
          //     ListView.separated(
          //     padding: const EdgeInsets.all(8),
          //     itemCount: entries.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       return Container(
          //         height: 50,
          //         color: Colors.amber[colorCodes[index]],
          //         child: Center(child: Text('Entry ${entries[index]}')),
          //       );
          //     },
          //     separatorBuilder: (BuildContext context, index) =>const Divider() ,

          //     ),

          // ListView.separated(
          //   padding: const EdgeInsets.all(8),
          //   itemCount: entries.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     return Container(
          //       height: 50,
          //       color: Colors.amber[colorCodes[index]],
          //       child: Center(child: Text('Entry ${entries[index]}')),
          //     );
          //   },
          //   separatorBuilder: (BuildContext context, int index) =>
          //       const Divider(),
          // )
          // ********************************
          // grid view
          //*************************************** */

          // GridView.count(
          //   primary: false,
          //   padding: const EdgeInsets.all(20),
          //   crossAxisSpacing: 10,
          //   mainAxisSpacing: 10,
          //   crossAxisCount: 2,
          //   children: <Widget>[
          //     Container(
          //       padding: const EdgeInsets.all(8),
          //       color: Colors.teal[100],
          //       child: const Text("He'd have you all unravel at the"),
          //     ),
          //     Container(
          //       padding: const EdgeInsets.all(8),
          //       color: Colors.teal[200],
          //       child: const Text('Heed not the rabble'),
          //     ),
          //     Container(
          //       padding: const EdgeInsets.all(8),
          //       color: Colors.teal[300],
          //       child: const Text('Sound of screams but the'),
          //     ),
          //     Container(
          //       padding: const EdgeInsets.all(8),
          //       color: Colors.teal[400],
          //       child: const Text('Who scream'),
          //     ),
          //     Container(
          //       padding: const EdgeInsets.all(8),
          //       color: Colors.teal[500],
          //       child: const Text('Revolution is coming...'),
          //     ),
          //     Container(
          //       padding: const EdgeInsets.all(8),
          //       color: Colors.teal[600],
          //       child: const Text('Revolution, they...'),
          //     ),
          //     Container(
          //       padding: const EdgeInsets.all(8),
          //       color: Colors.teal[600],
          //       child: const Text('Revolution, they...'),
          //     ),
          //   ],
          // )

          // ***********************************
          // using CostomeScorllo view
          // ***********************************

          CustomScrollView(
            primary: false,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.green[100],
                      child: const Text("He'd have you all unravel at the"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.green[200],
                      child: const Text('Heed not the rabble'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.green[300],
                      child: const Text('Sound of screams but the'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.green[400],
                      child: const Text('Who scream'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.green[500],
                      child: const Text('Revolution is coming...'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.green[600],
                      child: const Text('Revolution, they...'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.green[300],
                      child: const Text('Sound of screams but the'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.green[400],
                      child: const Text('Who scream'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.green[500],
                      child: const Text('Revolution is coming...'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.green[600],
                      child: const Text('Revolution, they...'),
                    ),
                    ListView.separated(
                      padding: const EdgeInsets.all(8),
                      itemCount: entries.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          color: Colors.amber[colorCodes[index]],
                          child: Center(child: Text('Entry ${entries[index]}')),
                        );
                      },
                      separatorBuilder: (BuildContext context, index) =>
                          const Divider(),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
