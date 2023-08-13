import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';

class TextSignUpOrSignIn extends StatelessWidget {
  final String textone;
  final String texttwo;
 final void Function()? onTap;
  const TextSignUpOrSignIn({super.key , required this.textone,required this.texttwo,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return     Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                Text(textone),
                const Text("   "),
            InkWell(
              onTap: onTap,
                child: Text(texttwo ,style: const TextStyle(color: AppColor.primaryColor , fontWeight: FontWeight.bold),),
              ),
          ],
        );
  }
}