import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:hierarchicalstateexample/exceptions/app_exception.dart';
import 'package:hierarchicalstateexample/screens/home/home_page_state.dart';
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
        body: Builder(
          builder: (context) {
            return context
                .select<HomePageState, HomePageState>((state) => state)
                .when(
                  blank: () => _buildBlankBody(),
                  shouldLogin: () => _buildShouldLoginBody(context),
                  ideal: (IdealData data) => _buildIdealBody(context, data),
                  error: (AppException e) => _buildErrorBody(),
                ); // This trailing comma makes auto-formatting nicer for build methods.
          },
        ),
      ),
    );
  }

  Widget _buildShouldLoginBody(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(child: Text("Please Login!")),
        FlatButton(
          child: Text("tap me!"),
          onPressed: () {
            _showDialog(context);
          },
        ),
      ],
    );
  }

  void _showDialog(BuildContext contexta) {
    showDialog<void>(
      context: contexta,
      builder: (context) {
        return SimpleDialog(
          title: Text("ユーザ選択"),
          children: <Widget>[
            SimpleDialogOption(
              child: Text("たろう"),
              onPressed: () {
                // 本来はテキスト入力とかで値を得るが、exampleなのでベタでIDを入れちゃう
                contexta.read<HomePageStateNotifier>().login(111);
                Navigator.pop(context, true);
              },
            ),
            SimpleDialogOption(
              child: Text("はなこ"),
              onPressed: () {
                contexta.read<HomePageStateNotifier>().login(222);
                Navigator.pop(context, true);
              },
            ),
          ],
        );
      },
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
          ),
          FlatButton(
            child: Text("別のユーザでログインする"),
            onPressed: () {
              _showDialog(context);
            },
          ),
        ],
      ),
    );
  }
}
