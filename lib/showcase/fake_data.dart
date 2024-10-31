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
  brandHexColor: '#295999',
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
  builder: (store) => PopcornPickerWidget(hexColor: store.brandHexColor),
);

const sodaPickerId = 'soda';
final sodaPicker = StorePicker(
  id: sodaPickerId,
  name: 'Soda',
  description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
  iconName: Lucide.cup_soda,
  builder: (store) => SodaPickerWidget(
    hexColor: store.brandHexColor,
  ),
);

const clothingStoreId = 'clothing';
final clothingStore = Store(
  id: clothingStoreId,
  name: 'Clothing',
  description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
  brandHexColor: '#CC071E',
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
  builder: (store) => JeansPickerWidget(
    hexColor: store.brandHexColor,
  ),
);

const tShirtPickerId = 't-shirt';
final tShirtPicker = StorePicker(
  id: tShirtPickerId,
  name: 'T-Shirt',
  description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
  iconName: Iconoir.pants,
  builder: (store) => TShirtPickerWidget(
    hexColor: store.brandHexColor,
  ),
);
