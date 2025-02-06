part of '../folder.dart';

class _FolderListTile extends StatelessWidget {
  final Color color;
  final String title;
  final double size;
  const _FolderListTile({
    required this.color,
    required this.title,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AppIcons.folder,
          height: 63,
          color: color,
        ),
        const SizedBox(
          width: 17,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTypography.normalMedium(
                color: AppTheme.text2,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "22 items · $size Mb",
              style: AppTypography.smallRegular(
                color: AppTheme.text3,
              ),
            )
          ],
        )
      ],
    );
  }
}
