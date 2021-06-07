import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Language with ChangeNotifier {
  // language dir
  String languageDirection = 'ltr';
  // language code
  String languageCode = 'en';

  // String languageDirection() => _languageDirection;
  // String languageCode() => _languageCode;

  void setLanguage(code, direction) async {
    languageCode = code;
    languageDirection = direction;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('languageCode', languageCode);
    sharedPreferences.setString('languageDirection', direction);
    notifyListeners();
  }

  Future<void> getLanguageDataInLocal() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    languageCode = sharedPreferences.getString('languageCode') ?? languageCode;
    languageDirection =
        sharedPreferences.getString('languageDirection') ?? languageDirection;
    notifyListeners();
  }

  Map<String, dynamic> get getWords => _words[languageCode];

  // language words
  Map<String, dynamic> _words = {
    'kr': {
      'categories': "بابەتەکان",
      'change mode': "گۆڕینی مۆد",
      'change language': "گۆڕینی زمان",
      'cart': "عەرەبانە",
      'item in your cart': 'کاڵاکانی ناو عەرەبانەکەت',
      'items': 'کاڵاکان',
      'for each item': 'بۆ هەر کاڵایەک',
      'make cart empty': 'عەرەبانەکە بەتاڵ بکە',
      'check out': 'پشکنین',
      'search': 'گەڕان...',
      'price': 'نرخ',
      'category': 'بابەت',
      'add to cart': 'بیخە ناو عەرەبانە',
      'description': 'وەسف',
      'order': 'داواكردن',
      'order now': 'داواكردن ئيستا',
      'sure order': 'ئایا دڵنیایت لەوەی ئەم بەرهەمە داوا دەکەیت؟',
      'go to cart':'برؤ بؤ عربانه',
      'success':'سەرکەوتوبوو',
      'close':'دابخە',
      'yes':'بەڵێ',
      'no':'نەخێر',
      'issues price': 'کێشەکان لە نرخدا؟ پەیوەندی !',
      'not available': 'لە ئێستادا بەردەست نییە !',
      'sponsored by': 'سپۆنسەر کراوە لەلایەن',
      'sorry': 'ببوره',

    },
    'en': {
      'categories': "Categories",
      'change mode': "Change Mode",
      'change language': "Change Language",
      'cart': "Cart",
      'item in your cart': 'Items in your cart',
      'items': 'Items',
      'for each item': 'For each item',
      'make cart empty': 'Make Cart Empty',
      'check out': 'Check Out',
      'search': 'Search',
      'price': 'Price',
      'category': 'Category',
      'add to cart': 'Add To Cart',
      'description': 'Description',
      'order': 'Order',
      'order now': 'Order Now',
      'sure order': 'Are you Sure Order this Product ?',
      'go to cart':'Go to Cart',
      'success':'Success',
      'close':'Close',
      'yes':'Yes',
      'no':'No',
      'issues price': 'Issues in price ? Contact !',
      'not available': 'It is not available right now !',
      'sponsored by': 'SPONSORED BY',
  'sorry': 'Sorry',
    },
    'ar': {
      'categories': "فئات",
      'change mode': "تغيير الوضع",
      'change language': "تغيير اللغة",
      'cart': "عربة التسوق",
      'item in your cart': 'العناصر الموجودة في سلة التسوق',
      'items': 'العناصر',
      'for each item': 'لكل عنصر',
      'make cart empty': 'جعل العربة فارغة',
      'check out': 'سحب',
      'search': 'بحث',
      'price': 'سعر ',
      'category': 'الفئة',
      'add to cart': 'إضافة إلى العربة',
      'description': 'وصف',
      'order': 'طلب',
      'order now': 'اطلب الآن',
      'sure order': 'هل أنت متأكد من طلب هذا المنتج؟',
      'go to cart':'انتقل إلى العربة',
      'success':'نجاح',
      'close':'غلق',
      'yes':'نعم',
      'no':'لا',
      'issues price': 'قضايا في السعر؟ الاتصال!',
      'not available': 'لا يتوفر الآن!',
      'sponsored by': 'برعايه',
      'sorry': 'عفوا',
    },
  };
}
