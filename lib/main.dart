import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple,
  ];

  void _decrementcounter() {
    setState(() {
      _counter > 0 ? _counter-- : 0;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Scrollbar(
      child: ListView.builder(itemBuilder: (BuildContext context,index){
        return ListTile(
          title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              color: const Color.fromARGB(255, 118, 212, 121),
              // height:300,
              padding: const EdgeInsets.symmetric(
                  horizontal: 30.0, vertical: 10.0), //padding
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0), //margin
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonBar(
                      children: <Widget>[
                        ElevatedButton(
                            onPressed: () => _incrementCounter(),
                            child: const Icon(Icons.wallet)),
                      ],
                    ),
                    const Icon(
                      Icons.home_filled,
                      color: Colors.black,
                    ),
                    const Icon(
                      Icons.fire_extinguisher,
                      color: Colors.black,
                    ),
                    const Icon(
                      Icons.fire_extinguisher,
                      color: Colors.black,
                    ),
                  ]),
            ),
            Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 100,
                      padding: const EdgeInsets.all(20.0),
                      color: Colors.black,
                      child: Text("Red",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.red[300],
                            fontSize: 20,
                          )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 100,
                      padding: const EdgeInsets.all(20.0),
                      color: Colors.blue,
                      child: const Text("black",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 100,
                      padding: const EdgeInsets.all(20.0),
                      color: Colors.red[300],
                      child: const Text("blue",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 20,
                          )),
                    ),
                  ),
                ]),
            Row(children: [
              Expanded(
                // ignore: sized_box_for_whitespace
                child: Container(
                  height: 500,
                  width: 100,
                  child: PageView.builder(
                      itemCount: colors.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (
                        BuildContext context, int index) {
                          return Container(
                            color:colors[index],
                            child:Center(child: Text(
                              'Page ${index +1}',
                              style: const TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold),
                            ))
                          );
                      }),
                ),
              ),
            ]),
            const Text(
              'You have pushed the button this many times:',
            ),
            _counter > 0
                ? Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  )
                : const Text("0"),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              ElevatedButton(
                  onPressed: _incrementCounter, child: const Text("increase")),
              ElevatedButton(
                onPressed: _counter > 0 ? _decrementcounter : null,
                child: const Text("decrease"),
              )
            ])
          ],
        ),

        );
      }),
        
      ),

      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 118, 212, 121),
        // height:300,
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),

        child: const Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text("Hello world")),
              Icon(
                Icons.home_filled,
                color: Colors.black,
              ),
              Icon(
                Icons.fire_extinguisher,
                color: Colors.black,
              ),
              Icon(
                Icons.fire_extinguisher,
                color: Colors.black,
              ),
            ]),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
