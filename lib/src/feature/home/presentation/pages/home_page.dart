
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning_final/src/feature/home/presentation/widgets/home_main_button.dart';

import '../../view_model/home_vm.dart';

class HomePage extends ConsumerStatefulWidget {

  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState()  => _DetailPageState();
}

class _DetailPageState extends ConsumerState<HomePage> {

  @override
  void initState() {

    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void didUpdateWidget(covariant HomePage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (context, ref, _) {
            ref.watch(homeRef);
            return Text("Counter: ${ref.read(homeRef.notifier).counter}", style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),);
          }
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HomeMainButton(
            onPressed: (){
              ref.read(homeRef).increment();
            },
            text: "+",
          ),
          HomeMainButton(
            onPressed: (){
              ref.read(homeRef).decrement();
            },
            text: "-",
          )
        ],
      ),
    );
  }
}
