import 'package:flutter/material.dart';

class KkScreen extends StatelessWidget 
{
  const KkScreen
  ({
    super.key
  });

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text("kk Screen"),
      ),
      body: const Placeholder(),
    );
  }
}