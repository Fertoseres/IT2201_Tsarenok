import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _likeCount = 26; // Счетчик лайков
  int k = 0;

  void _LikeCountPlus() {
    setState(() {
      if (k == 0)
      _likeCount++; // Увеличиваем счетчик на 1
      k++;
    });
  }
  void _showRoute() async {
    // URL для открытия онлайн-карты (например, Google Maps)
    const url = 'https://yandex.ru/maps/35/krasnodar/search/%D0%BA%D1%83%D0%B1%D0%B3%D0%B0%D1%83/?ll=38.932804%2C45.045469&sctx=ZAAAAAgBEAAaKAoSCYwubw7XfENAEZv%2B7EeKhEZAEhIJ%2BaI9XkiH2D8R6xwDste7xz8iBgABAgMEBSgKOABAI0gBagJydZ0BzczMPaABAKgBAL0BH1DdLcIBD5iAiL0ElM%2Fk8AXijam5CIICDNC60YPQsdCz0LDRg4oCAJICAJoCDGRlc2t0b3AtbWFwcw%3D%3D&sll=38.932804%2C45.045469&source=serp_navig&sspn=0.031924%2C0.013316&z=15.5';
    if (await canLaunch(url)) {
      await launch(url); // Открываем URL
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Не удалось открыть карту.'),
        ),
      );
    }
  }

  void _shareContent() {
    // Действие при нажатии на кнопку "Поделиться"
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Поделиться контентом...'),
      ),
    );
  }

    void _call() {
    // Действие при нажатии на кнопку "Поделиться"
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('8-800-222-22-22'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Кампус Кубанского ГАУ'),
        backgroundColor: Colors.green,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://sun9-40.userapi.com/s/v1/ig2/m8wRvQ70t4diy--ngylsjzqPH0Q0zKd_zXn2MDsAG7jW6_HqWtmFZS9vQ-jA2h6Ybe842VvvBt7WkXUWPvdXymqG.jpg?quality=95&as=32x23,48x34,72x51,108x77,160x114,240x171,360x257,480x343,540x385,640x457,720x514,1080x771,1280x913,1435x1024&from=bu&u=vkdmz6YeWjWtphWD_EJyCAmvnI8spNDZd83OvRNVUpU&cs=604x431', // Замените на URL вашей картинки
              width: double.infinity, // Растягиваем на всю ширину экрана
              height: 300, // Высота картинки
              fit: BoxFit.cover, // Режим отображения картинки
            ),
            Row(
              children: [
              Text(
              'Общежитие №20',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                     ),
               ),
             SizedBox(width: 220.0),
                IconButton(
                  icon: Icon(Icons.favorite, color: Colors.red),
                  onPressed:  _LikeCountPlus,
                ),
                SizedBox(width: 8.0), // Отступ между иконкой и текстом
                Text(
                  '$_likeCount', // Отображаем текущее значение счетчика
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
              ],
            ),
            Text(
              'Краснодар, ул. Калинина 13',
              style: TextStyle(
                fontSize: 13.0,
                
              ),
            ),
            SizedBox(height: 16.0), // Отступ
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.phone, color: Colors.green),
                      onPressed: _call,
                    ),
                  Text('Позвонить'),
                 ],
             ),
      SizedBox(width: 70),
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(Icons.navigation, color: Colors.green),
                              onPressed: _showRoute,
                              ),
                            Text('Маршрут'),
                          ],
                        ),
                        SizedBox(width: 70),
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(Icons.share, color: Colors.green),
                              onPressed: _shareContent,
                            ),
                            Text('Поделиться'),
                          ],
                        ),
                        ]
            ),

            SizedBox(height: 16.0),
            // Длинный текст
            Text(
              'Студенческий городок или так называемый кампус Кубанского ГАУ состоит '
              'из двадцати общежитий, в которых проживает более 8000 студентов, что состав-'
              'ляет 96% от всех нуждающихся. Студенты первого курса обеспечены местами в '
              'общежитии полностью. В соответствии с Положением о студенческих общежитиях '
              'университета, при поселении между администрацией и студентами заключается '
              'договор найма жилого помещения. Воспитательная работа в общежитиях '
              'направлена на улучшение быта, соблюдение правил внутреннего распорядка, отсутствия '
              'асоциальных явлений в молодежной среде. Условия проживания в общежитиях '
              'университетского кампуса полностью отвечают санитарным нормам и '
              'требованиям: наличие оборудованных кухонь, душевых комнат, прачечных, читальных '
              'залов, комнат самоподготовки, помещений для заседаний студенческих советов и '
              'наглядной агитации. С целью улучшения условий быта студентов активно работает '
              'система студенческого самоуправления - студенческие советы организуют всю '
              'работу по самообслуживанию.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}