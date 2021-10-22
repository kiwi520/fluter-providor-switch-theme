import 'package:flutter/material.dart';

class TabBarProvider with ChangeNotifier {
  int _currentIndex = 0;

  List<Widget> _list = [Screen1(), Screen2(), Screen3()];

  int get currentTab => this._currentIndex;

  Widget get currentScreen => this._list.elementAt(this._currentIndex);

  void set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  //
  @override
  void dispose() {
    super.dispose();
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Icon(
          Icons.explore_outlined,
          size: 128,
        ),
        Icon(
          Icons.info_outline,
          size: 128,
        ),
        Icon(
          Icons.explore_outlined,
          size: 128,
        ),
        Icon(
          Icons.info_outline,
          size: 128,
        ),
        Icon(
          Icons.explore_outlined,
          size: 128,
        ),
        Icon(
          Icons.info_outline,
          size: 128,
        ),
        Icon(
          Icons.explore_outlined,
          size: 128,
        ),
      ],
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'two',
          style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 66),
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'three',
          style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 66),
        ),
      ),
    );
  }
}
