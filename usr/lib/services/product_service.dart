import '../models/product.dart';

class ProductService {
  // Mock data - In production, this would fetch from Supabase
  static List<Product> getMockProducts() {
    return [
      Product(
        id: '1',
        name: 'Wireless Headphones',
        description: 'Premium noise-cancelling wireless headphones with 30-hour battery life and superior sound quality.',
        price: 199.99,
        imageUrl: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500',
        category: 'Electronics',
        rating: 4.5,
        reviewCount: 128,
        inStock: true,
      ),
      Product(
        id: '2',
        name: 'Smart Watch',
        description: 'Advanced fitness tracking smartwatch with heart rate monitor, GPS, and 7-day battery life.',
        price: 299.99,
        imageUrl: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500',
        category: 'Electronics',
        rating: 4.7,
        reviewCount: 256,
        inStock: true,
      ),
      Product(
        id: '3',
        name: 'Leather Backpack',
        description: 'Stylish genuine leather backpack with laptop compartment, perfect for work and travel.',
        price: 89.99,
        imageUrl: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=500',
        category: 'Fashion',
        rating: 4.3,
        reviewCount: 89,
        inStock: true,
      ),
      Product(
        id: '4',
        name: 'Running Shoes',
        description: 'Lightweight running shoes with advanced cushioning technology for maximum comfort.',
        price: 129.99,
        imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500',
        category: 'Sports',
        rating: 4.6,
        reviewCount: 342,
        inStock: true,
      ),
      Product(
        id: '5',
        name: 'Portable Speaker',
        description: 'Waterproof Bluetooth speaker with 360-degree sound and 12-hour playtime.',
        price: 79.99,
        imageUrl: 'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=500',
        category: 'Electronics',
        rating: 4.4,
        reviewCount: 167,
        inStock: true,
      ),
      Product(
        id: '6',
        name: 'Coffee Maker',
        description: 'Programmable coffee maker with thermal carafe and auto-brew feature.',
        price: 149.99,
        imageUrl: 'https://images.unsplash.com/photo-1517668808822-9ebb02f2a0e6?w=500',
        category: 'Home',
        rating: 4.2,
        reviewCount: 93,
        inStock: true,
      ),
      Product(
        id: '7',
        name: 'Yoga Mat',
        description: 'Premium non-slip yoga mat with extra cushioning and carrying strap.',
        price: 39.99,
        imageUrl: 'https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?w=500',
        category: 'Sports',
        rating: 4.5,
        reviewCount: 214,
        inStock: true,
      ),
      Product(
        id: '8',
        name: 'Sunglasses',
        description: 'Polarized sunglasses with UV protection and stylish aviator design.',
        price: 59.99,
        imageUrl: 'https://images.unsplash.com/photo-1572635196237-14b3f281503f?w=500',
        category: 'Fashion',
        rating: 4.1,
        reviewCount: 76,
        inStock: true,
      ),
    ];
  }

  static List<String> getCategories() {
    return ['All', 'Electronics', 'Fashion', 'Sports', 'Home'];
  }

  static List<Product> filterByCategory(List<Product> products, String category) {
    if (category == 'All') {
      return products;
    }
    return products.where((product) => product.category == category).toList();
  }

  static List<Product> searchProducts(List<Product> products, String query) {
    if (query.isEmpty) {
      return products;
    }
    final lowerQuery = query.toLowerCase();
    return products.where((product) {
      return product.name.toLowerCase().contains(lowerQuery) ||
             product.description.toLowerCase().contains(lowerQuery) ||
             product.category.toLowerCase().contains(lowerQuery);
    }).toList();
  }
}
