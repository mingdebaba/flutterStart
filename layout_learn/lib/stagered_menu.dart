import 'package:flutter/material.dart';
import 'package:layout_learn/main2.dart';

void main() => runApp(const SnackBarDemo());

class Menu extends StatelessWidget{
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  late AnimationController _staggeredController;
  static const _MenuTitles = [
    'Title 1',
    'Title 2',
    'Title 3',
    'Title 4',
    'Title 5',
  ];

  @override
  void initState() {
    super.initState();

    _staggeredController = AnimationController(
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      child: Stack(
        fit:StackFit.expand,
        children: [
          _buildFlutterLogo(),
          _buildContent(),
        ],
      ),
    );
  }
  Widget _buildFlutterLogo(){
    return Container();
  }
  Widget _buildContent(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        const SizedBox(height: 16),
        ..._buildListItems(),
        const Spacer(),
        _buildGetStartedButton(),
      ],
    );
  }
  List<Widget> _buildListItems(){
    final listItems = <Widget>[];
    for (var i =0;i<_menuTitles.length;++i){
      listItems.add(
        Padding(padding: const EdgeInsets.symmetric(horizontal:36.0,vertical:16),
          child: Text(
            _menuTitles[i],
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      );
    }
    return listItems;
  }
  Widget _buildGetStartedButton(){
    return SizedBox(
      width:double.infinity,
      child:Padding(padding: const EdgeInsets.all(24.0),
        child: ElevatedButton(
          style:ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: Colors.blueAccent,
            padding: const EdgeInsets.symmetric(horizontal:48,vertical: 14),
          ),
          onPressed: (){},
          child: const Text(
            'Get start',
            style: TextStyle(
              color:Colors.cyan,
              fontSize: 22,
            ),
          ),
        ),
      )
    );
  }
}