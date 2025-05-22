import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection_container.dart' as di;
import 'features/product/presentation/pages/product_page.dart';
import 'features/product/presentation/bloc/product_bloc.dart';

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce App',
      home: BlocProvider(
        create: (_) => di.sl<ProductBloc>()..add(FetchProducts()),
        child: const ProductPage(),
      ),
    );
  }
}
