part of '../home.dart';

class _Drawer extends StatefulWidget {
  const _Drawer();

  @override
  State<_Drawer> createState() => __DrawerState();
}

class __DrawerState extends State<_Drawer> {
  final AdvancedDrawerController _advancedDrawerController =
      AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      openRatio: .65,
      openScale: .8,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: AppTheme.brandPrimary,
        ),
      ),
      drawer: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              onTap: () {},
              trailing: IconButton(
                icon: SvgPicture.asset(AppIcons.cross),
                onPressed: () {
                  _advancedDrawerController.hideDrawer();
                },
              ),
              title: Text(
                "Google Drive",
                style: AppTypography.largeSemiBold(
                  color: AppTheme.white,
                ),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: drawerItems.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final DrawerItem item = drawerItems[index];
                return ListTile(
                  onTap: () {
                    // put the route here
                  },
                  leading: SvgPicture.asset(item.icon),
                  title: Text(
                    item.label,
                    style: AppTypography.normalMedium(
                      color: AppTheme.white,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              onTap: () {
                // put the route here
              },
              leading: SvgPicture.asset(AppIcons.logout),
              title: Text(
                "Logout",
                style: AppTypography.normalMedium(
                  color: AppTheme.white,
                ),
              ),
            ),
          ],
        ),
      ),
      child: _Body(controller: _advancedDrawerController),
    );
  }
}
