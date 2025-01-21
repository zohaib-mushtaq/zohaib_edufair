import 'package:edufair_web/ui/web/admin_panel/pages/login_page/media_query/media_login_form.dart';
import 'package:flutter/material.dart';

class MediaLoginPage extends StatelessWidget {
  const MediaLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Material(
      color: Colors.black,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Opacity(
                opacity: 0.2,
                child: Image.asset(fit: BoxFit.fill, 'assets/images/bg_1.jpg')),
          ),
          MediaLoginForm(height: height, width: width * 0.4),
        ],
      ),
    );
  }
}
