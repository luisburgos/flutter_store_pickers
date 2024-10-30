import 'package:flutter/material.dart';
import 'package:flutter_store_pickers/showcase/showcase_models.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/iconoir.dart';
import 'package:iconify_flutter/icons/lucide.dart';
import 'package:iconify_flutter/icons/mdi.dart';

final globalStores = {
  'a': ShowcaseStore(
    id: 'a',
    name: 'Cinema',
    description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
    brandHexColor: '#FF00FF',
    pickers: {
      'a1': ShowcaseStorePicker(
        id: 'a1',
        name: 'Popcorn',
        description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
        iconName: EmojioneMonotone.popcorn,
        builder: () => const Text('A1'),
      ),
      'a2': ShowcaseStorePicker(
        id: 'a2',
        name: 'Soda',
        description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
        iconName: Lucide.cup_soda,
        builder: () => const Text('A2'),
      ),
    },
  ),
  'b': ShowcaseStore(
    id: 'b',
    name: 'Clothing',
    description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
    brandHexColor: '#FFFF00',
    pickers: {
      'b1': ShowcaseStorePicker(
        id: 'b1',
        name: 'Jeans',
        description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
        iconName: Mdi.tshirt_crew,
        builder: () => const Text('B1'),
      ),
      'b2': ShowcaseStorePicker(
        id: 'b2',
        name: 'T-Shirt',
        description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
        iconName: Iconoir.pants,
        builder: () => const Text('B2'),
      ),
    },
  ),
};
