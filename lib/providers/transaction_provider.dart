import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_smtr4/models/cart_model.dart';
import 'package:project_akhir_mobile_smtr4/services/transaction_service.dart';

class TransactionProvider with ChangeNotifier {
  Future<bool> chechkout(
    String token,
    List<CartModel> carts,
    double totalPrice,
  ) async {
    try {
      if (await TransactionService().checkout(token, carts, totalPrice)) {
        return true;
      }
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
