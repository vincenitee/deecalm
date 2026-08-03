---
paths:
  - "lib/**/*.dart"
---

# Architecture rules

## Layer responsibilities
- Presentation layer contains pages, screens, widgets, UI state, and user interaction handling.
- Domain layer contains entities, repository contracts, and use-cases.
- Data layer contains repository implementations, models/DTOs, mappers, and data sources.

## Boundaries
- Do not place business rules in the presentation layer.
- Do not let presentation depend directly on data sources.
- Do not let domain depend on Flutter, UI packages, or infrastructure details.
- Keep dependency flow pointing inward: presentation -> domain, data -> domain.
- Use dependency inversion for repositories and services where appropriate.

## Feature development
- When scaffolding a new feature, create the relevant presentation, domain, and data pieces together when appropriate.
- Match the existing feature folder structure used in this project.
- Keep files narrowly focused and avoid large multi-purpose classes.
- Extract reusable logic instead of duplicating it across features.

## Mapping
- Map models/DTOs to domain entities explicitly.
- Do not expose raw API/database models directly to presentation.
- Keep translation between layers obvious and maintainable.