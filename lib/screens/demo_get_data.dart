import 'package:flutter/material.dart';

import '../app-data/data_list.dart';
import '../model/common_model.dart';

class Demo1 extends StatefulWidget {
  const Demo1({Key? key}) : super(key: key);

  @override
  State<Demo1> createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  DemoData1 demo1 = DemoData1();
  DemoModel demoModel = DemoModel();

  @override
  void initState() {
    demoModel = DemoModel.fromJson(demo1.demoOneData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                // itemCount: demoModel.wifi?.length??"0",
                itemCount: 1,
                padding: const EdgeInsets.all(15),
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
                itemBuilder: (context, index) => Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "mbps: ${demoModel.wifi?.detail?[index].mbps}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "router: ${demoModel.wifi?.detail?[index].router ?? "no data"}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "ssd: ${demoModel.pc?.data?[index].prosesr ?? "no data"}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "prosesr: ${demoModel.pc?.data?[index].ssd ?? "no data"}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
