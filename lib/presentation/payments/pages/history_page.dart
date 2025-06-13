import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickbill/presentation/payments/widgets/history_item.dart';

import '../../../core/constants/colors.dart';
import '../bloc/history/history_bloc.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  void initState() {
    context.read<HistoryBloc>().add(const HistoryEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
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
}
