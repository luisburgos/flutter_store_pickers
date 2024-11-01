import 'package:flutter_store_pickers/showcase/models.dart';
import 'package:flutter_store_pickers/showcase/stores/pickers.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/iconoir.dart';
import 'package:iconify_flutter/icons/lucide.dart';
import 'package:iconify_flutter/icons/mdi.dart';

final showcaseData = ShowcaseData(
  title: 'Store Pickers',
  description: 'Lorem ipsum lorem ipsum lorem ipsum lorem '
      'ipsum lorem ipsum lorem ipsum ipsum',
  groups: {
    cinemaStoreId: cinemaStore,
    clothingStoreId: clothingStore,
  },
);

const cinemaStoreId = 'cinema';
final cinemaStore = ShowcaseGroupData(
  id: cinemaStoreId,
  title: 'Cinema',
  description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
  hexColor: '#295999',
  items: {
    popcornPickerId: popcornPicker,
    sodaPickerId: sodaPicker,
  },
);

const popcornPickerId = 'popcorn';
final popcornPicker = ShowcaseItemData(
  id: popcornPickerId,
  title: 'Popcorn',
  description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
  iconName: EmojioneMonotone.popcorn,
  viewBuilder: (group) => PopcornPickerWidget(
    hexColor: group.hexColor,
  ),
);

const sodaPickerId = 'soda';
final sodaPicker = ShowcaseItemData(
  id: sodaPickerId,
  title: 'Soda',
  description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
  iconName: Lucide.cup_soda,
  viewBuilder: (group) => SodaPickerWidget(
    hexColor: group.hexColor,
  ),
);

const clothingStoreId = 'clothing';
final clothingStore = ShowcaseGroupData(
  id: clothingStoreId,
  title: 'Clothing',
  description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
  hexColor: '#CC071E',
  items: {
    jeansPickerId: jeansPicker,
    tShirtPickerId: tShirtPicker,
  },
);

const jeansPickerId = 'jeans';
final jeansPicker = ShowcaseItemData(
  id: jeansPickerId,
  title: 'Jeans',
  description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum',
  iconName: Mdi.tshirt_crew,
  viewBuilder: (group) => JeansPickerWidget(
    hexColor: group.hexColor,
  ),
);

const tShirtPickerId = 't-shirt';
final tShirtPicker = ShowcaseItemData(
  id: tShirtPickerId,
  title: 'T-Shirt',
  description: 'TODO: Loremp ipsum lorem ipsum lorem ipsum '
      'lorem ipsum lorem ipsum ',
  iconName: Iconoir.pants,
  viewBuilder: (group) => TShirtPickerWidget(
    hexColor: group.hexColor,
  ),
);
