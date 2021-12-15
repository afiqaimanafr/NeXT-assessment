import 'dart:convert';

WeatherModel weatherModelFromJson(String str) =>
    WeatherModel.fromJson(json.decode(str));

String weatherModelToJson(WeatherModel data) => json.encode(data.toJson());

class WeatherModel {
  WeatherModel({
    this.coord,
    this.sys,
    this.weather,
    this.base,
    this.visibility,
    this.main,
    this.wind,
    this.clouds,
    this.rain,
    this.dt,
  });

  Coord coord;
  Sys sys;
  List<Weather> weather;
  String base;
  int visibility;
  Main main;
  Wind wind;
  Clouds clouds;
  Rain rain;
  int dt;

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        coord: Coord.fromJson(json["coord"]),
        sys: Sys.fromJson(json["sys"]),
        weather:
            List<Weather>.from(json["weather"].map((x) => Weather.fromJson(x))),
        base: json["base"],
        visibility: json["visibility"],
        main: Main.fromJson(json["main"]),
        wind: Wind.fromJson(json["wind"]),
        clouds: Clouds.fromJson(json["clouds"]),
        rain: Rain.fromJson(json["rain"]),
        dt: json["dt"],
      );

  Map<String, dynamic> toJson() => {
        "coord": coord.toJson(),
        "sys": sys.toJson(),
        "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
        "base": base,
        "visibility": visibility,
        "main": main.toJson(),
        "wind": wind.toJson(),
        "clouds": clouds.toJson(),
        "rain": rain.toJson(),
        "dt": dt,
      };
}

class Clouds {
  Clouds({
    this.all,
  });

  int all;

  factory Clouds.fromJson(Map<String, dynamic> json) => Clouds(
        all: json["all"],
      );

  Map<String, dynamic> toJson() => {
        "all": all,
      };
}

class Coord {
  Coord({
    this.lon,
    this.lat,
  });

  double lon;
  double lat;

  factory Coord.fromJson(Map<String, dynamic> json) => Coord(
        lon: json["lon"].toDouble(),
        lat: json["lat"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "lon": lon,
        "lat": lat,
      };
}

class Main {
  Main({
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.tempMin,
    this.tempMax,
  });

  double temp;
  double feelsLike;
  int pressure;
  int humidity;
  double tempMin;
  double tempMax;

  factory Main.fromJson(Map<String, dynamic> json) => Main(
        temp: json["temp"].toDouble(),
        feelsLike: json["feels_like"].toDouble(),
        pressure: json["pressure"],
        humidity: json["humidity"],
        tempMin: json["temp_min"].toDouble(),
        tempMax: json["temp_max"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "temp": temp,
        "feels_like": feelsLike,
        "pressure": pressure,
        "humidity": humidity,
        "temp_min": tempMin,
        "temp_max": tempMax,
      };
}

class Rain {
  Rain({
    this.the1H,
  });

  double the1H;

  factory Rain.fromJson(Map<String, dynamic> json) => Rain(
        the1H: json["1h"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "1h": the1H,
      };
}

class Sys {
  Sys({
    this.type,
    this.id,
    this.message,
  });

  int type;
  int id;
  int message;

  factory Sys.fromJson(Map<String, dynamic> json) => Sys(
        type: json["type"],
        id: json["id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "message": message,
      };
}

class Weather {
  Weather({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  int id;
  String main;
  String description;
  String icon;

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        id: json["id"],
        main: json["main"],
        description: json["description"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "main": main,
        "description": description,
        "icon": icon,
      };
}

class Wind {
  Wind({
    this.speed,
    this.deg,
  });

  double speed;
  int deg;

  factory Wind.fromJson(Map<String, dynamic> json) => Wind(
        speed: json["speed"].toDouble(),
        deg: json["deg"],
      );

  Map<String, dynamic> toJson() => {
        "speed": speed,
        "deg": deg,
      };
}
