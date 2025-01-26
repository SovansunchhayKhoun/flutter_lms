import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lms/constants/app_constant.dart';
import 'package:flutter_lms/routes/routes.dart';
import 'package:lucide_icons/lucide_icons.dart';

@RoutePage()
class RootLayout extends StatefulWidget {
  const RootLayout({super.key});

  @override
  State<RootLayout> createState() => _RootLayoutState();
}

class _RootLayoutState extends State<RootLayout> {
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [...appRouter.bottomNavRoutes.map((e) => e.pageRouteInfo)],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          appBar: _buildAppBar(context),
          body: SafeArea(
            top: false,
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16,
              ),
              child: child,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (i) => tabsRouter.setActiveIndex(i),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(LucideIcons.flaskConical),
                label: 'Lab',
              ),
              BottomNavigationBarItem(
                icon: Icon(LucideIcons.user),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext buildContext) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
        ),
        onPressed: () {},
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(999),
          ),
          child: IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          ),
        )
      ],
      title: const Image(
        image: AssetImage(AppConstant.logoPath),
        fit: BoxFit.cover,
      ),
    );
  }
}
