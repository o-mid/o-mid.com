import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:omid_site/src/features/personal_info/presentation/personal_info_desktop.dart';
import 'package:omid_site/src/features/personal_info/presentation/personal_info_mobile.dart';
import 'package:omid_site/src/features/personal_info/presentation/personal_info_tablet.dart';
import 'package:omid_site/src/common/widgets/responsive.dart';

class PersonalInfoSection extends ConsumerWidget {
  const PersonalInfoSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Responsive(
      mobile: PersonalInfoMobile(),
      tablet: PersonalInfoTablet(),
      desktop: PersonalInfoDesktop(),
    );
  }
}
