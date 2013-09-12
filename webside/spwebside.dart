//   Copyright (c) 1979, the Gra projects authors.
//   Please see the AUTHORS file for details.
//   All rights reserved.
//   Use of this source code is governed by a MIT-style license
//   that can be found in the LICENSE file.

library spwebside;

import 'dart:html';
import 'dart:async';

/*
    @author Gra <Gołębiewski Radosław A.>
            https://github.com/golebier
            plus.google.com/u/0/103563456777990778742/about
            http://www.linkedin.com/pub/rados%C5%82aw-go%C5%82%C4%99biewski/70/832/35
*/

class MouseOnContent {
  String dataPlaceId;
  String dataObjectId;
  MouseOnContent(String actualDataId, String dataObjectId) {
    this.dataPlaceId = actualDataId;
    this.dataObjectId = dataObjectId;
  }
  bool write(String newDataId) {
    HttpRequest.getString("$dataObjectId/$newDataId.html").then((resp) {
      query('#$dataPlaceId').innerHtml = resp;
    });
    // ok, if true returned, then only once can by clicked ;)
    return false;
  }
}

main() {
  MouseOnContent coreContent = new MouseOnContent("corecontent", "htmls");

  query('#welcome').onMouseDown.any((event) => coreContent.write("welcome"));
//  query('#warning').onMouseDown.any((event) => coreContent.write("warning"));
  query('#ischool').onMouseDown.any((event) => coreContent.write("ischool"));
  query('#schoollow').onMouseDown.any((event) => coreContent.write("schoollow"));
  query('#aboutas').onMouseDown.any((event) => coreContent.write("aboutas"));
  query('#contact').onMouseDown.any((event) => coreContent.write("contact"));

  query('#radapedadogiczna').onMouseDown.any((event) => coreContent.write("radapedadogiczna"));
  query('#samorzaduczniowski').onMouseDown.any((event) => coreContent.write("samorzaduczniowski"));
  query('#osiagniecia').onMouseDown.any((event) => coreContent.write("osiagniecia"));
  query('#swietlica').onMouseDown.any((event) => coreContent.write("swietlica"));
  //query('#zajeciapozalekcyjne').onMouseDown.any((event) => coreContent.write("zajeciapozalekcyjne"));
  query('#podreczniki').onMouseDown.any((event) => coreContent.write("podreczniki"));
  query('#stypendia').onMouseDown.any((event) => coreContent.write("stypendia"));
  query('#stowarzyszenie').onMouseDown.any((event) => coreContent.write("stowarzyszenie"));

  query('#parentinfo').onMouseDown.any((event) => coreContent.write("parentinfo"));
  query('#eRegister').onMouseDown.any((event) => coreContent.write("eRegister"));
  query('#fromkinderganden').onMouseDown.any((event) => coreContent.write("fromkinderganden"));

  query('#meetings').onMouseDown.any((event) => coreContent.write("meetings"));
  query('#schoolCalendar').onMouseDown.any((event) => coreContent.write("schoolCalendar"));
  query('#subjectCompetitions').onMouseDown.any((event) => coreContent.write("subjectCompetitions"));
  query('#Library').onMouseDown.any((event) => coreContent.write("Library"));
  //query('#aboutLibrary').onMouseDown.any((event) => coreContent.write("aboutLibrary"));
  //query('#lectures').onMouseDown.any((event) => coreContent.write("lectures"));
  //query('#readRates').onMouseDown.any((event) => coreContent.write("readRates"));
  //query('#regulations').onMouseDown.any((event) => coreContent.write("regulations"));
  //query('#competitions').onMouseDown.any((event) => coreContent.write("competitions"));
  //query('#events').onMouseDown.any((event) => coreContent.write("events"));
  //query('#goldenList').onMouseDown.any((event) => coreContent.write("goldenList"));
  //query('#photoGallery').onMouseDown.any((event) => coreContent.write("photoGallery"));
  //query('#usefulWebSides').onMouseDown.any((event) => coreContent.write("usefulWebSides"));

  query('#school').onMouseDown.any((event) => coreContent.write("welcome"));
  query('#planzajec').onMouseDown.any((event) => coreContent.write("planzajec"));

  query('#posos').onMouseDown.any((event) => coreContent.write("posos"));
  //query('#oslmkd').onMouseDown.any((event) => coreContent.write("oslmkd"));

  coreContent.write("welcome");

  DateTime now = new DateTime.now();
  query('#year').text = now.year.toString();
}
