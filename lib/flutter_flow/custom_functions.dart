import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String? customFunction(String? text) {
  return text?.toUpperCase();
}

String newCustomFunction(
  String first,
  String second,
) {
  return (int.parse(first.isEmpty ? "0" : first) +
          int.parse(second.isEmpty ? "0" : second))
      .toString();
}
