# 🛍️ ShopSavvy

ShopSavvy is a modern and responsive shopping app built with Flutter using the DummyJSON API. It showcases product listings, filtering, detailed product views, cart management, wishlist functionality, and a checkout summary — all with a smooth user experience.

---

## 📦 Tech Stack

- **Flutter (Dart)**
- [`http`](https://pub.dev/packages/http) – for API integration
- [`shared_preferences`](https://pub.dev/packages/shared_preferences) – to store cart and wishlist data locally

---

## 🔗 API Used

- **DummyJSON Products API**  
  `https://dummyjson.com/products`

---

## ✨ Features

- 🛍️ Product listing with title, image, price, and rating
- 🎯 Filter by category, price range, or rating
- 🔍 Product detail page with full information
- ➕ Add to cart & manage cart items
- ❤️ Wishlist (save for later) feature
- 📦 Checkout summary screen
- 📱 Fully responsive across all mobile screen sizes

---

## 🚀 Getting Started

### 1️⃣ Prerequisites

- Flutter SDK (any stable version `>=3.6.0`)
- Android Studio or VS Code with Flutter plugin
- Internet connection (for API)

### 2️⃣ Setup

```bash
git clone https://github.com/your-username/shopsavvy.git
cd shopsavvy
flutter pub get
flutter run