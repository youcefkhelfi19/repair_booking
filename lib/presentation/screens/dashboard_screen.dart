import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helper/app_colors.dart';
import '../../helper/app_routes.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/dashboard_listtile.dart';
import 'delivered_devices.dart';
import 'devices_list.dart';



class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Repair CW'),

      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 50,
              width: 260,
              child: MaterialButton(
                height: 50,
                padding: const EdgeInsets.all(3),
                onPressed: () =>Get.toNamed(addDevice),
                color: mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/add.png',
                      height: 40,
                      width: 40,
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'add_device'.tr,
                          style: const TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            Column(
              children: [
                DashBoardListTile(
                  title: 'pending_devices'.tr,
                  image: 'pending',
                  onTap: () {
                    Get.to(()=>const DevicesList(index: 0,));
                  },
                ),

                DashBoardListTile(
                  title: 'repair_in_progress'.tr,
                  image: 'progress',
                  onTap: () {
                    Get.to(()=>const DevicesList(index: 1,));

                  },
                ),

                DashBoardListTile(
                  title: 'completed_repair'.tr,
                  image: 'completed',
                  onTap: () {  Get.to(()=>const DevicesList(index: 2,));},
                ),

                DashBoardListTile(
                  title: 'cancelled_repair'.tr,
                  image: 'canceled',
                  onTap: () {
                    Get.to(()=>const DevicesList(index: 3,));

                  },
                ),
                DashBoardListTile(
                  title: 'delivered_devices'.tr,
                  image: 'delivered',
                  onTap: () {  Get.to(()=>const DeliveredDevices());},
                ),

              ],
            ),
            const Spacer()
          ],
        ),
      ),
      drawer:  CustomDrawer(),
    );
  }
}



