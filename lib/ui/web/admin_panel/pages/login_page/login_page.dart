import 'package:edufair_web/ui/web/admin_panel/pages/login_page/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Opacity(
                  opacity: 0.4,
                  child:
                      Image.asset(fit: BoxFit.fill, 'assets/images/bg_1.jpg')),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 20,
                ),
                Expanded(
                  flex: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Spacer(
                        flex: 30,
                      ),
                      LoginForm(flex: 40),
                      Spacer(
                        flex: 30,
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
