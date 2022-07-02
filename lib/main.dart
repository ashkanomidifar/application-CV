import 'dart:html';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Lalezar'),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getmainbody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.red,
      title: Text(
        'رزومه اشکان امیدی فر',
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  Widget _getmainbody() {
    return SingleChildScrollView(
      child: Column(
        children: [_getHeader()],
      ),
    );
  }

  Widget _getHeader() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('images/ss.png'),
          radius: 70,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'اشکان امیدی فر هستم برنامه نویس و موسس کد اموزشی',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'متخصص زبان فلاتر   بهت کمک میکنم با استفاده از زبان فلاتر  زبان برنامه نویسی موبایل چجور بتونید اپ مد نظر خودتون رو بسازید',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 12,
        ),
        _getRowicons(),
        SizedBox(height: 12),
        _getSkillTitle(),
        SizedBox(height: 12),
        _getResume(),
        _getHistoryColumn()
      ],
    );
  }

  Widget _getResume() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      width: double.infinity,
      color: Colors.grey[200],
      child: Column(
        children: [
          Text(
            'سابقه کاریه من',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _getHistoryColumn() {
    var list = [
      'برنامه نویس موبایل',
      'چنل یوتوب از سال2020',
      'صاحب و بنیان گذار سایت کد اموزشی',
      'شروع برنامه نویسی از سال97',
      'اموزش برنامه نویسی از سال98 ',
      'همکاری با شرکت تلوبیون'
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: double.infinity,
          height: 20,
        ),
        for (var title in list)
          Text(
            title,
            textDirection: TextDirection.rtl,
          ),
      ],
    );
  }

  Widget _getSkillTitle() {
    var list = ['flutter', 'android', 'kotlin', 'java', 'dart'];
    return Wrap(
      children: [
        for (var skill in list)
          Card(
            elevation: 6,
            shadowColor: Colors.red,
            child: Column(
              children: [
                Container(
                  height: 80.0,
                  child: Image(
                    image: AssetImage('images/$skill.png'),
                    width: 60.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('$skill'),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _getRowicons() {
    return Wrap(
      runSpacing: 20.0,
      spacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.instagramSquare),
          color: Colors.blueGrey,
        ),
        IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.telegram),
            color: Colors.blueGrey),
        IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.githubSquare),
            color: Colors.blueGrey),
      ],
    );
  }
}
