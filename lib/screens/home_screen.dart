import 'package:auto_route/auto_route.dart';
import 'package:auto_router_integration/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(const ProfileRoute());
              },
              child: const Text('Go To Profile screen'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(const AboutRoute());
              },
              child: const Text('Go To About Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
