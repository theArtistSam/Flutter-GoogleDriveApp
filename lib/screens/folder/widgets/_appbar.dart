part of '../folder.dart';

class _AppBar extends StatelessWidget {
  final FolderItem? folder;
  const _AppBar({required this.folder});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: folder!.primary,
      floating: true,
      expandedHeight: 190,
      pinned: true,
      snap: true,
      leading: IconButton(
        onPressed: () => ''.pop(context),
        icon: SvgPicture.asset(
          AppIcons.arrowLeft,
          color: AppTheme.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppIcons.twoDots,
            color: AppTheme.white,
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                AppIcons.folder,
                color: AppTheme.white,
                height: 40,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        folder!.name,
                        style: AppTypography.largeSemiBold(
                          color: AppTheme.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "32 items · 350 Mb",
                        style: AppTypography.smallRegular(
                          color: AppTheme.white.withOpacity(.8),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: folder!.secondary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        AppIcons.search,
                        color: AppTheme.white,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
