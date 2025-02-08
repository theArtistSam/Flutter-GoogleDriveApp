part of '../home.dart';

class _Body extends StatelessWidget {
  final AdvancedDrawerController controller;
  const _Body({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        backgroundColor: AppTheme.background, // Customize color
        elevation: 0, // Remove shadow
        leading: IconButton(
          icon: SvgPicture.asset(AppIcons.menu),
          onPressed: () {
            controller.showDrawer();
          },
        ),
        title: Text(
          "My Drive",
          style: AppTypography.normalSemiBold(
            color: AppTheme.text2,
          ),
        ),
        centerTitle: true, // Centers the text
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: IconButton(
              onPressed: () {},
              icon: ClipOval(
                child: Image.asset(
                  AppImages.avatar,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FAB Pressed!");
        },
        backgroundColor: AppTheme.brandPrimary, // Customize color
        shape: const CircleBorder(), // Ensures circular shape
        child: SvgPicture.asset(AppIcons.plus),
      ),
      body: ListView(
        children: [
          // Text Field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                const AppTextfield(),
                // Card
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32.0),
                  child: GestureDetector(
                    onTap: () => AppRoutes.details.push(context),
                    child: const _StorageCard(),
                  ),
                ),
              ],
            ),
          ),

          // List View
          Container(
            decoration: const BoxDecoration(
              color: AppTheme.white,
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(16),
                topStart: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Folders",
                        style: AppTypography.mediumSemiBold(
                          color: AppTheme.text2,
                        ),
                      ),
                      SvgPicture.asset(AppIcons.gridMenu)
                    ],
                  ),
                  GridView.builder(
                    padding: const EdgeInsets.only(top: 24),
                    itemCount: items.length,
                    shrinkWrap: true, // Wraps all items into a single row
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 2 columns
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 1.49, // Aspect ratio for the grid items
                    ),
                    itemBuilder: (context, index) {
                      final folder = items[index];
                      return GestureDetector(
                        onTap: () => AppRoutes.folder.push(
                          context,
                          arguments: {
                            "folder": folder,
                          },
                        ),
                        child: _Folder(
                          name: folder.name,
                          date: folder.date,
                          primary: folder.primary,
                          secondary: folder.secondary,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
