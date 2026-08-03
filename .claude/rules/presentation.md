---
paths:
  - "lib/**/presentation/**/*.dart"
  - "lib/**/pages/**/*.dart"
  - "lib/**/screens/**/*.dart"
  - "lib/**/widgets/**/*.dart"
---

# Presentation rules

## UI responsibilities
- Keep widgets presentational when possible.
- Separate reusable widgets from feature-specific widgets.
- Keep methods short and focused.
- Favor composition over deeply nested widget trees with mixed responsibilities.

## Widget organization
- Prefer extracting UI sections into widget classes instead of large private builder methods.
- Reusable widgets must be placed in separate files.
- Feature-specific widgets that are non-trivial should also be extracted into separate files rather than being hidden as private widget classes inside page/screen files.
- Avoid large page/screen files with many private widget classes.
- Only keep a private widget in the same file when it is truly tiny, single-use, and improves readability without hiding important structure.
- If a page or screen file starts to contain multiple substantial UI sections, extract those sections into separate widget files in the same feature folder.

## Forbidden patterns
- Do not place API calls in widgets, pages, or screens.
- Do not place repository logic in widgets, pages, or screens.
- Do not place database or storage access in widgets, pages, or screens.
- Do not place non-trivial business logic in widgets.

## Async UI
- For screens with async data, handle loading, success, and error states explicitly.
- Show predictable UI states rather than hiding errors or mixing data-fetching concerns into rendering code.

## Consistency
- Prefer existing shared widgets, theme extensions, spacing conventions, and design primitives before creating new UI patterns.
- Match existing naming conventions and folder structure in the feature being edited.
- Follow the existing widget folder structure for extracted UI components.