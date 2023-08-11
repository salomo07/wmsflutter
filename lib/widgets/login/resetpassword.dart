import 'package:flutter/material.dart';

class ResetPasswordWidget extends StatefulWidget {
  const ResetPasswordWidget({super.key});

  @override
  State<ResetPasswordWidget> createState() => _ResetPasswordWidgetState();
}

class _ResetPasswordWidgetState extends State<ResetPasswordWidget> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: 470,
    //   height: 448,
    //   color: Colors.white,
    //   child: Padding(
    //     padding: EdgeInsets.all(32),
    //     child: Wrap(
    //       children: [
    //         Wrap(
    //           children: [
    //             Text(
    //               "Kata Sandi Baru",
    //               style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
    //             ),
    //             Text(
    //               "Silahkan atur ulang kata sandi baru anda",
    //               style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    //             )
    //           ],
    //         )
    //       ],
    //     ),
    //   ),
    // );
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: SizedBox(
        height: 448,
        width: 470,
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Wrap(
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Kata Sandi Baru",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Silahkan atur ulang kata sandi baru anda",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              right: 14,
              top: 10,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.highlight_off_outlined,
                  size: 30,
                ),
                color: const Color(0xFF98A2B3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
