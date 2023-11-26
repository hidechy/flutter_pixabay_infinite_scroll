import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/search_result/search_result_notifier.dart';
import 'search_result_screen.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  String searchQuery = '';

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('画像スクロール検索')),
      body: Row(
        children: [
          ///

          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: TextField(
              onChanged: (value) => searchQuery = value,
              decoration: const InputDecoration(hintText: '検索する画像'),
            ),
          ),

          ///

          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              return SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: ElevatedButton(
                  onPressed: () {
                    ref.watch(searchQeuryProvider.notifier).state = searchQuery;
                    ref.read(pageProvider.notifier).state = 1;

                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) => const SearchResultScreen(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1, 0);
                          const end = Offset.zero;
                          final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeInOut));
                          final offsetAnimation = animation.drive(tween);
                          return SlideTransition(position: offsetAnimation, child: child);
                        },
                      ),
                    );
                  },
                  child: const Text('検索'),
                ),
              );
            },
          ),

          ///
        ],
      ),
    );
  }
}
