import 'package:flutter/material.dart';
import 'package:page_structure/app/prividers/tabbar_provider.dart';
import 'package:page_structure/app/prividers/theme_provider.dart';
import 'package:page_structure/app/themes/app_theme.dart';
import 'package:page_structure/app/widget/change_theme_button_widget.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  static const title = 'Light & Dark Theme';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider()),
        ChangeNotifierProvider<TabBarProvider>(create: (_) => TabBarProvider()),
      ],
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        final tabBarProvider =
            Provider.of<TabBarProvider>(context, listen: true);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          themeMode: themeProvider.themeMode,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          home: DefaultTabController(
            length: 7,
            child: Scaffold(
              appBar: AppBar(
                // backgroundColor: Colors.orange,
                title: Text('Welcome',
                  style: TextStyle(
                    color: Color(0xFF2D2D2F),
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                ),
                backgroundColor: Colors.white,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Color(0xFF2D2D2F),
                  onPressed: () {},
                ),
                actions: [ChangeThemeButtonWidget()],
                bottom: TabBar(
                  isScrollable: true,
                  padding: EdgeInsets.only(left: 20),
                  tabs: [
                    Tab(
                      child: Text(
                          'Latest',
                          style: TextStyle(
                            color:Color(0XFF2967FF),
                          )
                      ),
                    ),
                    Tab(
                      text: 'World',
                    ),
                    Tab(
                      text: 'Business',
                    ),
                    Tab(
                      text: 'Fourth',
                    ),
                    Tab(
                      text: 'Lifestyle',
                    ),
                    Tab(
                      text: 'Technology',
                    ),
                    Tab(
                      text: 'Sports',
                    )
                  ],
                ),
              ),
              body: tabBarProvider.currentScreen,
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: tabBarProvider.currentTab,
                onTap: (int index) {
                  tabBarProvider.currentIndex = index;
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.explicit_outlined), label: '发现'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.add_a_photo_outlined), label: '添加'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_circle_outlined), label: '添加'),
                ],
              ),
            ),
          ),
        );
      },
    );
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        // final text = themeProvider.isDarkMode ? 'darkTheme' : 'lightTheme';
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          themeMode: themeProvider.themeMode,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                // backgroundColor: Colors.orange,
                title: Text('title'),
                leading: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
                actions: [ChangeThemeButtonWidget()],
                bottom: TabBar(
                  tabs: [
                    Tab(
                      text: '最近',
                    ),
                    Tab(
                      text: '热门',
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  Icon(
                    Icons.explore_outlined,
                    size: 128,
                  ),
                  Icon(
                    Icons.info_outline,
                    size: 128,
                  ),
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.explicit_outlined), label: '发现'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.add_a_photo_outlined), label: '添加'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_circle_outlined), label: '添加'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
