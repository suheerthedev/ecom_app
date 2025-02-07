import 'package:ecom_app/models/product_model.dart';
import 'package:stacked/stacked.dart';

class ProductService with ListenableServiceMixin {
  final List<Product> _products = [
    Product(
      id: '1',
      title: 'Regular Fit Slogan',
      imagePath: '',
      price: 83.97,
      rating: 4.9,
      isSaved: false,
    ),
    Product(
      id: '2',
      title: 'Regular Fit Polo',
      imagePath: '',
      price: 83.97,
      rating: 4.9,
      isSaved: false,
    ),
    Product(
      id: '3',
      title: 'Regular Fit Black',
      imagePath: '',
      price: 83.97,
      rating: 4.9,
      isSaved: false,
    ),
    Product(
      id: '4',
      title: 'Regular Fit V-Neck',
      imagePath: '',
      price: 83.97,
      rating: 4.9,
      isSaved: false,
    ),
    Product(
      id: '5',
      title: 'Regular Fit Hoddie',
      imagePath: '',
      price: 83.97,
      rating: 4.9,
      isSaved: false,
    ),
    Product(
      id: '6',
      title: 'Regular Fit Leather Jacket',
      imagePath: '',
      price: 83.97,
      rating: 4.9,
      isSaved: false,
    ),
  ];

  List<Product> get products => _products;

  //Takes a product model as parameter and adds a new product to the existing catalog
  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }

  //Takes the id and an updated product model as a parameter and updates the product on that id with the updated info provided
  void updatedProduct(String id, Product updatedProduct) {
    final index = _products.indexWhere((p) => p.id == id);
    if (index > 0) {
      _products[index] = updatedProduct;
      notifyListeners();
    }
  }

  void removeProduct(String id) {
    _products.removeWhere((p) => p.id == id);
    notifyListeners();
  }

  List<Product> searchProducts(String query) {
    return _products
        .where((product) =>
            product.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  void toggleSavedStatus(String id) {
    final index = _products.indexWhere((p) => p.id == id);
    if (index != -1) {
      _products[index] = Product(
        id: _products[index].id,
        title: _products[index].title,
        imagePath: _products[index].imagePath,
        price: _products[index].price,
        rating: _products[index].rating,
        isSaved: !_products[index].isSaved, // Toggle the saved status
      );
      notifyListeners(); // Notify listeners about the change
    }
  }
}
