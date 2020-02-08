import 'package:flutter/material.dart';
import '../Localization/ِApplocalization.dart';

class CreatAccount extends StatefulWidget {
  @override
  _CreatAccountState createState() => _CreatAccountState();
}

class _CreatAccountState extends State<CreatAccount> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;

  final _passwordFocusNode = FocusNode();
  @override
  void dispose() {
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  void save() {
    final isvalid = _formKey.currentState.validate();
    if (!isvalid) {
      return;
    }
    _formKey.currentState.save();
  }

  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 50.0),
      margin: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 50.0),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1.0),
        border: Border.all(color: Colors.blueGrey),
        borderRadius: new BorderRadius.all(const Radius.circular(6.0)),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context).translate('email'),
              ),
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_passwordFocusNode);
              },
              validator: (value) {
                if (value.isEmpty) {
                  return AppLocalizations.of(context)
                      .translate('key_please_enter_valid_email');
                }
                return null;
              },
              onSaved: (value) {
                email = value;
              },
            ),

            TextFormField(
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context).translate('password'),
              ),
              focusNode: _passwordFocusNode,
              obscureText: _obscureText,
              validator: (value) {
                if (value.isEmpty) {
                  return AppLocalizations.of(context)
                      .translate('key_please_enter_valid_password');
                }
                if (value.length < 6) {
                  return AppLocalizations.of(context)
                      .translate('key_must_be_at_least_6_characters');
                }

                return null;
              },
              onSaved: (value) {
                password = value;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context).translate('Confirm_Password'),
              ),
              focusNode: _passwordFocusNode,
              obscureText: _obscureText,
              validator: (value) {
                if (value.isEmpty) {
                  return AppLocalizations.of(context)
                      .translate('key_please_enter_valid_password');
                }
                if (value.length < 6) {
                  return AppLocalizations.of(context)
                      .translate('key_must_be_at_least_6_characters');
                }

                return null;
              },
              onSaved: (value) {
                password = value;
              },
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              height: 50,
              color: Color.fromRGBO(213, 100, 80, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: _toggle,
              child: Text(
                _obscureText
                    ? AppLocalizations.of(context).translate('Show_password')
                    : AppLocalizations.of(context).translate('Hide_password'),
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: save,
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                padding: EdgeInsets.all(15.0),
                alignment: FractionalOffset.center,
                decoration: new BoxDecoration(
                  color: const Color.fromRGBO(45, 42, 39, 1),
                  borderRadius:
                      new BorderRadius.all(const Radius.circular(30.0)),
                ),
                child: Text(
                  AppLocalizations.of(context).translate('Sing_Up'),
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
