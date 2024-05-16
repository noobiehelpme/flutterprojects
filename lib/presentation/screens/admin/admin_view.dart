import 'package:flutter/material.dart';
import 'package:gauthentication/presentation/screens/admin/activity/activity_view.dart';
import 'package:gauthentication/presentation/screens/admin/resource/resource_view.dart';
import 'package:gauthentication/presentation/screens/admin/roles/roles_view.dart';
import 'package:gauthentication/presentation/widgets/admin_appbar.dart';
import 'package:gauthentication/presentation/widgets/admin_cards.dart';

class AdminView extends StatelessWidget {
  const AdminView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: KAppBar(size: const Size(double.maxFinite, 120)),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              KCards(
                hinttext: 'Users',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const RoleView()),
                    ),
                  );
                },
              ),
              KCards(
                hinttext: 'Role',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const RoleView()),
                    ),
                  );
                },
              ),
              KCards(
                hinttext: 'Resource',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const ResourceView()),
                    ),
                  );
                },
              ),
              KCards(
                hinttext: 'Activity',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const ActivityView()),
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
