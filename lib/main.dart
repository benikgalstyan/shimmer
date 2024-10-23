import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'placeholders.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Shimmer',
        routes: {
          'loading': (_) => const LoadingListPage(),
        },
        home: const MyHomePage(),
      );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Shimmer'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              ListTile(
                title: const Text('Loading List'),
                onTap: () => Navigator.of(context).pushNamed('loading'),
              ),
            ],
          ),
        ),
      );
}

class LoadingListPage extends StatelessWidget {
  const LoadingListPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Loading List'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Shimmer.fromColors(
                baseColor: const Color(0xFFCFCFCF),
                highlightColor: Colors.grey.shade100,
                enabled: true,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    BannerPlaceholder(),
                  ],
                )),
            const SizedBox(height: 16),
            Shimmer.fromColors(
                baseColor: const Color(0xFFEDEDED),
                highlightColor: Colors.grey.shade100,
                enabled: true,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    BannerPlaceholder2(),
                    SizedBox(height: 10),
                    BannerPlaceholder3(),
                    SizedBox(height: 10),
                    BannerPlaceholder4(),
                    SizedBox(height: 10),
                    BannerPlaceholder5(),
                  ],
                )),
          ],
        ),
      ));
}
