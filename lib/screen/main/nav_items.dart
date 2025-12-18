import 'package:bitvault/screen/add_new_screen.dart';
import 'package:bitvault/screen/edit_screen.dart';
import 'package:bitvault/screen/list_screen.dart';
import 'package:bitvault/screen/main/nav_item.dart';
import 'package:bitvault/screen/search_screen.dart';
import 'package:flutter/material.dart';

const List<MainNavItem> mainNavItems = [
  MainNavItem(
    label: 'Search',
    icon: Icons.search,
    selectedIcon: Icons.search_outlined,
    screen: SearchScreen(),
  ),
  MainNavItem(
    label: 'Add',
    icon: Icons.add,
    selectedIcon: Icons.add_outlined,
    screen: AddNewScreen(),
  ),
  MainNavItem(
    label: 'Edit',
    icon: Icons.edit,
    selectedIcon: Icons.edit_outlined,
    screen: EditScreen(),
  ),
  MainNavItem(
    label: 'List',
    icon: Icons.list,
    selectedIcon: Icons.list_outlined,
    screen: ListScreen(),
  ),
];
