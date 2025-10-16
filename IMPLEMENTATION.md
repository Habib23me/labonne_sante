

# Implementation Plan

This document outlines the phased implementation plan for the "La Bonne Sante" Flutter application.

## Journal

*   **Phase 1:** Project setup and initialization.
*   **Phase 2:** Core and Data Layer Setup.
    *   Created the directory structure for the core and data layers.
    *   Added all the required dependencies.
    *   Set up the Drift database with a `Product` table and a `TypeConverter` for lists.
    *   Implemented the Dio client for network requests.
    *   Created the data models and implemented the remote and local data sources.
    *   Implemented the `ProductRepository`.
    *   Had some issues with the tests, but finally managed to make them pass by using a fake implementation of the local data source. This is a good learning for future tests.
*   **Phase 3:** Domain and Presentation Layer (Home Page).
    *   Implemented the domain layer, including entities and repository interfaces.
    *   Implemented the Riverpod providers for the home page.
    *   Built the UI for the home page.
    *   Used models and entities for categories and banners.
*   **Phase 4 (Current):** Product Detail Page.
    *   Implemented the Riverpod providers for the product detail page.
    *   Built the UI for the product detail page.

## Phase 1: Project Setup

- [x] Create a Flutter package in the current directory.
- [x] Remove any boilerplate in the new package that will be replaced, including the `test` dir.
- [x] Update the description of the package in `pubspec.yaml` and set the version number to `0.1.0`.
- [x] Update the `README.md` to include a short placeholder description of the package.
- [x] Create the `CHANGELOG.md` to have the initial version of `0.1.0`.
- [ ] Commit this empty version of the package to the `main` branch.
- [ ] After committing the change, start running the app on the user's preferred device.

After completing a task, if you added any TODOs to the code or didn't fully implement anything, make sure to add new tasks so that you can come back and complete them later.

## Phase 2: Core and Data Layer Setup

- [x] Create the directory structure for the `core` and `data` layers.
- [x] Add dependencies: `riverpod`, `flutter_riverpod`, `drift`, `sqlite3_flutter_libs`, `path_provider`, `path`, `dio`, `freezed`, `json_serializable`, `build_runner`.
- [x] Set up the Drift database, including the `Product` table with `TypeConverter` for lists.
- [x] Implement the Dio client for network requests.
- [x] Create the data models and implement the remote and local data sources.
- [x] Implement the `ProductRepository` in the data layer.

After this phase, you should:

- [x] Create/modify unit tests for testing the code added or modified in this phase, if relevant.
- [x] Run the `dart_fix` tool to clean up the code.
- [x] Run the `analyze_files` tool one more time and fix any issues.
- [x] Run any tests to make sure they all pass.
- [x] Run `dart_format` to make sure that the formatting is correct.
- [x] Re-read the `IMPLEMENTATION.md` file to see what, if anything, has changed in the implementation plan, and if it has changed, take care of anything the changes imply.
- [x] Update the `IMPLEMENTATION.md` file with the current state, including any learnings, surprises, or deviations in the Journal section. Check off any checkboxes of items that have been completed.
- [x] Use `git diff` to verify the changes that have been made, and create a suitable commit message for any changes, following any guidelines you have about commit messages. Be sure to properly escape dollar signs and backticks, and present the change message to the user for approval.
- [x] Wait for approval. Don't commit the changes or move on to the next phase of implementation until the user approves the commit.
- [x] After committing the change, if the app is running, use the `hot_reload` tool to reload it.

## Phase 3: Domain and Presentation Layer (Home Page)

- [x] Create the directory structure for the `domain` and `presentation` layers.
- [x] Implement the domain layer, including entities, repository interfaces, and use cases.
- [x] Implement the Riverpod providers for the home page.
- [x] Build the UI for the home page, including the promo banner, categories, and product sections.

After this phase, you should:

- [x] Create/modify unit tests for testing the code added or modified in this phase, if relevant.
- [x] Run the `dart_fix` tool to clean up the code.
- [x] Run the `analyze_files` tool one more time and fix any issues.
- [x] Run any tests to make sure they all pass.
- [x] Run `dart_format` to make sure that the formatting is correct.
- [x] Re-read the `IMPLEMENTATION.md` file to see what, if anything, has changed in the implementation plan, and if it has changed, take care of anything the changes imply.
- [x] Update the `IMPLEMENTATION.md` file with the current state, including any learnings, surprises, or deviations in the Journal section. Check off any checkboxes of items that have been completed.
- [ ] Use `git diff` to verify the changes that have been made, and create a suitable commit message for any changes, following any guidelines you have about commit messages. Be sure to properly escape dollar signs and backticks, and present the change message to the user for approval.
- [ ] Wait for approval. Don't commit the changes or move on to the next phase of implementation until the user approves the commit.
- [ ] After committing the change, if the app is running, use the `hot_reload` tool to reload it.

## Phase 4: Product Detail Page

- [x] Implement the Riverpod providers for the product detail page.
- [x] Build the UI for the product detail page, including all the specified elements.

After this phase, you should:

- [ ] Create/modify unit tests for testing the code added or modified in this phase, if relevant.
- [ ] Run the `dart_fix` tool to clean up the code.
- [ ] Run the `analyze_files` tool one more time and fix any issues.
- [ ] Run any tests to make sure they all pass.
- [ ] Run `dart_format` to make sure that the formatting is correct.
- [ ] Re-read the `IMPLEMENTATION.md` file to see what, if anything, has changed in the implementation plan, and if it has changed, take care of anything the changes imply.
- [ ] Update the `IMPLEMENTATION.md` file with the current state, including any learnings, surprises, or deviations in the Journal section. Check off any checkboxes of items that have been completed.
- [ ] Use `git diff` to verify the changes that have been made, and create a suitable commit message for any changes, following any guidelines you have about commit messages. Be sure to properly escape dollar signs and backticks, and present the change message to the user for approval.
- [ ] Wait for approval. Don't commit the changes or move on to the next phase of implementation until the user approves the commit.
- [ ] After committing the change, if the app is running, use the `hot_reload` tool to reload it.

