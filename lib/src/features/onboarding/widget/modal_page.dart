import 'package:flutter/material.dart';
import 'package:flutter_appritehack/src/features/auth/view/sign_up.dart';
import 'package:flutter_appritehack/src/features/onboarding/widget/button_widget.dart';

class ModalPage extends StatelessWidget {
  const ModalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scroll) {
          if (scroll is OverscrollNotification &&
              scroll.dragDetails != null &&
              scroll.dragDetails!.delta.dy > 10) {
            Navigator.of(context).pop();
            return false;
          }
          return true;
        },
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(children: [
            const SizedBox(height: 340),
            Container(
                decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius:  BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Container(
                        width: 50,
                        height: 4,
                        margin: const EdgeInsets.only(top: 15),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                     Padding(
                      padding:  EdgeInsets.all(20),
                      child: Center(
                        child: CustomBtn(
                        function: (){
                          Navigator.push(context, SignUpView.route());
                        },
                        text: 'Sign Up',
                        color: Colors.black,
                        borderSideColor: Colors.white.withOpacity(0.4),
                        textcolor: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Center(
                        child: CustomBtn(
                          function: (){},
                          text: 'log in to tik',
                          color: Colors.white,
                          borderSideColor: Colors.grey.shade500,
                          textcolor: Colors.black,
                        ),
                      ),
                    ),
                   const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Divider(
                            color: Colors.black,
                            thickness: 18),
                          Text('OR',
                            style: TextStyle(color: Colors.black),
                          ),
                          Divider(thickness: 18)
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(20),
                      child: Center(
                        child: CustomBtn(
                        function: (){},
                        text: 'Sign Up',
                        color: Colors.black,
                        borderSideColor: Colors.white.withOpacity(0.4),
                        textcolor: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(20),
                      child: Center(
                        child: CustomBtn(
                        function: (){},
                        text: 'Sign Up',
                        color: Colors.black,
                        borderSideColor: Colors.white.withOpacity(0.4),
                        textcolor: Colors.white,
                        ),
                      ),
                    ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

