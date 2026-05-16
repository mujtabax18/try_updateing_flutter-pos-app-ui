import 'package:flutter/material.dart';

import '../../../core/constants/app_dimensions.dart';
import '../../../core/theme/app_colors.dart';
import '../../../placeholder/pages/placeholder_page.dart';
import '../../../pos/pages/pos_home_page.dart';
import '../models/navigation_item_model.dart';
import '../widgets/side_menu.dart';

class MainShellPage extends StatefulWidget {
  const MainShellPage({super.key});

  @override
  State<MainShellPage> createState() => _MainShellPageState();
}

class _MainShellPageState extends State<MainShellPage> {
  String activePage = 'Home';

  final List<NavigationItemModel> navigationItems = const [
    NavigationItemModel(
      title: 'Home',
      icon: Icons.rocket_sharp,
    ),
    NavigationItemModel(
      title: 'Menu',
      icon: Icons.format_list_bulleted_rounded,
    ),
    NavigationItemModel(
      title: 'History',
      icon: Icons.history_toggle_off_rounded,
    ),
    NavigationItemModel(
      title: 'Promos',
      icon: Icons.discount_outlined,
    ),
    NavigationItemModel(
      title: 'Settings',
      icon: Icons.sports_soccer_outlined,
    ),
  ];

  Widget _buildPage() {
    switch (activePage) {
      case 'Home':
        return const PosHomePage();

      case 'Menu':
      case 'History':
      case 'Promos':
      case 'Settings':
        return PlaceholderPage(title: activePage);

      default:
        return const PosHomePage();
    }
  }

  void _setPage(String page) {
    setState(() {
      activePage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: Row(
        children: [
          SizedBox(
            width: AppDimensions.sidebarWidth,
            height: MediaQuery.sizeOf(context).height,
            child: SideMenu(
              activePage: activePage,
              items: navigationItems,
              onItemSelected: _setPage,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                top: AppDimensions.pageTopMargin,
                right: AppDimensions.pageRightMargin,
              ),
              padding: const EdgeInsets.only(
                top: AppDimensions.pagePadding,
                right: AppDimensions.pagePadding,
                left: AppDimensions.pagePadding,
              ),
              decoration: const BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppDimensions.radiusMedium),
                  topRight: Radius.circular(AppDimensions.radiusMedium),
                ),
              ),
              child: _buildPage(),
            ),
          ),
        ],
      ),
    );
  }
}