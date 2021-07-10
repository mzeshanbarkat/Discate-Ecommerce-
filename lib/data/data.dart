import 'package:flutter/material.dart';


class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("Search everything you need");
  sliderModel.setTitle("");
  sliderModel.setImageAssetPath("assets/bording.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("List your products");
  sliderModel.setTitle("");
  sliderModel.setImageAssetPath("assets/bording2.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("Explore many products");
  sliderModel.setTitle("");
  sliderModel.setImageAssetPath("assets/bording3.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //4
  sliderModel.setDesc("Choose and checkouts!");
  sliderModel.setTitle("");
  sliderModel.setImageAssetPath("assets/bording4.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

//5
  sliderModel.setDesc("Pay through app payment method!");
  sliderModel.setTitle("");
  sliderModel.setImageAssetPath("assets/bording5.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}