import 'package:aves/model/source/section_keys.dart';
import 'package:flutter/foundation.dart';

class CollapsedSections extends ChangeNotifier {
  final Set<SectionKey> _collapsedKeys = {};

  bool isCollapsed(SectionKey key) => _collapsedKeys.contains(key);

  void toggle(SectionKey key) {
    if (_collapsedKeys.contains(key)) {
      _collapsedKeys.remove(key);
    } else {
      _collapsedKeys.add(key);
    }
    notifyListeners();
  }

  Set<SectionKey> get collapsedKeys => Set.unmodifiable(_collapsedKeys);
}
