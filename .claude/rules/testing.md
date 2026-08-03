---
paths:
  - "lib/**/*.dart"
  - "test/**/*.dart"
---

# Testing rules

## Testability
- Favor code that is easy to unit test.
- Domain use-cases should be testable independently from Flutter UI.
- Repositories and data sources should be mockable or replaceable.

## Priorities
- When changing business logic, prioritize tests for use-cases, repositories, and provider/notifier behavior.
- Prefer targeted tests for the affected feature before broad test runs.
- Add or update tests when the change meaningfully affects behavior.

## Verification
- Run `flutter analyze` after meaningful code changes.
- Run relevant tests before considering the task complete.
- If generated code is involved, update generated files before final verification.

## Quality mindset
- Avoid tightly coupling tests to implementation details when behavior-based tests are sufficient.
- Keep tests aligned with the architecture boundaries used in production code.