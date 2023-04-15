import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zutlemane/utils.dart';

class ThickContainer extends StatelessWidget {
  final bool? isColor;
  const ThickContainer({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 2.5,
            color: isColor == null ? Colors.white : const Color(0xFF8ACCF7)),
      ),
    );
  }
}

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Gap(AppLayout.getWidth(10)),
        Text(
          text,
          style: Style.textStyle,
        )
      ]),
    );
  }
}

class AppDoubleTextWidget extends StatelessWidget {
  final String smallText;
  final String bigText;
  final VoidCallback? ontap;
  const AppDoubleTextWidget({
    Key? key,
    required this.smallText,
    required this.bigText,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Style.headLineStyle2,
        ),
        InkWell(
          onTap: ontap,
          child: Text(
            smallText,
            style: Style.textStyle.copyWith(color: Style.primaryColor),
          ),
        ),
      ],
    );
  }
}

class AppTicketTab extends StatelessWidget {
  final String text1;
  final String text2;
  final Size size;

  const AppTicketTab({
    Key? key,
    required this.size,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getHeigth(50),
          ),
          color: Colors.grey.shade400,
        ),
        child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * .44,
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeigth(7),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeigth(50)),
                  ),
                  color: Colors.white,
                ),
                child: Center(child: Text(text1)),
              ),
              Container(
                width: size.width * .44,
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeigth(7),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getHeigth(50)),
                  ),
                  color: Colors.transparent,
                ),
                child: Center(child: Text(text2)),
              ),
            ]),
      ),
    );
  }
}
