# GEMINI.md

## La Bonne Sante

### Purpose

La Bonne Sante is a Flutter e-commerce application for pharmacy products. It provides users with a seamless browsing experience, featuring an offline-first approach to ensure functionality even with intermittent network connectivity.

### Architecture

The app follows a simplified Domain-Driven Design (DDD) approach, organizing the project by features. The main layers are:

*   **Presentation:** Contains the UI (widgets and screens) and state management (Riverpod notifiers).
*   **Domain:** Contains the core business logic, entities, and repository interfaces. This layer is independent of any framework.
*   **Data:** Implements the repository interfaces from the domain layer and handles data fetching from remote (API) and local (Drift database) sources.
*   **Core:** Contains shared code, such as constants, dependency injection, and utility functions.

### File Layout

```
lib/
├── core/
│   ├── api/
│   │   └── dio_client.dart
│   └── db/
│       ├── app_database.dart
│       └── app_database.g.dart
├── features/
│   └── products/
│       ├── data/
│       │   ├── datasources/
│       │   │   ├── product_local_data_source.dart
│       │   │   └── product_remote_data_source.dart
│       │   ├── models/
│       │   │   ├── banner_model.dart
│       │   │   ├── banner_model.freezed.dart
│       │   │   ├── banner_model.g.dart
│       │   │   ├── category_model.dart
│       │   │   ├── category_model.freezed.dart
│       │   │   ├── category_model.g.dart
│       │   │   ├── product_model.dart
│       │   │   ├── product_model.freezed.dart
│       │   │   └── product_model.g.dart
│       │   └── repositories/
│       │       └── product_repository_impl.dart
│       ├── domain/
│       │   ├── entities/
│       │   │   ├── banner.dart
│       │   │   ├── banner.freezed.dart
│       │   │   ├── category.dart
│       │   │   ├── category.freezed.dart
│       │   │   ├── product.dart
│       │   │   └── product.freezed.dart
│       │   └── repositories/
│       │       └── product_repository.dart
│       └── presentation/
│           ├── notifiers/
│           │   ├── product_detail_notifier.dart
│           │   └── product_notifier.dart
│           ├── pages/
│           │   ├── home_page.dart
│           │   └── product_detail_page.dart
│           └── widgets/
└── main.dart
```
