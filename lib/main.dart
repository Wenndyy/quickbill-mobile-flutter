import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickbill/data/datasources/order_remote_datasource.dart';
import 'package:quickbill/data/datasources/qris_remote_datasource.dart';
// import 'package:quickbill/data/datasources/product_local_datasource.dart';
import 'package:quickbill/presentation/home/bloc/category/category_bloc.dart';
import 'package:quickbill/presentation/home/bloc/product/product_bloc.dart';
import 'package:quickbill/presentation/order/bloc/qris/qris_bloc.dart';
import 'package:quickbill/presentation/order/bloc/send_order/send_order_bloc.dart';


import 'data/datasources/auth_local_datasource.dart';
import 'data/datasources/auth_remote_datasource.dart';
// import 'data/datasources/order_remote_datasource.dart';
import 'data/datasources/product_remote_datasource.dart';
import 'presentation/auth/bloc/login/login_bloc.dart';
import 'presentation/auth/pages/login_page.dart';
import 'presentation/home/bloc/checkout/checkout_bloc.dart';
import 'presentation/home/pages/dashboard_page.dart';
// import 'presentation/manage/bloc/manage_product/manage_product_bloc.dart';
import 'presentation/manage/bloc/manage_product/manage_product_bloc.dart';
import 'presentation/order/bloc/order/order_bloc.dart';
// import 'presentation/payments/bloc/history/history_bloc.dart';
import 'presentation/payments/bloc/history/history_bloc.dart';
import 'presentation/profile/bloc/bloc/logout_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginBloc(AuthRemoteDatasource())),
        BlocProvider(create: (context) => LogoutBloc(AuthRemoteDatasource())),
        BlocProvider(
          create: (context) => ProductBloc(ProductRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => CategoryBloc(ProductRemoteDatasource()),
        ),
        BlocProvider(create: (context) => CheckoutBloc()),
        BlocProvider(create: (context) => OrderBloc()),
        BlocProvider(create: (context) => HistoryBloc()),
        BlocProvider(
          create: (context) => SendOrderBloc(OrderRemoteDatasource()),
        ),
        BlocProvider(
          create:
              (context) =>
                  ManageProductBloc(ProductRemoteDatasource())
                    ..add(const ManageProductEvent.getProducts()),
        ),
        BlocProvider(create: (context) => QrisBloc(QrisRemoteDatasource())),
      
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Poppins',
          primarySwatch: Colors.teal,
          primaryColor: Colors.teal,
        ),
        debugShowCheckedModeBanner: false,
        home: FutureBuilder<bool>(
          future: AuthLocalDatasource().isAuth(),
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data == true) {
              return const DashboardPage();
            } else {
              return const LoginPage();
            }
          },
        ),
      ),
    );
  }
}
