import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signature/signature.dart';

class TabSignatureWidget extends StatefulWidget {
  TabSignatureWidget({super.key});

  @override
  State<TabSignatureWidget> createState() => _TabSignatureWidgetState();
}

class _TabSignatureWidgetState extends State<TabSignatureWidget> {
  String txtHint = 'Tanda tangan disini';
  bool started = false;
  @override
  void dispose() {
    _signatureController!.dispose();
    super.dispose();
  }

  SignatureController? _signatureController;

  @override
  Widget build(BuildContext context) {
    _signatureController = SignatureController(
      onDrawStart: () {
        if (started == false) {
          setState(() {
            started = true;
            txtHint = "";
          });
        }
      },
      penStrokeWidth: 5,
      penColor: Colors.black54,
      exportBackgroundColor: Color(0xFFededed),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(9)),
          border: Border.all(color: Color(0xff98A2B3))),
      child: DefaultTabController(
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
                height: 146,
                child: TabBarView(children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        // height: double.infinity,
                        child: Signature(
                          backgroundColor: Colors.transparent,
                          controller: _signatureController!,
                        ),
                      ),
                      Text(txtHint)
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 10,
                    color: Colors.green,
                  )
                ]),
              )
            ],
          )),
    );
  }
}
