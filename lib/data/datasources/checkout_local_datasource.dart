import 'package:shared_preferences/shared_preferences.dart';

import '../../presentation/home/models/order_item.dart';

class CheckoutLocalDatasource {
    static const _checkoutKey = 'checkout_items';

  static Future<void> saveCheckoutItems(List<OrderItem> items) async {
    final prefs = await SharedPreferences.getInstance();
    final encoded = items.map((e) => e.toJson()).toList();
    prefs.setStringList(_checkoutKey, encoded);
  }

  static Future<List<OrderItem>> loadCheckoutItems() async {
    final prefs = await SharedPreferences.getInstance();
    final encoded = prefs.getStringList(_checkoutKey);
    if (encoded == null) return [];
    return encoded.map((e) => OrderItem.fromJson(e)).toList();
  }

  static Future<void> clearCheckoutItems() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(_checkoutKey);
  }
}
