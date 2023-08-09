import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signature/signature.dart';

class TabSignatureWidget extends StatelessWidget {
  TabSignatureWidget({super.key});

// INITIALIZE. RESULT IS A WIDGET, SO IT CAN BE DIRECTLY USED IN BUILD METHOD
  var _signatureCanvas = Signature(
    controller: SignatureController(
      penStrokeWidth: 5,
      penColor: Colors.red,
      exportBackgroundColor: Color(0xFFededed),
    ),
    width: 380,
    height: 216,
    backgroundColor: Colors.lightBlueAccent,
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: TabBar(tabs: [
                Tab(
                    child: Text("Draw",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black))),
                Tab(
                    child: Text("Upload",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black))),
              ]),
            ),
            SizedBox(
              height: 175,
              child: TabBarView(children: [
                Container(
                  height: double.infinity,
                  child: _signatureCanvas,
                ),
                Container(
                  height: 20,
                  width: 10,
                  color: Colors.green,
                )
              ]),
            )
          ],
        ));
  }
}
