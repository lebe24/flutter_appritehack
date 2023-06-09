import 'package:flutter/material.dart';
import 'package:flutter_appritehack/src/constant/assets/svg_assets.dart';
import 'package:flutter_appritehack/src/features/auth/view/sign_up.dart';
import 'package:flutter_appritehack/src/common/button_widget.dart';
import 'package:flutter_svg/svg.dart';


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
                        color: Colors.black,
                        borderSideColor: Colors.white.withOpacity(0.4),
                        child:const Text('singup'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Center(
                        child: CustomBtn(
                          function: (){},
                          color: Colors.white,
                          borderSideColor: Colors.grey.shade500,
                          child:const Text('login to tik'),
                        ),
                      ),
                    ),
                   const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey,
                            ),
                          ),
                          Text('OR',
                            style: TextStyle(color: Colors.black),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey,
                            ),)
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(20),
                      child: Center(
                        child: CustomBtn(
                        function: (){},
                        color: Colors.white,
                        borderSideColor: Colors.white.withOpacity(0.4),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            SvgAsset.google,
                            width: 50,
                            height: 50,
                          ),
                          title: Text('continue with google'),
                        ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(20),
                      child: Center(
                        child: CustomBtn(
                        function: (){},
                        color: Colors.white,
                        borderSideColor: Colors.white.withOpacity(0.4),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            SvgAsset.google,
                            width: 50,
                            height: 50,
                          ),
                          title: Text('continue with google'),
                        ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(20),
                      child: Center(
                        child: CustomBtn(
                        function: (){},
                        color: Colors.white,
                        borderSideColor: Colors.white.withOpacity(0.4),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            SvgAsset.google,
                            width: 50,
                            height: 50,
                          ),
                          title: Text('continue with google'),
                        ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(20),
                      child: Center(
                        child: CustomBtn(
                        function: (){},
                        color: Colors.white,
                        borderSideColor: Colors.white.withOpacity(0.4),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            SvgAsset.google,
                            width: 50,
                            height: 50,
                          ),
                          title: Text('continue with google'),
                        ),
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

