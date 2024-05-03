import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myproject/src/dashbord/cubit/dashboard_cubit.dart';
import 'package:myproject/src/dashbord/favorite/view/page/favorite_page.dart';
import 'package:myproject/src/dashbord/modules/product/view/page/product_page.dart';
import 'package:myproject/src/dashbord/new_product/view/page/new_product_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    // DashboardCubit cont = DashboardCubit();
    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          DashboardCubit cont = context.read<DashboardCubit>();
          return Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                  onPressed: () {
                    // Navigate to the login page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NewProductPage()),
                    );
                  },
                  icon: const Icon(CupertinoIcons.plus),
                ),
              ],
            ),
            body: PageView(
              controller: cont.pageController,
              onPageChanged: cont.onChangeTap,
              children: const [
                ProductPage(),
                favoritePage(),
                Text('Cart'),
                Text('Profile'),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.grey,
              currentIndex: cont.currentIndex,
              onTap: cont.onChangeTap,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.collections), label: 'Ptoduct'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.heart), label: 'Favorite'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.cart), label: 'Cart'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.profile_circled),
                    label: 'Profile'),
              ],
            ),
          );
        },
      ),
    );
  }
}
