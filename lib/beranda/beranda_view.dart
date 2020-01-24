import 'package:flutter/material.dart';
import 'package:gongojek/beranda/beranda_gongojek_appbar.dart';
import 'package:gongojek/beranda/beranda_model.dart';

import '../constant.dart';

class BerandaPage extends StatefulWidget {
  @override
  _BerandaPageState createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  List<GoTrashService> _gotrashServiceList = [];
  List<Trash> _goTrashFeaturedList = [];

  @override
  void initState() {
    super.initState();
    /*Dibawah inisiasi GoTrash Services*/
    _goTrashFeaturedList.add(
        new Trash(title: "Sampah Organik", image: "images/food/sampah_organik.png"));
    _goTrashFeaturedList.add(
        new Trash(title: "Sampah Anorganik", image: "images/food/sampah_anorganik.png"));
    _goTrashFeaturedList.add(
        new Trash(title: "Sampah B3", image: "images/food/sampah_b3.png"));
    _goTrashFeaturedList.add(
        new Trash(title: "Sampah Residu", image: "images/food/sampah_residu.png"));

    _gotrashServiceList.add(new GoTrashService(
        image: Icons.directions_bike,
        color: GojekPalette.menuRide,
        title: "GO-RIDE"));
    _gotrashServiceList.add(new GoTrashService(
        image: Icons.local_car_wash,
        color: GojekPalette.menuCar,
        title: "GO-CAR"));
    _gotrashServiceList.add(new GoTrashService(
        image: Icons.directions_car,
        color: GojekPalette.menuBluebird,
        title: "GO-BLUEBIRD"));
    _gotrashServiceList.add(new GoTrashService(
        image: Icons.restaurant,
        color: GojekPalette.menuFood,
        title: "GO-FOOD"));
    _gotrashServiceList.add(new GoTrashService(
        image: Icons.next_week,
        color: GojekPalette.menuSend,
        title: "GO-SEND"));
    _gotrashServiceList.add(new GoTrashService(
        image: Icons.local_offer,
        color: GojekPalette.menuDeals,
        title: "GO-DEALS"));
    _gotrashServiceList.add(new GoTrashService(
        image: Icons.phonelink_ring,
        color: GojekPalette.menuPulsa,
        title: "GO-PULSA"));
    _gotrashServiceList.add(new GoTrashService(
        image: Icons.apps, color: GojekPalette.menuOther, title: "LAINNYA"));
    _gotrashServiceList.add(new GoTrashService(
        image: Icons.shopping_basket,
        color: GojekPalette.menuShop,
        title: "GO-SHOP"));
    _gotrashServiceList.add(new GoTrashService(
        image: Icons.shopping_cart,
        color: GojekPalette.menuMart,
        title: "GO-MART"));
    _gotrashServiceList.add(new GoTrashService(
        image: Icons.local_play, color: GojekPalette.menuTix, title: "GO-TIX"));
  }

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: Scaffold(
      appBar: new GoNgojekAppBar(),
      body: new Container(
          child: new ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              new Container(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  color: Colors.white,
                  child: new Column(
                    children: <Widget>[
                      _buildGoTrashpayMenu(),
                      _buildGoTrashServicesMenu()
                    ],
                  )),
              new Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 16.0),
                child: new Column(
                  children: <Widget>[
                    _buildGoTrashFeatured(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

Widget _buildGoTrashpayMenu() {
    return new Container(
        height: 120.0,
        decoration: new BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
            ),
            borderRadius: new BorderRadius.all(new Radius.circular(3.0))),
        child: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.all(12.0),
              decoration: new BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
                  ),
                  borderRadius: new BorderRadius.only(
                      topLeft: new Radius.circular(3.0),
                      topRight: new Radius.circular(3.0))),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    "GOPAY",
                    style: new TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "NeoSansBold"),
                  ),
                  new Container(
                    child: new Text(
                      "Rp. 120.000",
                      style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                          fontFamily: "NeoSansBold"),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 12.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Image.asset(
                        "images/icons/icon_transfer.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      new Text(
                        "Transfer",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Image.asset(
                        "images/icons/icon_scan.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      new Text(
                        "Scan QR",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Image.asset(
                        "images/icons/icon_saldo.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      new Text(
                        "Isi Saldo",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Image.asset(
                        "images/icons/icon_menu.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      new Text(
                        "Lainnya",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
    }
  Widget _buildGoTrashServicesMenu() {
    return new SizedBox(
        width: double.infinity,
        height: 220.0,
        child: new Container(
            margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: GridView.builder(
                physics: ClampingScrollPhysics(),
                itemCount: 8,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, position) {
                  return _rowGoTrashService(_gotrashServiceList[position]);
                })));
  }
  Widget _rowGoTrashService(GoTrashService gongojekService) {
    return new Container(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                  border: Border.all(color: GojekPalette.grey200, width: 1.0),
                  borderRadius:
                      new BorderRadius.all(new Radius.circular(20.0))),
              padding: EdgeInsets.all(12.0),
              child: new Icon(
                gongojekService.image,
                color: gongojekService.color,
                size: 32.0,
              ),
            ),
          new Padding(
            padding: EdgeInsets.only(top: 6.0),
          ),
          new Text(gongojekService.title, style: new TextStyle(fontSize: 10.0))
        ],
    ));
  }
  Widget _buildGoTrashFeatured() {
    return new Container(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Text(
            "JENIS-SAMPAH",
            style: new TextStyle(fontFamily: "NeoSansBold"),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 8.0),
          ),
          new Text(
            "Paling Dominan",
            style: new TextStyle(fontFamily: "NeoSansBold"),
          ),
          new SizedBox(
            height: 172.0,
               child: new ListView.builder(
              itemCount: _goTrashFeaturedList.length,
              padding: EdgeInsets.only(top: 12.0),
              physics: new ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return _rowGoTrashFeatured(_goTrashFeaturedList[index]);
              },
            ), 
          ),
        ],
      ),
    );
  }
  Widget _rowGoTrashFeatured(Trash food) {
    return new Container(
      margin: EdgeInsets.only(right: 16.0),
      child: new Column(
        children: <Widget>[
          new ClipRRect(
            borderRadius: new BorderRadius.circular(8.0),
            child: new Image.asset(
              food.image,
              width: 132.0,
              height: 132.0,
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 8.0),
          ),
          new Text(
            food.title,
          ),
        ],
      ),
    );
  }
}