import 'package:flutter/material.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => CustomerPageState();
}

class CustomerPageState extends State<CustomerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Customers', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("images/detalhe_cliente.png"),
                const Text(
                  "Clientes",
                  style: TextStyle(color: Colors.lightGreen, fontSize: 18),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22),
              child: Column(
                  children: [
                    Image.asset("images/cliente1.png"),
                    const Text("Empresa de software", style: TextStyle(fontSize: 14),),
                    Image.asset("images/cliente2.png"),
                    const Text("Empresa de auditoria", style: TextStyle(fontSize: 14),)
                  ],
              )
            )
          ],
        ),
      ),
    );
  }
}