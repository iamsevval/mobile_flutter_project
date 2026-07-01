# 🛍️ Mini Catalog App

This project is a mobile application prototype developed as part of a Flutter training course, featuring core e-commerce functionality (product listing, search, detail view, adding to favorites, and cart management). 

It was designed in accordance with the widget structure, page transitions, UI design, data modeling (JSON simulation), and project folder architecture criteria specified in the training guidelines.

<p align="center">
  <img src="/assets/anasayfa.png" width="25%" alt="Home Page" />
  &nbsp;&nbsp;&nbsp;&nbsp; <img src="/assets/ornekurundetayi.png" width="25%" alt="Product Detail" />
</p>

## ✨ Key Features

- **Advanced Navigation & Animation:** `Named Routes` are used for transitions between pages, and `Hero` animations are integrated to smooth out the visual transitions between the listing and detail pages.
- **Dynamic Search and Filtering:** Users can search among products on the home page. The search algorithm is sensitive to Turkish characters (ı, ş, ğ, etc.) to enhance the user experience.
- **Data Modeling:** A `Product` model class has been created, and data is simulated in accordance with JSON logic using the `fromJson` and `toJson` methods.
- **Local Asset Management:** In-app images are read from the `assets` folder included in the project rather than over the network (`network`), improving performance.
- **Cart Simulation & Cart Badge:** Users can add products to the cart from the detail page and increase or decrease the quantity. The cart icon on the home page has a dynamic badge showing the number of items in the cart.
- **Favorites System:** Users can add and remove products they like to/from their favorites and track them from the "My Favorites" page.

<p align="center">
  <img src="/assets/sepetim.png" width="25%" alt="My Cart" />
  &nbsp;&nbsp;&nbsp;&nbsp; <img src="/assets/favoriler.png" width="25%" alt="Favorites" />
</p>

## 🛠️ Technologies and Version Used

- **SDK:** Flutter 3.x & Dart ^3.11.0
- **Development Environment:** Visual Studio Code / Mac
- **Test Environment:** iOS Simulator / Android Emulator
- **Packages:** Only the core `material.dart` package was used; the solution was built with fundamental Flutter structures (StatefulWidget) without including any external libraries (state management, etc.).

## 🚀 Steps to Run the Project

To run the project on your own computer, you can copy and paste all of the following commands into your terminal:

```bash
# 1. Clone the repo to your computer
git clone [https://github.com/iamsevval/mobile_flutter_project.git](https://github.com/iamsevval/mobile_flutter_project.git)

# 2. Enter the downloaded project folder
cd mobile_flutter_project

# 3. Install the packages (dependencies) the project needs
flutter pub get

# 4. Run the application on a connected simulator or device
flutter run
```
