import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPage extends ConsumerWidget {
  const AddPage({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        CupertinoPageScaffold(
          child: CustomScrollView(
            controller: scrollController,
            primary: false,
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                  return Container(alignment: .center, height: 100, child: Text('$index'));
                }, childCount: 20),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 50,
            color: CupertinoColors.activeBlue,
            child: Center(child: Text('Add Page')),
          ),
        ),
      ],
    );
  }
}
