import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_apps/config/menu/menu_item.dart';
import 'package:widget_apps/presetantion/screens/buttons/buttons_screen.dart';
import 'package:widget_apps/presetantion/screens/cards/cards_screen.dart';
import 'package:widget_apps/presetantion/screens/kk/kk_screen.dart';

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

  @override
  Widget build(BuildContext context) 
  {
    return ListView.builder
    (
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) 
      {
        final menuItem = appMenuItems[index];

        return _CustomListTile(menuItem: menuItem);  
      },
    );
  }
}

class _CustomListTile extends StatelessWidget 
{
  const _CustomListTile
  ({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) 
  {
    final colors = Theme.of(context).colorScheme;
    return ListTile
    (
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      onTap:()
      {
        //if(menuItem.link == "/buttons")
        //{
         //Navigator.of(context).push
          //(
           // MaterialPageRoute
            //(
             //builder: (context) => const ButtonsScreen(),
            //),
          //);
          //Navigator.pushNamed(context, menuItem.link);
        //}

        //else if(menuItem.link == "/cards")
        //{
          //Navigator.of(context).push
          //(
            //MaterialPageRoute
            //(
              //builder: (context) => const CardsScreen(),
            //),
          //);
          //Navigator.pushNamed(context, menuItem.link);
        //}

        //else if(menuItem.link == "/kk")
        //{
          //Navigator.of(context).push
          //(
            //MaterialPageRoute
            //(
              //builder: (context) => const KkScreen(),
            //),
          //);
          //Navigator.pushNamed(context, menuItem.link);
        //}
        
        context.push(menuItem.link);
      },
    );
  }
}