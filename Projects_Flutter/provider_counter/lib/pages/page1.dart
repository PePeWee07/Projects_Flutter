import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/providers/counter_provider.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    final counterProviderWatch = context.watch<CounterProvider>();
    final counterProviderRead = context.read<CounterProvider>();
    final scaffoldContext = ScaffoldMessenger.of(context);


  
    return Center(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text(counterProviderWatch.getCounter.toString(), style: const TextStyle(fontSize: 50)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  scaffoldContext.showSnackBar(
                    const SnackBar(
                      content: Text('Resultado en page 2'),
                      duration: Duration(seconds: 3),
                    ),
                  );
                },
                child: const Text('+'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 50, // Establece un ancho para el TextField
                child: TextField(
                  onChanged: (value) {
                    counterProviderRead.setInt(value: int.parse(value));
                  },
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: counterProviderWatch.getNumberToAdd.toString(),
                  ),
                ),
              ),
            ),
          ],
        ),

        //Text(counterProviderWatch.getCounter.toString(),style: const TextStyle(fontSize: 50)),

        ElevatedButton(
            onPressed: () {
              counterProviderRead.increment();
            },
            child: const Text('Increment'))
      ],
    ));
  }
}
