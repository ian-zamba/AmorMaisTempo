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
      body: Stack(
        children: [
          // Fundo com imagem
          Positioned.fill(
            child: Image.asset(
              "assets/FundoAmorMaisTempo.png",
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft,
            ),
          ),
          // Conteúdo acima da imagem
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Image.asset("assets/AmorTempoLogo.png", width: 200.0),
                  SizedBox(height: 30),
                  TextField(
                    style: TextStyle(color: Color(0xFF9E2244)),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Digite seu Usuário",
                      hintStyle: TextStyle(color: Color(0xFF9E2244)),
                      prefixIcon: Icon(Icons.email, color: Color(0xFF9E2244)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    style: TextStyle(color: Color(0xFF9E2244)),
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Digite sua Senha",
                      hintStyle: TextStyle(color: Color(0xFF9E2244)),
                      prefixIcon: Icon(Icons.lock, color: Color(0xFF9E2244)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 140,
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
                            Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 6),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
