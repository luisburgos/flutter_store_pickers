import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/showcase/showcase_item.dart';

final globalStores = {
  'a': ShowcaseStore(
    id: 'a',
    name: 'Cinema',
    brandHexColor: '#FF00FF',
    pickers: {
      'a1': ShowcaseStorePicker(
        id: 'a1',
        name: 'Popcorn',
        builder: () => const Text('A1'),
      ),
      'a2': ShowcaseStorePicker(
        id: 'a2',
        name: 'Soda',
        builder: () => const Text('A2'),
      ),
    },
  ),
  'b': ShowcaseStore(
    id: 'b',
    name: 'Clothing',
    brandHexColor: '#FFFF00',
    pickers: {
      'b1': ShowcaseStorePicker(
        id: 'b1',
        name: 'Jeans',
        builder: () => const Text('B1'),
      ),
      'b2': ShowcaseStorePicker(
        id: 'b2',
        name: 'T-Shirt',
        builder: () => const Text('B2'),
      ),
    },
  ),
};
