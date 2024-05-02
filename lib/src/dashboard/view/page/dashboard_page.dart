import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myproject/src/dashboard/cubit/dashboard_cubit.dart';
import 'package:myproject/src/dashboard/modules/product/view/page/product_page.dart';

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
            appBar: AppBar(),
            body: PageView(
              controller: cont.pageController,
              onPageChanged: cont.onChangeTap,
              children: const [
                ProductPage(),
                Text('Favorite'),
                Text('Cart'),
                Text('Profile'),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.grey,
              currentIndex: cont.currentIndex,
              onTap: cont.onChangeTap,
              showUnselectedLabels: true,
              unselectedLabelStyle:
                  const TextStyle(fontSize: 15, color: Colors.grey),
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
