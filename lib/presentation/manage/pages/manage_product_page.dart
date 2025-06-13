import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';
import '../bloc/manage_product/manage_product_bloc.dart';
import '../widgets/menu_product_item.dart';

class ManageProductPage extends StatefulWidget {
  const ManageProductPage({super.key});

  @override
  State<ManageProductPage> createState() => _ManageProductPageState();
}

class _ManageProductPageState extends State<ManageProductPage> {
  final List<Map<String, String>> products = [];
  @override
  void initState() {
    context.read<ManageProductBloc>().add(
      const ManageProductEvent.getProducts(),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            Assets.icons.icArrowBack.path,
            width: 30,
            height: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "Manage Product",
          style: TextStyle(
            color: AppColors.blueElectric,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: BlocBuilder<ManageProductBloc, ManageProductState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            success:
                (products) => SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Product List",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blueElectric,
                          ),
                        ),
                        SizedBox(height: 10),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            return MenuProductItem(data: products[index]);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
            error: (message) => Center(child: Text(message)),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
