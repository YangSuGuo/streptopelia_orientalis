import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<T?> showSubsectionModal<T>(
  BuildContext context, {
  required Widget content,
  required double minChildSize,
  required double maxChildSize,
  required double initialChildSize,
}) {
  return showModalBottomSheet<T>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    showDragHandle: true,
    isDismissible: true,
    builder: (_) => DraggableScrollableSheet(
      initialChildSize: initialChildSize,
      minChildSize: minChildSize,
      maxChildSize: maxChildSize,
      builder: (context, scrollController) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
        child: Column(
          children: [
            Padding(
              padding: .only(top: 12, bottom: 12),
              child: Semantics(
                button: true,
                container: true,
                onTap: () {},
                child: Center(
                  child: Container(
                    height: 3.h,
                    width: 0.08.sw,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: scrollController,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: content,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
