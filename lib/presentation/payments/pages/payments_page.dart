import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/colors.dart';
import '../bloc/history/history_bloc.dart';
import '../widgets/history_item.dart';

class PaymentsPage extends StatefulWidget {
  const PaymentsPage({super.key});

  @override
  State<PaymentsPage> createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  @override
  void initState() {
    context.read<HistoryBloc>().add(const HistoryEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          "Payments",
          style: TextStyle(
            color: AppColors.blueElectric,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.blueElectric),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: BlocBuilder<HistoryBloc, HistoryState>(
          builder: (context, state) {
            print('Current state: $state');
            return state.maybeWhen(
              orElse: () {
                return const Center(child: Text('No data'));
              },
              loading: () {
                return const Center(child: CircularProgressIndicator());
              },
              error: (message) {
                return Center(child: Text('Error: $message'));
              },
              success: (data) {
                if (data.isEmpty) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      context.read<HistoryBloc>().add(
                        const HistoryEvent.fetch(),
                      );
                    },
                    child: ListView(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height - 350,
                          child: const Center(
                            child: Text('No order history found'),
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return RefreshIndicator(
                  backgroundColor: AppColors.blueElectric,
                  color: AppColors.white,
                  onRefresh: () async {
                    context.read<HistoryBloc>().add(const HistoryEvent.fetch());
                  },
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    itemCount: data.length + 1,
                    itemBuilder: (context, index) {
                      if (index == data.length) {
                        return const SizedBox(height: 90);
                      }
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: HistoryItem(data: data[index]),
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  // Widget _buildTabBar() {
  //   return Container(
  //     margin: EdgeInsets.all(16.0),
  //     decoration: BoxDecoration(
  //       border: Border.all(color: AppColors.blueElectric, width: 1.5),
  //       borderRadius: BorderRadius.circular(9.0),
  //     ),
  //     child: Row(
  //       children: [
  //         _buildTabMenu("Transaction", 0),
  //         _buildTabMenu("History", 1),
  //       ],
  //     ),
  //   );
  // }

  // Widget _buildTabMenu(String label, int index) {
  //   return Expanded(
  //     child: InkWell(
  //       onTap: () => setState(() => _selectedIndex = index),
  //       child: Container(
  //         padding: EdgeInsets.symmetric(vertical: 15.0),
  //         decoration: BoxDecoration(
  //           color:
  //               _selectedIndex == index
  //                   ? AppColors.blueElectric
  //                   : AppColors.white,
  //           borderRadius: BorderRadius.circular(6.0),
  //         ),
  //         child: Center(
  //           child: Text(
  //             label,
  //             style: TextStyle(
  //               color:
  //                   _selectedIndex == index
  //                       ? AppColors.white
  //                       : AppColors.blueElectric,
  //               fontSize: 16,
  //               fontWeight: FontWeight.w700,
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
