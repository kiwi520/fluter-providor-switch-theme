import 'package:flutter/material.dart';
import 'package:page_structure/app/prividers/theme_provider.dart';
import 'package:page_structure/app/widget/change_theme_button_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final text = themeProvider.isDarkMode ? 'dark' : 'light';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('title'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          ChangeThemeButtonWidget()
        ],
      ),
      body: Center(
        child: Text(
          "hello $text!",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
      // color: Colors.red,
    );
  }
}
