import 'package:flutter/material.dart';
import 'package:mobile/constants/project_constants.dart';

class CustomBottomNavigationBar extends BottomNavigationBar {
  CustomBottomNavigationBar({
    super.key,
    required super.currentIndex,
    required super.onTap,
    required NavigationBarType type
  }) : super(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: ProjectConstants.selectionColorNavigationBar,
    unselectedItemColor: ProjectConstants.unselectedColorNavigationBar,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    items: _getItemsForType(type),
  );

  static List<BottomNavigationBarItem> _getItemsForType(NavigationBarType type) {
    switch (type) {
      case NavigationBarType.customer:
        return _customerItems;
      case NavigationBarType.producer:
        return _producerItems;
      case NavigationBarType.delivery:
        return _deliveryItems;
      default:
        return _noAuthItems;
    }
  }

  static const List<BottomNavigationBarItem> _noAuthItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.add_business_outlined),
      activeIcon: Icon(Icons.add_business),
      label: "Become a Producer"
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.content_paste_outlined),
        activeIcon: Icon(Icons.content_paste),
        label: "Orders"
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_bag_outlined),
        activeIcon: Icon(Icons.shopping_bag),
        label: "Shopping"
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart_outlined),
        activeIcon: Icon(Icons.shopping_cart),
        label: "Shopping Cart"
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.login_outlined),
        activeIcon: Icon(Icons.login),
        label: "Login"
    )
  ];
  static const List<BottomNavigationBarItem> _customerItems = [
    BottomNavigationBarItem(
        icon: Icon(Icons.add_business_outlined),
        activeIcon: Icon(Icons.add_business),
        label: "Become a Producer"
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.content_paste_outlined),
        activeIcon: Icon(Icons.content_paste),
        label: "Orders"
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_bag_outlined),
        activeIcon: Icon(Icons.shopping_bag),
        label: "Shopping"
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart_outlined),
        activeIcon: Icon(Icons.shopping_cart),
        label: "Shopping Cart"
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.person_outlined),
        activeIcon: Icon(Icons.person),
        label: "Profile"
    )
  ];
  static const List<BottomNavigationBarItem> _producerItems = [
    BottomNavigationBarItem(
        icon: Icon(Icons.content_paste_outlined),
        activeIcon: Icon(Icons.content_paste),
        label: "Your Articles"
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.inventory_2_outlined),
        activeIcon: Icon(Icons.inventory_2),
        label: "Your Stock"
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.person_outlined),
        activeIcon: Icon(Icons.person),
        label: "Profile"
    )
  ];
  static const List<BottomNavigationBarItem> _deliveryItems = [
    BottomNavigationBarItem(
        icon: Icon(Icons.assignment_outlined),
        activeIcon: Icon(Icons.assignment),
        label: "Current Step"
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.local_shipping_outlined),
        activeIcon: Icon(Icons.local_shipping),
        label: "Tour"
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.person_outlined),
        activeIcon: Icon(Icons.person),
        label: "Profile"
    )
  ];
}

enum NavigationBarType {
  noAuth,
  customer,
  producer,
  delivery
}