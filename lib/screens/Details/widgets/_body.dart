part of '../details.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
    );
  }
}
