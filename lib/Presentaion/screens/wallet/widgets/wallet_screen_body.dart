import 'package:flutter/material.dart';
import 'package:taxi_go_driver/Presentaion/screens/wallet/widgets/custom_appbar.dart';
import 'package:taxi_go_driver/Presentaion/screens/wallet/widgets/rounded_botton.dart';
import 'package:taxi_go_driver/Presentaion/screens/wallet/widgets/wallet_card.dart';
import 'package:taxi_go_driver/Presentaion/screens/wallet/widgets/wallet_item.dart';
import 'package:taxi_go_driver/Utils/colors.dart';

class WalletScreenBody extends StatelessWidget {
  const WalletScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomAppbar(),
          const SizedBox(
            height: 20,
          ),
          const WalletCard(),
          const SizedBox(
            height: 20,
          ),
          const WalletItem(),
          const Spacer(),
          RoundedButton(
              width: double.infinity,
              backgroundColor: AppColors.kPrimaryColor,
              textColor: AppColors.kwhite,
              text: 'Add Money',
              onPressed: () {
                _selectPaymentMethod(context);

              }),
        ],
      ),
    );
  }

  void _selectPaymentMethod(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          height: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Select Payment Method',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              RadioListTile(
                value: 'Option1',
                groupValue: 'selected',
                onChanged: (value) {},
                title: const Text('Zally'),
                secondary: const Icon(Icons.payment),
              ),
              const Spacer(),
              RoundedButton(
                  width: double.infinity,
                  backgroundColor: AppColors.kPrimaryColor,
                  textColor: AppColors.kwhite,
                  text: 'Next',
              onPressed: (){
                _showAddMoneyModal(context);
              },
              )
            ],
          ),
        );
      },
    );
  }

  void _showAddMoneyModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              const Text(
                'Add Money',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              // Input Field
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Amount',
                  labelStyle: const TextStyle(fontSize: 14),
                  suffixText: '\$',
                  suffixStyle: const TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 16,
                  ),
                ),
              ),
              const Spacer(),

              // Buttons
              Row(
                children: [
                  // Cancel Button
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(context),
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 50),
                        side: const BorderSide(color: Colors.red),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),

                      child: const Text(
                        'Cancel',
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),

                  // Add Money Button
                  Expanded(
                      child:
                      RoundedButton(
                          width: double.infinity,
                          backgroundColor: AppColors.kPrimaryColor,
                          textColor: AppColors.kwhite,
                          text: 'Add Money')
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
