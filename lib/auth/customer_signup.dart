import 'package:flutter/material.dart';

class CustomerRegister extends StatefulWidget {
  const CustomerRegister({Key? key}) : super(key: key);

  @override
  State<CustomerRegister> createState() => _CustomerRegisterState();
}

bool isVisible = false;

@override
void initState() {
  isVisible = true;
}

class _CustomerRegisterState extends State<CustomerRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Center(
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                reverse: true,
                child: AuthHeaderLabel(
                  headerLabel: 'Sign Up',
                ),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.purple,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.camera_alt),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.photo),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    )
                  ],
                )
              ],
            ),
            TextFormField(
              decoration: labelText.copyWith(
                  labelText: 'Full Name', hintText: 'Enter your Full Name'),
            ),
            TextFormField(
              decoration: labelText.copyWith(
                  labelText: 'Email', hintText: 'Enter your Email'),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: !isVisible,
              decoration: labelText.copyWith(
                labelText: 'Password',
                hintText: 'Enter your password',
                prefixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    icon: Icon(
                      isVisible ? Icons.visibility : Icons.visibility_off,
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Already have an account ?  ',
                  style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Material(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(25),
                child: MaterialButton(
                  minWidth: double.infinity,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/customer_home');
                  },
                  child: const Text(
                    'Sign up ',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AuthHeaderLabel extends StatelessWidget {
  final String headerLabel;

  const AuthHeaderLabel({Key? key, required this.headerLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            headerLabel,
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/welcome_screen');
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}

var labelText = InputDecoration(
  labelText: 'Password',
  hintText: 'Enter your password',
  border: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.purple, width: 1),
      borderRadius: BorderRadius.circular(25)),
  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.deepPurpleAccent, width: 2),
    borderRadius: BorderRadius.circular(25),
  ),
);
