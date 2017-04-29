// Copyright (c) 2017, janamou. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:firebase/firebase.dart';
import 'hello_dialog/hello_dialog.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, HelloDialog],
  providers: const [materialProviders],
)
class AppComponent implements OnInit {
  int count = 0;
  DatabaseReference _ref;

  @override
  ngOnInit() {
    _ref = database().ref('counter');
    _ref.onValue.listen((e) {
      DataSnapshot snapshot = e.snapshot;
      count = snapshot.val();
    });
  }

  dislike() async {
    count = await _updateDatabase((c) => c - 1);
  }

  like() async {
    count = await _updateDatabase((c) => c + 1);
  }

  Future<int> _updateDatabase(UpdateFunction<int> update) async {
    Transaction transaction = await _ref.transaction((current) {
      if (current != null) {
        current = update(current);
      }
      return current;
    });

    return transaction.snapshot.val();
  }
}

typedef T UpdateFunction<T>(T value);
