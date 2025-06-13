import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: unused_import
import 'package:quickbill/presentation/home/bloc/category/category_bloc.dart';


import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';
import '../../../data/datasources/auth_local_datasource.dart';

import '../../auth/pages/login_page.dart';
import '../../home/bloc/product/product_bloc.dart';
import '../bloc/bloc/logout_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = "";
  String phone = "";
  String email = "";

  Future<void> getUserData() async {
    final user = await AuthLocalDatasource().getAuthData();

    setState(() {
      name = user.user.name;
      email = user.user.email;
      phone = user.user.phone;
      print(phone);
    });
  }

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          "Profile",
          style: TextStyle(
            color: AppColors.blueElectric,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        controller: TextEditingController(text: name),
                        enabled: false,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    SizedBox(height: 16),

                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        controller: TextEditingController(text: email),
                        enabled: false,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    SizedBox(height: 16),

                    Text(
                      'No Phone',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        controller: TextEditingController(text: phone),
                        enabled: false,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),

              SizedBox(height: 24),

              BlocConsumer<LogoutBloc, LogoutState>(
                listener: (context, state) {
                  state.maybeMap(
                    orElse: () {},
                    success: (value) {
                      AuthLocalDatasource().removeAuthData();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                  );
                },
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: () {
                      context.read<LogoutBloc>().add(
                        const LogoutEvent.logout(),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: AppColors.white,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      'Logout',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
