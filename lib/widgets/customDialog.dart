import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wmsflutter/widgets/customButton.dart';

class CustomDialogWidget extends StatelessWidget {
  CustomDialogWidget({
    super.key,
    this.height = 393,
    this.width = 323,
    required this.title,
    required this.desc,
    required this.txtButton,
    required this.isUrl,
    required this.url,
  });
  double height;
  double width;
  double margin = 32;
  bool isUrl;
  String title, desc, txtButton, url;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(margin!),
              child: InteractiveViewer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: (height - (margin * 2)) / 2,
                      width: width - margin,
                      child: isUrl
                          ? SvgPicture.network(url, fit: BoxFit.fill)
                          : SvgPicture.asset(url, fit: BoxFit.fill),
                    ),
                    Container(
                      height: (height - (margin * 2)) / 2,
                      width: width - margin,
                      color: Colors.blueAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            title,
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          Text(desc,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400, fontSize: 14)),
                          CustomButtonWidget(
                            color: const Color(0xFFFFDD00),
                            child: Text(txtButton),
                          ),
                          // ),
                          // ElevatedButton(
                          //     style: ElevatedButton.styleFrom(
                          //         backgroundColor: Color(0xFFFFDD00)),
                          //     onPressed: () {},
                          //     child: Text(txtButton))
                        ],
                      ),
                    )
                  ],
                ),
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
