import 'package:flutter/material.dart';

class MediaLoginForm extends StatelessWidget {
  const MediaLoginForm({required this.height, required this.width, super.key});
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width,
              height: height * 0.3,
            ),
            // 1st heading
            SizedBox(
              width: width,
              height: height * 0.05,
              child: FittedBox(
                alignment: AlignmentDirectional.centerStart,
                child: ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Colors.white, Colors.blue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds),
                  blendMode: BlendMode
                      .srcIn, // Ensures the shader is applied to the text

                  child: const Text(
                    'Login to Account',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ),
            // space
            SizedBox(
              width: width,
              height: height * 0.001,
            ),

            // 2nd heading
            SizedBox(
              width: width,
              height: height * 0.03,
              child: const FittedBox(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  'Please enter your email & password to continue',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            // space
            SizedBox(
              width: width,
              height: height * 0.02,
            ),

            // 3rd heading
            SizedBox(
              width: width,
              height: height * 0.03,
              child: const FittedBox(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  'Email Address',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            // space
            SizedBox(
              width: width,
              height: height * 0.01,
            ),
            // 1st textfeild
            SizedBox(
              width: width,
              height: height * 0.05,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintStyle:
                      TextStyle(fontSize: height * 0.015, color: Colors.white),
                  hintText: 'Enter Your Email Address',
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
            // space
            SizedBox(
              width: width,
              height: height * 0.02,
            ),

            // 4th heading
            SizedBox(
              width: width,
              height: height * 0.03,
              child: const FittedBox(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  'Password',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            // space
            SizedBox(
              width: width,
              height: height * 0.01,
            ),
            // 2nd textfeild
            SizedBox(
              width: width,
              height: height * 0.05,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintStyle:
                      TextStyle(fontSize: height * 0.015, color: Colors.white),
                  hintText: 'Enter Your Password',
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
            // space
            SizedBox(
              width: width,
              height: height * 0.01,
            ),
            // login button
            SizedBox(
              width: width,
              height: height * 0.05,
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                  onPressed: () {},
                  child: const Center(
                    child: FittedBox(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
            ),
            // bottom space
            SizedBox(
              width: width,
              height: height * 0.2,
            ),
          ],
        ),
      ),
    );
  }
}
