part of '../home.dart';

class _Folder extends StatelessWidget {
  final String name;
  final String date;
  final Color primary;
  final Color secondary;

  const _Folder({
    required this.name,
    required this.date,
    required this.primary,
    required this.secondary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      decoration: BoxDecoration(
        color: primary.withAlpha(25),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  AppIcons.folder,
                  color: primary,
                ),
                SvgPicture.asset(
                  AppIcons.twoDots,
                  color: secondary,
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              name,
              style: AppTypography.normalMedium(
                color: secondary,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              date,
              style: AppTypography.smallRegular(
                color: primary,
              ),
            )
          ],
        ),
      ),
    );
  }
}
