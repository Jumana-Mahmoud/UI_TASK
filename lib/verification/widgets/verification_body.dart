import 'package:ecommerce_ui/verification/widgets/pin_code_field.dart';
import 'package:flutter/cupertino.dart';

import '../../core/widgets/styled_text.dart';
import '../../core/widgets/title.dart';
import '../../core/widgets/submit_button.dart';

class VerificationBody extends StatelessWidget {
  const VerificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 100),
        padding: const EdgeInsets.all(20),
        child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleWidget(
                title: 'Verification',
              ),
              const Text(
                'enter the OTP code sent to you by SMS',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const CodeField(),
              StyledText(
                question: 'Didn\'t get a code? ',
                action: 'Send again',
              ),
              const Spacer(),
              const SubmitButton(
                buttonText: 'Verify ',
              ),
            ]));
  }
}
