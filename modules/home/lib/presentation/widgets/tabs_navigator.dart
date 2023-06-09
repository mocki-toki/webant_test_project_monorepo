import 'package:core/core.dart';
import 'package:photo/photo.dart';
import 'package:profile/profile.dart';

class TabsNavigator extends StatelessWidget {
  const TabsNavigator({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    var currentIndex = [
      FeedPageRoute.path,
      AddPhotoPageRoute.path,
      CurrentProfilePageRoute.path,
    ].indexOf(context.router.location);

    if (currentIndex == -1) currentIndex = 0;

    return Scaffold(
      body: body,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(height: 0),
          BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) => onTap(context, index),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Feed',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt_outlined),
                label: 'Add photo',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Profile',
              ),
            ],
          ),
        ],
      ),
    );
  }

  void onTap(BuildContext context, int value) {
    switch (value) {
      case 0:
        context.router.go(FeedPageRoute.path);
        break;
      case 1:
        AddPhotoDialog.open(context);
        break;
      case 2:
        context.router.go(CurrentProfilePageRoute.path);
        break;
    }
  }
}
