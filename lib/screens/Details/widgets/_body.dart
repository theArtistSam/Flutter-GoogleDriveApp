part of '../details.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: AppTheme.background, // Customize color
        elevation: 0, // Remove shadow
        leading: IconButton(
          icon: SvgPicture.asset(AppIcons.arrowLeft),
          onPressed: () => ''.pop(context),
        ),
        title: Text(
          "Storage Details",
          style: AppTypography.normalSemiBold(
            color: AppTheme.text2,
          ),
        ),
        centerTitle: true, // Centers the text
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              AppIcons.twoDots,
              color: AppTheme.text2,
            ), // Change to desired icon
            onPressed: () {
              // Action for the right-side icon
              print("Settings icon pressed");
            },
          ),
        ],
      ),
      bottomSheet: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 23),
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppTheme.brandPrimary,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "Upgrade Storage",
                  style: AppTypography.normalMedium(
                    color: AppTheme.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView(
          children: [
            Row(
              children: [
                // Pie Chart
                Stack(
                  alignment: Alignment.center,
                  children: [
                    PieChart(
                      dataMap: itemsMap,
                      totalValue: 10,
                      animationDuration: const Duration(milliseconds: 800),
                      chartRadius: 150,
                      colorList: itemColors,
                      initialAngleInDegree: 0,
                      chartType: ChartType.disc,
                      ringStrokeWidth: 32,
                      // centerText: "HYBRID",
                      legendOptions: const LegendOptions(
                        showLegends: false,
                      ),
                      chartValuesOptions: const ChartValuesOptions(
                        showChartValues: false,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppTheme.white,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: SvgPicture.asset(
                          AppIcons.gdrive,
                          height: 32,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Free Storage",
                      style: AppTypography.normalRegular(
                        color: AppTheme.text1,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "7.5 Gb",
                      style: AppTypography.largeSemiBold(
                        color: AppTheme.text2,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "From Total 15 Gb",
                      style: AppTypography.smallRegular(
                        color: const Color(0xff383a44).withOpacity(.80),
                      ),
                    ),
                  ],
                )
              ],
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: items.length,
              padding:
                  const EdgeInsets.symmetric(vertical: 46), // Optional padding
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 16), // 16px spacing
              itemBuilder: (context, index) {
                final item = items[index];
                return _StorageTile(
                  title: item.name,
                  space: item.value,
                  color: item.color,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
