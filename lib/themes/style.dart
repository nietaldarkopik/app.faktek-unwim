import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const TextStyle text1 = TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold
      );

const Color kPrimary = Color.fromARGB(213, 0, 53, 228);
const Color kPrimaryHover = Color.fromARGB(209, 42, 69, 143);
const Color kSecondary = Color.fromARGB(255, 238, 143, 0);
const Color kDark = Color(0xff212529);
const Color kGold = Color(0xffff7903);
const Color kLight = Color(0xfff8f9fa);
const Color kDanger = Color(0xffbb2d3b);
const Color kWarning = Color(0xffffc107);
const Color kBlue = Color(0xff0d6efd);
const Color kIndigo = Color(0xff6610f2);
const Color kPurple = Color(0xff6f42c1);
const Color kPink = Color(0xffd63384);
const Color kRed = Color(0xffdc3545);
const Color kOrange = Color(0xfffd7e14);
const Color kYellow = Color(0xffffc107);
const Color kGreen = Color(0xff198754);
const Color kTeal = Color(0xff20c997);
const Color kCyan = Color(0xff0dcaf0);
const Color kBlack = Color(0xff000000);
const Color kWhite = Color(0xffffffff);
const Color kGray = Color(0xff6c757d);
const Color kGrayDark = Color(0xff343a40);
const Color kGray100 = Color(0xfff8f9fa);
const Color kGray200 = Color(0xffe9ecef);
const Color kGray300 = Color(0xffdee2e6);
const Color kGray400 = Color(0xffced4da);
const Color kGray500 = Color(0xffadb5bd);
const Color kGray600 = Color(0xff6c757d);
const Color kGray700 = Color(0xff495057);
const Color kGray800 = Color(0xff343a40);
const Color kGray900 = Color(0xff212529);
const Color kSuccess = Color(0xff198754);
const Color kInfo = Color(0xff0dcaf0);
const Color kLinkColor = Color(0xff0d6efd);
const Color kLinkHoverColor = Color(0xff0a58ca);
const Color kCodeColor = Color(0xffd63384);
const Color kHighlightBg = Color(0xfffff3cd);

const double kBorderRadius20 = 20.0;
const double kBorderRadius10 = 10.0;
const double kBorderRadius5 = 5.0;


const double kPadding32 = 32.0;
const double kPadding24 = 24.0;
const double kPadding20 = 20.0;
const double kPadding16 = 16.0;
const double kPadding8 = 8.0;
const double kPadding4 = 4.0;
const double kPadding0 = 0.0;


final kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBorderRadius10),
  borderSide: const BorderSide(
    color: kWhite
  )
);

final kMonstserratBold = GoogleFonts.montserrat(
  fontWeight: FontWeight.bold,
);

final kMonstserratSemibold = GoogleFonts.montserrat(
  fontWeight: FontWeight.w600,
);

final kMonstserratMedium = GoogleFonts.montserrat(
  fontWeight: FontWeight.w500,
);

final kMonstserratRegular = GoogleFonts.montserrat(
  fontWeight: FontWeight.w400,
);
