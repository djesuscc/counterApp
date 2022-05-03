import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  final _styleText = const TextStyle(fontSize: 25);
  late int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Number of tabs:', style: _styleText),
            Text('$_count', style: _styleText)
          ],
        ),
      ),
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        const SizedBox(
          width: 30,
        ),
        FloatingActionButton(
            onPressed: _restart, child: const Icon(Icons.exposure_zero)),
        const Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
            onPressed: _subtract, child: const Icon(Icons.remove)),
        const SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(onPressed: _add, child: const Icon(Icons.add)),
      ],
    );
  }

  void _add() {
    setState(() => _count++);
  }

  void _subtract() {
    setState(() => _count--);
  }

  void _restart() {
    setState(() => _count = 0);
  }
}
