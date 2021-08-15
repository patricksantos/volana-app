import 'package:flutter/material.dart';
import 'package:volana/core/themes/app_colors.dart';
import 'package:volana/core/themes/app_text_styles.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: AppColors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 48,
              width: 48,
              child: CircularProgressIndicator(
                color: AppColors.whiteMilk,
              ),
            ),
            Text(
              'Loading...',
              style: TextStyles.loadingText,
            )
          ],
        ),
      ),
    );
  }
}
