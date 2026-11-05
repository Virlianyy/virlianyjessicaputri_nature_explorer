import 'package:flutter/material.dart';

void main() =>
  runApp(const NatureExplorer());

const List<String> Images = [
  'https://picsum.photos/id/10/300/200',
  'https://picsum.photos/id/29/300/200',
  'https://picsum.photos/id/37/300/200',
];

const String bigImage = 'https://picsum.photos/id/10/300/200';

const String placeDescription =
    'Discover',
    'Explore',
    'Reconnect',
    ' ';

class NatureExplorerApp extends StatelessWidget {
  const NatureExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nature Explorer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: green),
        useMaterial3: true,
      ),
      home: const NatureExplorerScreen(),
    );
  }
}

class NatureExplorerScreen extends StatelessWidget {
  const NatureExplorerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = (screenWidth - 32) / 3-8;
    final itemHeight = itemWidth * 1.5;

    return Scaffold(
      body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: SizedBox(
                width: 200,
                child: Text(
                  'Nature Explorer',
                  
                ),
              ),
            )
          ],
        ),
      ),
    )
  }
}


