import 'package:flutter/material.dart';
import 'package:gadgets/screens/profile/profile_screen.dart';

import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? Password;
  String? confm_password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmailFormtext(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassFormtext(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildConfmPassFormtext(),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, ProfileScreen.routeName);
                }
              })
        ],
      ),
    );
  }

  TextFormField buildConfmPassFormtext() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confm_password = newValue!,
      onChanged: (value) {
        if (Password == confm_password) {
          removeError(error: kMatchPassError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          return "";
        } else if (Password != value) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Re-Enter the Password",
        label: Text("Conform Password"),
      ),
    );
  }

  TextFormField buildPassFormtext() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => Password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        Password = value;
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter the Password",
        label: Text("Password"),
      ),
    );
  }

  TextFormField buildEmailFormtext() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter the Email",
        label: Text("Email"),
      ),
    );
  }
}
