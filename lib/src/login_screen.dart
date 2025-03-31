import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Color(0xFFB6335F), Color(0xFFF1867C)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 30.0,
            children: [
              SizedBox(height: 30),
              Image.asset("assets/AmorTempoLogo.png", width: 200.0),
              TextField(
                style: TextStyle(color: Colors.white),
                //controller: controller,
                //onChanged: (text) {
                //  setState(() {
                //    texto = text;
                //  });
                //},
                decoration: InputDecoration(
                  fillColor: Color(0xFF15FFFFFF),
                  filled: true,
                  hintText: "Dgite seu Usuario",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(144, 255, 255, 255),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: const Color.fromARGB(144, 255, 255, 255),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              ),
              TextField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                //controller: controller,
                //onChanged: (text) {
                //  setState(() {
                //    texto = text;
                //  });
                //},
                decoration: InputDecoration(
                  fillColor: Color(0xFF15FFFFFF),
                  filled: true,
                  hintText: "Dgite sua Senha",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(144, 255, 255, 255),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: const Color.fromARGB(144, 255, 255, 255),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              ),
              //ElevatedButton(
              //onPressed: () {
              //Navigator.push(
              //  context,
              //  MaterialPageRoute(builder: (context) => LoginScreen()),
              //);
              // },
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 120,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // Ação do botão
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF9E2244),
                      padding: EdgeInsets.symmetric(horizontal: 12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Login', style: TextStyle(color: Colors.white)),
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
