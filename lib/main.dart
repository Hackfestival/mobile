import 'package:flutter/material.dart';
import 'package:mobile/custom_page_state.dart';
import 'package:mobile/screens/customer_orders.dart';
import 'package:mobile/screens/customer_shopping.dart';
import 'package:mobile/screens/dummy.dart';
import 'package:mobile/screens/edit_profile.dart';
import 'package:mobile/screens/login_screen.dart';
import 'package:mobile/screens/map_screen.dart';
import 'package:mobile/screens/producer_article_overview.dart';
import 'package:mobile/screens/producer_stock_overview.dart';
import 'package:mobile/screens/shopping_cart.dart';
import 'package:mobile/screens/shopping_overview.dart';
import 'package:mobile/screens/tour_overview.dart';
import 'components/custom_button_navigation_bar.dart';
import 'constants/project_constants.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ProjectConstants.appName,
      home: NoAuthPage(),
    );
  }
}

// ----------------------------------- No Auth Page -----------------------------------

class NoAuthPage extends StatefulWidget {
  const NoAuthPage({super.key});

  @override
  State<NoAuthPage> createState() => _NoAuthPageState();
}

class _NoAuthPageState extends CustomPageState<NoAuthPage> {
  _NoAuthPageState() : super(
    type: NavigationBarType.noAuth,
    pages: <Widget>[
      const ShoppingOverview(),
      const MapScreen(),
      const LoginScreen()
    ]
  );
}

// ----------------------------------- Customer Page -----------------------------------

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends CustomPageState<CustomerPage> {
  _CustomerPageState() : super(
      type: NavigationBarType.customer,
      pages: <Widget>[
        const CustomerOrders(),
        const CustomerShopping(),
        const MapScreen(),
        const ShoppingCart(),
        const EditProfile()
      ]
  );
}

// ----------------------------------- Producer Page -----------------------------------

class ProducerPage extends StatefulWidget {
  const ProducerPage({super.key});

  @override
  State<ProducerPage> createState() => _ProducerPageState();
}

class _ProducerPageState extends CustomPageState<ProducerPage> {
  _ProducerPageState() : super(
      type: NavigationBarType.producer,
      pages: <Widget>[
        const ProducerArticlesOverview(),
        const ProducerStockOverview(),
        const MapScreen(),
        const EditProfile()
      ]
  );
}

// ----------------------------------- Deliery Page -----------------------------------

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends CustomPageState<DeliveryPage> {
  _DeliveryPageState() : super(
      type: NavigationBarType.producer,
      pages: <Widget>[
        const Dummy(), // TODO supposed to be "current Step"
        const TourOverview(),
        const EditProfile()
      ]
  );
}


