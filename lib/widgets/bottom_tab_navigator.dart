import 'package:dropnote/theme.dart';
import 'package:flutter/material.dart';

class BottomTabNavigation extends StatelessWidget {
  final void Function(int) onTap;
  final int selectedIndex;

  const BottomTabNavigation({
    super.key,
    required this.onTap,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 2.0,
            color: DropNote.colors.disabled,
          ),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: DropNote.colors.background,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: DropNote.colors.primary,
        unselectedItemColor: DropNote.colors.disabled,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        onTap: onTap,
        items: [
          navItem(Icons.search),
          navItem(Icons.folder_outlined),
          navItem(Icons.notifications_outlined),
          navItem(Icons.person_outline),
        ],
      ),
    );
  }
}

BottomNavigationBarItem navItem(IconData icon) => BottomNavigationBarItem(
      label: "",
      icon: Icon(icon, color: DropNote.colors.foreground),
      activeIcon: Icon(icon, color: DropNote.colors.primary),
    );
