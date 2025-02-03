part of '../home.dart';

class _StorageCard extends StatelessWidget {
  const _StorageCard();

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<double> _valueNotifier = ValueNotifier(0);
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppTheme.brandPrimary,
            borderRadius: BorderRadius.circular(26),
          ),
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppTheme.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(AppIcons.gdrive),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Free Storage",
                          style: AppTypography.largeSemiBold(
                            color: AppTheme.white,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "7.5 GB / 15 GB",
                          style: AppTypography.normalMedium(
                            color: AppTheme.white,
                          ),
                        ),
                      ],
                    ),
                    // Progress Indicator
                    SizedBox(
                      width: 65,
                      height: 65,
                      child: DashedCircularProgressBar.aspectRatio(
                        aspectRatio: 1, // width ÷ height
                        valueNotifier: _valueNotifier,
                        progress: 50,
                        maxProgress: 100,
                        corners: StrokeCap.butt,
                        foregroundColor: AppTheme.white,
                        backgroundColor: Colors.black26,
                        foregroundStrokeWidth: 4,
                        backgroundStrokeWidth: 4,
                        animation: true,
                        child: Center(
                          child: ValueListenableBuilder(
                            valueListenable: _valueNotifier,
                            builder: (_, double value, __) => Text(
                              '${value.toInt()}%',
                              style: AppTypography.normalRegular(
                                color: AppTheme.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: AppTheme.brandPrimary2,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SvgPicture.asset(AppIcons.arrowRight),
            ),
          ),
        )
      ],
    );
  }
}
