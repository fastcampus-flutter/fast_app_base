import 'vo_bank.dart';

class BankAccount {
  // 뱅크를 참조
  final Bank bank;
  // final String accountNumber; 실제 화면에는 노출 안돼서 삭제(기록을 위해 주석처리)
  // final String accountHolderName; 실제 화면에는 노출 안돼서 삭제(기록을 위해 주석처리)
  int balance;
  // 토스뱅크통장은 따로 이름이 없음 so, 꼭 필요한건 아니라서 옵셔널일 경우 ? 추가 nullable
  final String? accountTypeName;

  BankAccount(
    this.bank,
    // this.accountNumber, 실제 화면에는 노출 안돼서 삭제(기록을 위해 주석처리)
    // this.accountHolderName, 실제 화면에는 노출 안돼서 삭제(기록을 위해 주석처리)
    this.balance, {
    //accountTypeName 옵셔널한 파라미터
    this.accountTypeName,
  });
}
