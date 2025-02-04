part of '../details.dart';

class _StorageTile extends StatelessWidget {
  final String title;
  final double space;
  final Color color;
  const _StorageTile({
    required this.title,
    required this.space,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipOval(
              child: Container(
                width: 16,
                height: 16,
                color: color,
              ),
            ),
            const SizedBox(
              width: 17,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTypography.normalMedium(color: color),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "$space Gb",
                  style: AppTypography.smallRegular(
                    color: AppTheme.text3,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
