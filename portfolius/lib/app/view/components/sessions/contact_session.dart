import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolius/app/view/components/widgets/general_button_widget.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../../core/constants/constants.dart';

class ContactSession extends StatefulWidget {
  const ContactSession({super.key});

  @override
  State<ContactSession> createState() => _ContactSessionState();
}

class _ContactSessionState extends State<ContactSession> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.backgroundColor,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: size.width * 0.1,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: RichText(
              text: TextSpan(
                text: "Contact ",
                style: AppTextStyles.headingTextStyle(fontSize: 30),
                children: [
                  TextSpan(
                    text: "Me",
                    style: AppTextStyles.headingTextStyle(
                      fontSize: 30,
                      color: AppColors.robinEdgeBlue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Constants.sizedBox(height: 40),
          Row(
            children: [
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  elevation: 8,
                  child: TextField(
                    cursorColor: AppColors.white,
                    style: AppTextStyles.normalTextStyle(),
                    decoration: buildInputDecoration(
                      hintText: "Full name",
                    ),
                  ),
                ),
              ),
              Constants.sizedBox(width: 20),
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  elevation: 8,
                  child: TextField(
                    cursorColor: AppColors.white,
                    style: AppTextStyles.normalTextStyle(),
                    decoration: buildInputDecoration(
                      hintText: "Email address",
                    ),
                  ),
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  elevation: 8,
                  child: TextField(
                    cursorColor: AppColors.white,
                    style: AppTextStyles.normalTextStyle(),
                    decoration: buildInputDecoration(
                      hintText: "Mobile number",
                    ),
                  ),
                ),
              ),
              Constants.sizedBox(width: 20),
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  elevation: 8,
                  child: TextField(
                    cursorColor: AppColors.white,
                    style: AppTextStyles.normalTextStyle(),
                    decoration: buildInputDecoration(
                      hintText: "Email subject",
                    ),
                  ),
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 20),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyles.normalTextStyle(),
              decoration: buildInputDecoration(
                hintText: "Your message",
              ),
              maxLines: 10,
            ),
          ),
          Constants.sizedBox(height: 40),
          GeneralButton(
            text: "Send message",
            onTap: () {},
          ),
        ],
      ),
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: AppTextStyles.confortaaStyle(),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      fillColor: AppColors.backgroundColor2,
      filled: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
    );
  }
}
