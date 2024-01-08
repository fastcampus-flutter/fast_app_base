import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_acount.dart';

// 계좌를 위젯 세팅할때 넣어줘도 되는데 리스트로 넣어주는게 나중에 관리할때 편함

final bankAccountShinhan1 = BankAccount(
  bankShinhan,
  100000,
  accountTypeName: "신한 주거래 우대통장(저축예금)",
);
final bankAccountShinhan2 = BankAccount(
  bankShinhan,
  200000,
  accountTypeName: "저축예금",
);
final bankAccountShinhan3 = BankAccount(
  bankShinhan,
  300000,
  accountTypeName: "저축예금",
);
final bankAccountToss = BankAccount(
  bankTtoss,
  600000,
);
final bankAccountKakao = BankAccount(
  bankKakao,
  700000,
  accountTypeName: "입출금통장",
);
// 데이터 호출 되는지 테스트
main() {
  for (final item in bankAccounts) {
    print(item.accountTypeName);
  }
}

// List
final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
];
