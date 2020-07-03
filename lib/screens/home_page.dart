import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:hierarchicalstateexample/screens/home_page_state.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<HomePageStateNotifier, HomePageState>(
      create: (_) => HomePageStateNotifier(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Hierarchical State Example'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.read<HomePageStateNotifier>().updateUser(),
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        body: Builder(
          builder: (context) {
            return context
                .select<HomePageState, HomePageState>((state) => state)
                .when(
                  blank: () => _buildBlankBody(),
                  ideal: (IdealData data) => _buildIdealBody(context, data),
                  error: () => _buildErrorBody(),
                ); // This trailing comma makes auto-formatting nicer for build methods.
          },
        ),
      ),
    );
  }

  Widget _buildBlankBody() {
    return Center(child: Text("blank"));
  }

  Widget _buildErrorBody() {
    return Center(child: Text("Error"));
  }

  Widget _buildIdealBody(BuildContext context, IdealData data) {
    var user = data.user;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          Image.asset(
            user.assetPath,
            width: 200,
            height: 200,
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }
}
