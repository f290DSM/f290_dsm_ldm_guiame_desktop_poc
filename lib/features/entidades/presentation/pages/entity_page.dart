import 'package:f290_dsm_ldm_guiame_desktop_poc/features/entidades/presentation/pages/entity_form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EntityTypePage extends ConsumerWidget {
  const EntityTypePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos de Entidades'),
        actions: [
          FilledButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EntityFormPage(),
                  ));
            },
            child: const Text('Cadastrar'),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) => ListTile(
          leading: Text(index.toString()),
          title: Text('Linha: $index'),
        ),
      ),
    );
  }
}
