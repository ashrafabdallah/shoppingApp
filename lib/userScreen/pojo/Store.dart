import 'package:flutter/material.dart';
class Store{

  String itemName;
  double itemprice;
  String itemImage;
  double imageRating;
  Store.items({
    this.imageRating,
    this.itemImage,
    this.itemName,
    this.itemprice
});
}

  List<Store> storeItems=[
    Store.items(imageRating: 0.0,itemImage: "https://bit.ly/2UmCzmH",itemName: "Abcfff",itemprice: 112.2),
    Store.items(imageRating: 0.0,itemImage: "https://bit.ly/33upqMG",itemName: "dddfff",itemprice: 155.2),
    Store.items(imageRating: 0.0,itemImage: "https://bit.ly/3dgu2dC",itemName: "aaafff",itemprice: 1789.2),
    Store.items(imageRating: 0.0,itemImage: "https://bit.ly/3b9t54V",itemName: "sssffff",itemprice: 456.2),
    Store.items(imageRating: 0.0,itemImage: "https://bit.ly/2U1MAXv",itemName: "dddfff",itemprice: 18712.2),
    Store.items(imageRating: 0.0,itemImage: "https://bit.ly/2vFmosw",itemName: "ffffff",itemprice: 7878.2),
    Store.items(imageRating: 0.0,itemImage: "https://bit.ly/2WsvQdC",itemName: "gggfff",itemprice: 15412.2),
    Store.items(imageRating: 0.0,itemImage: "https://bit.ly/3912buF",itemName: "hhfffh",itemprice: 14512.2),
    Store.items(imageRating: 0.0,itemImage: "https://bit.ly/3959Yb5",itemName: "jjfffj",itemprice: 1112.2),
    Store.items(imageRating: 0.0,itemImage: "https://bit.ly/3deQWCb",itemName: "kffffkk",itemprice: 1212.2),
    Store.items(imageRating: 0.0,itemImage: "https://bit.ly/2Wp7gKN",itemName: "lfffll",itemprice: 412.2),
    Store.items(imageRating: 0.0,itemImage: "https://bit.ly/2WslY3z",itemName: "mfffmm",itemprice: 777.2),
    Store.items(imageRating: 0.0,itemImage: "https://bit.ly/2vwRD8S",itemName: "nfffnn",itemprice: 888.2),
    Store.items(imageRating: 0.0,itemImage: "https://bit.ly/2QsF45F",itemName: "Afffbc",itemprice: 999.2),
    Store.items(imageRating: 0.0,itemImage: "https://bit.ly/2Wsm3nT",itemName: "bbffffb",itemprice: 333.2),
    Store.items(imageRating: 0.0,itemImage: "https://bit.ly/2QtCmwS",itemName: "vvffffv",itemprice: 335.2),


  ];
