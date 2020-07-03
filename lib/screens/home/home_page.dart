import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:hierarchicalstateexample/app_state.dart';
import 'package:hierarchicalstateexample/exceptions/app_exception.dart';
import 'package:hierarchicalstateexample/models/dummy_users.dart';
import 'package:hierarchicalstateexample/models/user.dart';
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
        drawer: _buildDrawer(context),
        body: Builder(
          builder: (context) {
            return context
                .watch<HomePageState>()
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

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Card(
              child: Center(
                child: context.watch<AppState>().when(
                      loggedOut: () => Text("logout"),
                      loggedIn: (User user) => Row(
                        children: <Widget>[
                          Text(user.name),
                          Image.asset(
                            user.assetPath,
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                      error: (AppException e) => Text("error"),
                    ),
              ),
            ),
          ),
          ListTile(
            title: Text("アイテム１"),
            dense: true,
            onTap: () {},
          ),
          ListTile(
            title: Text("アイテム２"),
            dense: true,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildShouldLoginBody(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "ログインしてください!",
            style: TextStyle(fontSize: 30),
          ),
          FlatButton(
            color: Colors.deepOrangeAccent,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("ログイン"),
            ),
            onPressed: () {
              _showDialog(context);
            },
          ),
        ],
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return SimpleDialog(
          title: Text("ユーザ選択"),
          children: <Widget>[
            _buildDialogItem(context, DummyUsers.taro()),
            _buildDialogItem(context, DummyUsers.hanako()),
            _buildDialogItem(context, DummyUsers.youko()),
            _buildDialogItem(context, DummyUsers.hideo()),
          ],
        );
      },
    );
  }

  SimpleDialogOption _buildDialogItem(BuildContext context, User user) {
    return SimpleDialogOption(
      child: Row(
        children: <Widget>[
          Image.asset(
            user.assetPath,
            width: 50,
            height: 50,
            fit: BoxFit.fill,
          ),
          Text(user.name),
        ],
      ),
      onPressed: () {
        // 本来はテキスト入力とかで値を得るが、exampleなのでベタでIDを入れちゃう
        context.read<HomePageStateNotifier>().login(user.id);
        Navigator.pop(context, true);
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
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("別のユーザでログインする"),
            ),
            onPressed: () {
              _showDialog(context);
            },
          ),
          FlatButton(
            color: Colors.blueGrey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("ログアウトする"),
            ),
            onPressed: () {
              context.read<HomePageStateNotifier>().logout();
            },
          ),
        ],
      ),
    );
  }
}
