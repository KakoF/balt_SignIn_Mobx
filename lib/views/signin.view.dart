import 'package:flutter/material.dart';
import 'package:portfolio_napp/controllers/sigin.controller.dart';
import 'package:portfolio_napp/stores/app.store.dart';
import 'package:portfolio_napp/view-models/signin.viewmodels.dart';
import 'package:portfolio_napp/views/home.view.dart';
import 'package:provider/provider.dart';

class SigninView extends StatefulWidget {
  @override
  _SigninViewState createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {

  final _formKey = GlobalKey<FormState>();
  final _controller = new SiginController();
  var model = new SigninViewModel();

  @override
  Widget build(BuildContext context) {
    var store = Provider.of<AppStore>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Text('Portfolio'),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                    )
                  ),
                  validator: (value) {
                    if(value.isEmpty) {
                      return 'Email deve ser informado';
                    }
                    return null;
                  },
                  onSaved: (val){
                    model.email = val;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                    )
                  ),
                  validator: (value) {
                    if(value.isEmpty) {
                      return 'Senha deve ser informada';
                    }
                    return null;
                  },
                  onSaved: (val){
                    model.senha = val;
                  },
                ),
                SizedBox(
                  height: 20
                ),
                model.busy ? 
                Center(
                  child: Container(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.black,
                    ),),
                )
                : FlatButton(
                  color: Theme.of(context).primaryColor,
                  child: Text('Cadastrar'),
                  textColor: Colors.white ,
                  onPressed: () {
                    if(_formKey.currentState.validate()){
                      _formKey.currentState.save();
                    }
                    setState(() {});
                    _controller.login(model)
                      .then((data){
                        setState(() {});
                        store.setSession(data.status, data.token, data.refreshToken);
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => HomeView()));
                    })
                      .catchError((){
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}