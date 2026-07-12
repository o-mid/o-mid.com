import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:omid_site/src/features/about/presentation/about_desktop.dart';
import 'package:omid_site/src/common/widgets/responsive.dart';

class AboutSection extends ConsumerWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Responsive(
      desktop: AboutDesktop(),
    );
  }
}
