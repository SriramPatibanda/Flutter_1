// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/material.dart';
import 'package:flutter_1/Models/location.dart';
import 'package:flutter_1/location_detail.dart';
import 'package:flutter_1/location_list.dart';
import 'package:flutter_1/mocks/mock_location.dart';

void main() {
  final mockLocations = MockLocation.fetchAll();

  return runApp(MaterialApp(
    home: LocationList(mockLocations),
  ),);


}
