import 'package:app_weather/bloc/weather_bloc.dart';
import 'package:app_weather/bloc/weather_repository.dart';
import 'package:app_weather/components/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:app_weather/model/weather_conditions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: ''),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final bloc = WeatherBloc(WeatherRepository());
  var _scaffoldkey = GlobalKey<ScaffoldState>();
  TextEditingController _controller = TextEditingController();
  String city = "Бишкек";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: ListView(
        children: [
          Center(
            child: BlocListener(
              bloc: bloc,
              listener: (context, state) {
                if (state is WeatherError) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(state.message.message.toString())));
                } else if (state is WeatherLoaded) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Успешно загрузилось")));
                }
              },
              child: BlocBuilder(
                bloc: bloc,
                builder: (context, state) {
                  if (state is WeatherInitial) {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: TextField(
                            controller: _controller,
                            decoration:
                                InputDecoration(hintText: "Введите город"),
                          ),
                        ),
                      ],
                    );
                  } else if (state is WeatherLoading) {
                    return Loading();
                  } else if (state is WeatherLoaded) {
                    return Container(
                        height: MediaQuery.of(context).size.height, //
                        color: myColor(state.model.weather![0].description!),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 30, right: 30),
                              child: TextField(
                                controller: _controller,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: "Введите город",
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Text(
                              DateFormat('EEEE,d MMMM').format(
                                  DateTime.fromMillisecondsSinceEpoch(
                                      state.model.dt! * 1000)),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            SizedBox(height: 15),
                            Text(
                              DateFormat(' HH:mm a').format(
                                  DateTime.fromMillisecondsSinceEpoch(
                                      state.model.dt! * 1000)),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            SizedBox(height: 15),
                            Text(
                              state.model.name.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Image(
                              image: NetworkImage(
                                  'https://openweathermap.org/img/wn/' +
                                      state.model.weather![0].icon.toString() +
                                      '@4x.png'),
                            ),
                            Text(
                              state.model.main!.temp.toString() + "°",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 60),
                            ),
                            SizedBox(height: 45),
                            Text(
                              DateFormat('EEEE').format(
                                  DateTime.fromMillisecondsSinceEpoch(
                                      state.model.dt! * 1000)),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                              child: Container(
                                height: 2,
                                width: 285.0,
                                color: Colors.white,
                                margin: EdgeInsets.only(top: 20.0),
                              ),
                            ),
                            /* Divider(
                          color: Colors.black,
                          height: 5.0,
                          thickness: 2,
                          indent: 25,
                          starIndent:80,
                          endIndent: 80,
                        ),
                        */
                            SizedBox(height: 92),
                          ],
                        ));
                  } else if (state is WeatherError) {
                    return Column(
                      children: [
                        Text("OOps произошла ошибка"),
                        SizedBox(
                          height: 30,
                        ),
                        TextButton(
                            onPressed: () {
                              bloc.add(GetWeatherEvent(city));
                              city = _controller.text;
                            },
                            child: Text("Повторить снова"))
                      ],
                    );
                  }
                  return Loading();
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[800],
        onPressed: () {
          city = _controller.text;
          bloc.add(GetWeatherEvent(city));
        },
        tooltip: 'Increment',
        child: Icon(Icons.search),
      ),
    );
  }
}
