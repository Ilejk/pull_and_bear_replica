import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// const SizedBox(
//               height: SizeManager.s28,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: PaddingManager.p28,
//                 right: PaddingManager.p28,
//               ),
//               child: StreamBuilder<bool>(
//                 stream: _viewModel.outputIsPasswordValid,
//                 builder: (context, snapshot) {
//                   return TextFormField(
//                     controller: _passwordController,
//                     keyboardType: TextInputType.visiblePassword,
//                     decoration: InputDecoration(
//                       hintText: StringsManager.password,
//                       labelText: StringsManager.password,
//                       errorText: (snapshot.data ?? true)
//                           ? null
//                           : StringsManager.passwordError,
//                     ),
//                   );
//                 },
//               ),
//             ),