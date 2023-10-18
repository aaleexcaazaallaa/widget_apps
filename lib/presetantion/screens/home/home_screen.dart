import 'package:flutter/material.dart';
import 'package:widget_apps/config/menu/menu_item.dart';

class HomeScreen extends StatelessWidget 
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
        appBar: AppBar
        (
          title: const Text('Flutter + Material 3'),
        ),
        body: _HomeView()
      );
  }
}

class _HomeView extends StatelessWidget
{
  const _HomeView
  ({
    super.key,
  });

  @override
  Widget build(BuildContext context) 
  {
    return ListView.builder
    (
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) 
      {
        final menuItem = appMenuItems[index];

        return Text(menuItem.title);  
      },
    );
  }
}