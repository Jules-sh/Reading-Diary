library models;

import 'dart:collection' show UnmodifiableListView;

import 'package:reading_diary/models/wish.dart' show Wish;
import 'package:reading_diary/storage/storage.dart';

/// Represents a list
/// of all Wishes
class Wishlist {
  /// The actual list of wishes.
  static final List<Wish> _wishes = [];

  /// Getter for the List of all Wishes.
  static List<Wish> get wishes => UnmodifiableListView(_wishes);

  /// add the specified [wish] to
  /// the Wishlist
  static void addWish(Wish wish) {
    _wishes.add(wish);
    Storage.storeWishes();
  }

  /// Removes the specified [wish] from
  /// the Wishlist.
  static void deleteWish(Wish wish) {
    _wishes.remove(wish);
    Storage.storeWishes();
  }
}