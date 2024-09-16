import 'package:atm_consultoria/company_page.dart';
import 'package:atm_consultoria/contact_page.dart';
import 'package:atm_consultoria/customer_page.dart';
import 'package:atm_consultoria/services_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openCompanyPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const CompanyPage()));
  }

  void _openContactPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactPage()));
  }

  void _openServicePage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ServicesPage()));
  }

  void _openCustomerPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomerPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: _openCompanyPage,
                      child: Image.asset("images/menu_empresa.png")),
                  GestureDetector(
                      onTap: _openServicePage,
                      child: Image.asset("images/menu_servico.png"))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: _openCustomerPage,
                      child: Image.asset("images/menu_cliente.png")),
                  GestureDetector(
                      onTap: _openContactPage,
                      child: Image.asset("images/menu_contato.png"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
