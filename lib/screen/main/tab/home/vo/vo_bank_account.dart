import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank.dart';

class BankAccount {
  final Bank bank;
  // 잔액은 계속 바뀜으로 final 붙이지 않음
  int balance;
  // 참조하는 요소이므로 nullable
  final String? accountTypeName;

  BankAccount(
    this.bank,
    this.balance, {
      // 선언 선택 가능한 파라미터
      this.accountTypeName,
  });
}
