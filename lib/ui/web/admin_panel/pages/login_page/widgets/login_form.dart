import 'package:flutter/material.dart';
import 'package:text_responsive/text_responsive.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({required this.flex, super.key});
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: DecoratedBox(
        decoration: BoxDecoration(color: Colors.white10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 20,
            ),
            // 1st heading
            Expanded(
              flex: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        var maxWidth = constraints.maxWidth;
                        var maxHeight = constraints.maxHeight;

                        return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ParagraphTextWidget(
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                              'Login to Account',
                            ),
                            InlineTextWidget(
                              'Please Enter Your Email And Password to Continue',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // // 2nd heading
            // Expanded(
            //   flex: 2,
            //   child: ColoredBox(
            //     color: Colors.green,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //         Expanded(
            //           child: LayoutBuilder(
            //             builder: (context, constraints) {
            //               var maxWidth = constraints.maxWidth;
            //               return const Text(
            //                 'Please enter your email and password to continue',
            //                 style: TextStyle(
            //                   color: Colors.white,
            //                   fontSize: 15,
            //                 ),
            //               );
            //             },
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            const Spacer(
              flex: 5,
            ),
            // 3rd heading
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        var maxWidth = constraints.maxWidth;
                        var maxHeight = constraints.maxHeight;
                        return Text(
                          'Email Address',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: (maxHeight * 0.02) + (maxWidth * 0.02),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            // 1st textfeild
            const Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 10, color: Colors.white),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(),
                        hintText: 'Enter email address',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 5,
            ),
            // 4th heading
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        var maxWidth = constraints.maxWidth;
                        var maxHeight = constraints.maxHeight;
                        return Text(
                          'Password',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: (maxHeight * 0.02) + (maxWidth * 0.02),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            // 2nd textfeild
            const Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 10, color: Colors.white),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(),
                        hintText: 'Enter password',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 5,
            ),
            // button
            Expanded(
              flex: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: LayoutBuilder(builder: (context, constraints) {
                      var maxWidth = constraints.maxWidth;
                      var maxHeight = constraints.maxHeight;
                      return ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.blue),
                        ),
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize:
                                    (maxHeight * 0.03) + (maxWidth * 0.03),
                                color: Colors.white),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 20,
            ),
          ],
        ),
      ),
    );
  }
}
