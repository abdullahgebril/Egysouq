




import 'package:flutter/cupertino.dart';

import '../model/Categories.dart';
class Data with ChangeNotifier{
  List categories = [
    Category('السيارات','Find Your Car','assets/images/car.png'),

    Category('اجهزة','Find Your Phones','assets/images/phone.jpeg'),

    Category('اثاث','Find Your Funiture','assets/images/furniture.png'),

    Category('عقارات','Find Your real estates','assets/images/realestate.png'),

    Category('خدمات','Find Your Services','assets/images/search.png'),

    Category('نشر التطبيق','Share the App!','assets/images/share.png'),
  ];

}