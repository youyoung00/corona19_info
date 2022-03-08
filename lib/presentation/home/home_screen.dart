import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final viewModel = context.read<HomeViewModel>();
      viewModel.fetchBody();
      _subscription = viewModel.eventStream.listen((event) {
        event.when(snackBar: (message) {
          final snackBar = SnackBar(content: Text(message));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("KMA 코로나 팩트"),
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Text(state.mainInfo[0].apiName),
                Text(state.mainInfo[0].updateTime),
                const Divider(),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.info.length,
                    itemBuilder: (context, i) {
                      return Column(
                        children: [
                          ListTile(
                            leading: Text(state.info[i].countryNm),
                            title: Text(
                              "Death Count: ${state.info[i].deathCnt}",
                            ),
                            subtitle: Text(
                              "incDec: ${state.info[i].incDec}",
                            ),
                          ),
                          const Divider(),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
