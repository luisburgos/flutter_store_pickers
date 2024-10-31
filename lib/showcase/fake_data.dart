import 'package:flutter_store_pickers/showcase/models.dart';
import 'package:flutter_store_pickers/showcase/pickers/pickers.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/iconoir.dart';
import 'package:iconify_flutter/icons/lucide.dart';
import 'package:iconify_flutter/icons/mdi.dart';

final globalStores = {
  cinemaStoreId: cinemaStore,
  clothingStoreId: clothingStore,
};

const cinemaStoreId = 'cinema';
final cinemaStore = Store(
  id: cinemaStoreId,
  name: 'Cinema',
  description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
  brandHexColor: '#FF00FF',
  pickers: {
    popcornPickerId: popcornPicker,
    sodaPickerId: sodaPicker,
  },
);

const popcornPickerId = 'popcorn';
final popcornPicker = StorePicker(
  id: popcornPickerId,
  name: 'Popcorn',
  description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
  iconName: EmojioneMonotone.popcorn,
  builder: () => const PopcornPickerWidget(),
);

const sodaPickerId = 'soda';
final sodaPicker = StorePicker(
  id: sodaPickerId,
  name: 'Soda',
  description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
  iconName: Lucide.cup_soda,
  builder: () => const SodaPickerWidget(),
);

const clothingStoreId = 'clothing';
final clothingStore = Store(
  id: clothingStoreId,
  name: 'Clothing',
  description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
  brandHexColor: '#FFFF00',
  pickers: {
    jeansPickerId: jeansPicker,
    tShirtPickerId: tShirtPicker,
  },
);

const jeansPickerId = 'jeans';
final jeansPicker = StorePicker(
  id: jeansPickerId,
  name: 'Jeans',
  description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
  iconName: Mdi.tshirt_crew,
  builder: () => const JeansPickerWidget(),
);

const tShirtPickerId = 't-shirt';
final tShirtPicker = StorePicker(
  id: tShirtPickerId,
  name: 'T-Shirt',
  description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
  iconName: Iconoir.pants,
  builder: () => const TShirtPickerWidget(),
);
