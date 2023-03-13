import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:korzinkafull/mvvm/model/core/api/korzinka_api.dart';
import 'package:korzinkafull/mvvm/view_model/bloc/home_bloc/home_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeScreen extends StatefulWidget {
  static const route = "home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final bloc = HomeBloc(KorzinkaApi());
  final controller = RefreshController();
  final api=KorzinkaApi();

  @override
  void initState() {
    bloc.add(HomeInitEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          controller.refreshCompleted();
          controller.loadComplete();
        },
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Scaffold(
              body: Builder(builder: (context) {
                if (state.status == Status.loading && state.products.isEmpty) {
                  return const Center(child: CircularProgressIndicator());
                }
                return SmartRefresher(
                    controller: controller,
                  enablePullDown: true,
                  enablePullUp: true,
                  onRefresh: (){
                      bloc.add(HomeInitEvent());
                  },
                  onLoading: (){
                      bloc.add(HomeNextEvent());
                  },
                  child: GridView.builder(
                    itemCount: state.products.length,
                    itemBuilder: (_, i) {
                      final model = state.products[i];
                      print("============================================================================================================================================================================================");
                      print("==========================${model.name}");
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 100,
                          color: Colors.yellow,
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            "${model.name}",
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      );
                    },
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2
                    ),
                  ),
                );
              }),
              bottomNavigationBar: BottomNavigationBar(
                items: const [
                  BottomNavigationBarItem(
                    label: "Korzinka",
                    icon: Icon(CupertinoIcons.home, color: Colors.black,),
                  ),
                  BottomNavigationBarItem(
                    label: "Texnomart",
                    icon: Icon(Icons.category, color: Colors.black,),
                  ),
                  BottomNavigationBarItem(
                    label: "Texnomart",
                    icon: Icon(Icons.category, color: Colors.black,),
                  ),
                  BottomNavigationBarItem(
                    label: "Texnomart",
                    icon: Icon(Icons.category, color: Colors.black,),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
