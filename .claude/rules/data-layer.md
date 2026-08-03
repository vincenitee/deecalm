---
paths:
  - "lib/**/data/**/*.dart"
  - "lib/**/datasources/**/*.dart"
  - "lib/**/repositories/**/*.dart"
  - "lib/**/models/**/*.dart"
---

# Data layer rules

## Responsibilities
- Keep remote and local data access inside the data layer.
- Repository implementations belong in the data layer.
- Models/DTOs, mappers, and data sources belong in the data layer.

## Boundaries
- Do not return raw models/DTOs directly to presentation.
- Map data-layer models to domain entities explicitly.
- Keep infrastructure details out of domain contracts and use-cases.

## Repository behavior
- Repository implementations should satisfy domain repository contracts.
- Keep repositories mockable and replaceable.
- Keep data access logic cohesive and avoid mixing unrelated concerns into a single repository.

## Clean code
- Prefer explicit mapping over implicit shape-sharing across layers.
- Keep methods focused and strongly typed.
- Favor readability and testability over reducing file count.