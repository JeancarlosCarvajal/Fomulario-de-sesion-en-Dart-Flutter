import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier { 
  // es formstate porue es la llave del formulario, si fuera otra cosa seria otracosaState
  // es para tener la referencia al formulario
  GlobalKey<FormState> formKey = new GlobalKey<FormState>(); 

  String email    = '';
  String password = '';

  bool isValidForm() { 
    print('$email - $password');
    print(formKey.currentState?.validate()); // formKey.currentState es el build context en donde esta construido esta clave KEY asociada
    return formKey.currentState?.validate() ?? false;
  }

}