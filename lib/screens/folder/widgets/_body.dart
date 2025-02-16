part of '../folder.dart';

class _Body extends StatelessWidget {
  final FolderItem? folder;
  const _Body({required this.folder});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FAB Pressed!");
        },
        backgroundColor: folder!.primary, // Customize color
        shape: const CircleBorder(), // Ensures circular shape
        child: SvgPicture.asset(AppIcons.plus),
      ),
      body: CustomScrollView(
        slivers: [
          _AppBar(folder: folder),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 24,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Name",
                        style: AppTypography.mediumSemiBold(
                          color: AppTheme.text2,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      SvgPicture.asset(AppIcons.smallArrowDown),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppIcons.optionMenu,
                        ),
                      ),
                    ],
                  ),
                  ListView.separated(
                    padding: const EdgeInsets.only(top: 24),

                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount:
                        folders.length, // Replace with your actual list size.
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 24,
                      );
                    },
                    itemBuilder: (context, index) {
                      final FolderItem folderItem = folders[index];
                      return _FolderListTile(
                        title: folderItem.name,
                        color: folder!.primary,
                        size: folderItem.size,
                      );
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
