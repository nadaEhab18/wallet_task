
import 'package:flutter/material.dart';
import 'package:taxi_go_driver/Presentaion/screens/wallet/widgets/wallet_screen_body.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WalletScreenBody(),
    );
  }
}
