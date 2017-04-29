// Copyright (c) 2017, janamou. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/platform/browser.dart';
import 'package:firebase/firebase.dart';
import 'package:firebase_counter/app_component.dart';

void main() {
  initializeApp(
      apiKey: "AIzaSyAcd73Ww0ojuMsBpHM58EKtTvxkmsgAG0A",
      authDomain: "counter-2a392.firebaseapp.com",
      databaseURL: "https://counter-2a392.firebaseio.com",
      storageBucket: "counter-2a392.appspot.com");

  bootstrap(AppComponent);
}
