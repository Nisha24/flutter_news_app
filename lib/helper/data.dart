import 'package:flutter_news_app/models/category_model.dart';

List<CategoryModel> getCategories(){
  List<CategoryModel> category = new List.filled(0, CategoryModel(), growable: true);
  CategoryModel categoryModel = new CategoryModel();

  // First Category
  categoryModel.categoryName= "Business";
  categoryModel.imgUrl= "https://img.freepik.com/free-photo/business-people-shaking-hands-together_53876-20488.jpg?size=626&ext=jpg";
  category.add(categoryModel);

  categoryModel = new CategoryModel();

  // Second
  categoryModel.categoryName= "Technology";
  categoryModel.imgUrl= "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80";
  category.add(categoryModel);

  categoryModel = new CategoryModel();

  // Third

  categoryModel.categoryName= "Sports";
  categoryModel.imgUrl= "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80";
  category.add(categoryModel);

  categoryModel = new CategoryModel();

  // Fourth

  categoryModel.categoryName= "Entertainment";
  categoryModel.imgUrl= "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80";
  category.add(categoryModel);

  categoryModel = new CategoryModel();

  //Fifth

  categoryModel.categoryName= "General";
  categoryModel.imgUrl= "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80";
  category.add(categoryModel);

  categoryModel = new CategoryModel();

  //Sixth

  categoryModel.categoryName= "Science";
  categoryModel.imgUrl= "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80";
  category.add(categoryModel);

  categoryModel = new CategoryModel();

  //Seventh

  categoryModel.categoryName= "Health";
  categoryModel.imgUrl= "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80";
  category.add(categoryModel);
  return category;


}