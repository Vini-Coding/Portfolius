import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolius/app/core/utils/responsive_layout_builder.dart';
import 'package:portfolius/app/view/components/widgets/contact_form_component.dart';
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
    return ResponsiveLayoutBuilder(
      backgroundColor: AppColors.backgroundColor,
      paddingWidth: size.width * 0.2,
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const ContactSessionTitle(),
          Constants.sizedBox(height: 40),
          Material(
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
          Constants.sizedBox(height: 20),
          Material(
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
          Constants.sizedBox(height: 20),
          Material(
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
          Constants.sizedBox(height: 20),
          Material(
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
          Constants.sizedBox(height: 30),
        ],
      ),
      tablet: const ContactFormComponent(),
      desktop: const ContactFormComponent(),
    );
  }
}

class ContactSessionTitle extends StatelessWidget {
  const ContactSessionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
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
    );
  }
}
