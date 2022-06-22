import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ProfileForm extends StatefulWidget {
  const ProfileForm({Key? key}) : super(key: key);

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

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
          buildFirstNameFormtext(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildLastNameFormtext(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPhoneFormtext(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildAddressFormtext(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {}
              })
        ],
      ),
    );
  }

  TextFormField buildAddressFormtext() {
    return TextFormField(
      //keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your Address",
        label: Text("Address"),
      ),
    );
  }

  TextFormField buildPhoneFormtext() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your PhoneNumber",
        label: Text("PhoneNumber"),
      ),
    );
  }

  TextFormField buildLastNameFormtext() {
    return TextFormField(
      //keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => lastName = newValue!,
      decoration: InputDecoration(
        hintText: "Enter your LastName",
        label: Text("LastName"),
      ),
    );
  }

  TextFormField buildFirstNameFormtext() {
    return TextFormField(
      //keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNameNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your FirstName",
        label: Text("FirstName"),
      ),
    );
  }
}
