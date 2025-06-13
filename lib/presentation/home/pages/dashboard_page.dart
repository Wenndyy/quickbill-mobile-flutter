import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickbill/core/assets/assets.gen.dart';
import 'package:quickbill/presentation/home/pages/home_page.dart';
import 'package:quickbill/presentation/order/pages/order_page.dart';
import 'package:quickbill/presentation/product/pages/add_product.dart';

import '../../../core/constants/colors.dart';
import '../../manage/pages/manage_page.dart';
import '../../payments/pages/payments_page.dart';
import '../bloc/product/product_bloc.dart';
import '../widgets/nav_item.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  final GlobalKey<HomePageState> homeKey = GlobalKey<HomePageState>();

  final List<Widget> _pages = [];

  @override
  void initState() {
    //context.read<ProductBloc>().add(const ProductEvent.fetch());
    super.initState();
    _pages.addAll([
      HomePage(key: homeKey),
      const PaymentsPage(),
      const ManagePage(),
      const OrderPage(),
    ]);
  }

  void _onItemTapped(int index) {
    if (_selectedIndex == index) {
      if (index == 0) {
        homeKey.currentState?.refreshData();
      }
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Page content
          IndexedStack(index: _selectedIndex, children: _pages),

          // Bottom navigation
          Positioned(
            left: 0,
            right: 0,
            bottom: 20, // Adjust this to position higher
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavItem(
                    iconPath: Assets.icons.icHomeUnselected.path,
                    label: "Home",
                    isActive: _selectedIndex == 0,
                    onTap: () => _onItemTapped(0),
                  ),
                  NavItem(
                    iconPath: Assets.icons.icPaymentsUnselected.path,
                    label: "Payments",
                    isActive: _selectedIndex == 1,
                    onTap: () => _onItemTapped(1),
                  ),
                  SizedBox(width: 20),
                  NavItem(
                    iconPath: Assets.icons.icManageUnselected.path,
                    label: "Manage",
                    isActive: _selectedIndex == 2,
                    onTap: () => _onItemTapped(2),
                  ),
                  NavItem(
                    iconPath: Assets.icons.icOrdersUnselected.path,
                    label: "Orders",
                    isActive: _selectedIndex == 3,
                    onTap: () => _onItemTapped(3),
                  ),
                ],
              ),
            ),
          ),

          // FAB on top
          Positioned(
            bottom: 80, // This should overlap with the navigation bar
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: 65,
                height: 65,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AddProduct();
                        },
                      ),
                    );
                  },
                  backgroundColor: AppColors.blueElectric,
                  shape: const CircleBorder(),
                  child: const Icon(
                    Icons.add,
                    size: 40,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
