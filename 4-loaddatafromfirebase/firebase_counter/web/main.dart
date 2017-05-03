// Copyright (c) 2017, janamou. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/platform/browser.dart';
import 'package:firebase/firebase.dart';
import 'package:firebase_counter/app_component.dart';

void main() {
  initializeApp(
      apiKey: "AIzaSyAH7S_gsce9RtNI8w0z7doiP3ugVJM8ZbI",
      authDomain: "angulardart-firebase-io-2017.firebaseapp.com",
      databaseURL: "https://angulardart-firebase-io-2017.firebaseio.com",
      storageBucket: "angulardart-firebase-io-2017.appspot.com");

  bootstrap(AppComponent);
}
