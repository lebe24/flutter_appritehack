import 'package:flutter/material.dart';

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
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.only(
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
                      padding: const EdgeInsets.all(20),
                      child: Center(
                        child: ElevatedButton(
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: Size(MediaQuery.of(context).size.width * 0.7, 50),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 4.0, // Set the desired elevation value
                        ),
                        child: Text('SIGN UP'),
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Center(
                        child: ElevatedButton(
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: Size(MediaQuery.of(context).size.width * 0.7, 50),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 0.0, // Set the desired elevation value
                        ),
                        child: Text('Log in',style: TextStyle(color: Colors.black),),
                      ),
                      ),
                    ),
                   const Padding(
                      padding: const EdgeInsets.all(18.0),
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
                      padding: const EdgeInsets.all(5),
                      child: Center(
                        child: ElevatedButton(
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: Size(MediaQuery.of(context).size.width * 0.7, 50),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 0.0, // Set the desired elevation value
                        ),
                        child: Text('Button',style: TextStyle(color: Colors.black),),
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Center(
                        child: ElevatedButton(
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: Size(MediaQuery.of(context).size.width * 0.7, 50),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 0.0, // Set the desired elevation value
                        ),
                        child: Text('Button',style: TextStyle(color: Colors.black),),
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Center(
                        child: ElevatedButton(
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: Size(MediaQuery.of(context).size.width * 0.7, 50),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 0.0, // Set the desired elevation value
                        ),
                        child: Text('Button',style: TextStyle(color: Colors.black),),
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Center(
                        child: ElevatedButton(
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: Size(MediaQuery.of(context).size.width * 0.7, 50),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 0.0, // Set the desired elevation value
                        ),
                        child: Text('Button',style: TextStyle(color: Colors.black),),
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