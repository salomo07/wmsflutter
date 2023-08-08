import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wmsflutter/models/Menu.dart';

class DrawerWidget extends StatelessWidget {
  static final padding = EdgeInsets.symmetric(horizontal: 20);

  final name = 'Sarah Absx';
  final email = 'sarah@abs.com';
  final urlImage = "https://api.slingacademy.com/public/sample-photos/1.jpeg";

  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xffd9a5b3),
        child: ListView(
          children: <Widget>[
            buildHeader(
              context,
              urlImage: urlImage,
              name: name,
              email: email,
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  buildMenuItem(
                    context,
                    item: NavigationItem.people,
                    text: 'People',
                    icon: Icons.people,
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    context,
                    item: NavigationItem.favourites,
                    text: 'Favourites',
                    icon: Icons.favorite_border,
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    context,
                    item: NavigationItem.workflow,
                    text: 'Workflow',
                    icon: Icons.workspaces_outline,
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    context,
                    item: NavigationItem.updates,
                    text: 'Updates',
                    icon: Icons.update,
                  ),
                  const SizedBox(height: 24),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    context,
                    item: NavigationItem.plugins,
                    text: 'Plugins',
                    icon: Icons.account_tree_outlined,
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    context,
                    item: NavigationItem.notifications,
                    text: 'Notifications',
                    icon: Icons.notifications_outlined,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(
    BuildContext context, {
    required NavigationItem item,
    required String text,
    required IconData icon,
  }) {
    final provider = Provider.of<NavigationProvider>(context);
    final currentItem = provider.navigationItem;
    final isSelected = item == currentItem;

    final color = isSelected ? Colors.orangeAccent : Colors.white;

    return Material(
      color: Colors.transparent,
      child: ListTile(
        selected: isSelected,
        selectedTileColor: Colors.white24,
        leading: Icon(icon, color: color),
        title: Text(text, style: TextStyle(color: color, fontSize: 16)),
        onTap: () => selectItem(context, item),
      ),
    );
  }

  void selectItem(BuildContext context, NavigationItem item) {
    final provider = Provider.of<NavigationProvider>(context, listen: false);
    provider.setNavigationItem(item);
  }

  Widget buildHeader(BuildContext context,
      {required String urlImage, required String name, required String email}) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => selectItem(context, NavigationItem.header),
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                child: Icon(Icons.add_comment_outlined, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationProvider extends ChangeNotifier {
  NavigationItem _navigationItem = NavigationItem.people;

  NavigationItem get navigationItem => _navigationItem;

  void setNavigationItem(NavigationItem navigationItem) {
    _navigationItem = navigationItem;

    notifyListeners();
  }
}
