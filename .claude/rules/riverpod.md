---
paths:
  - "lib/**/*.dart"
---

# Riverpod rules

## General
- Use Riverpod as the only state management solution in this repository.
- Prefer Riverpod Generator with `@riverpod` annotations and generated providers where appropriate.
- Avoid introducing manual or legacy Riverpod patterns unless the existing code in that area already uses them consistently.

## Provider usage
- Use providers to expose state and orchestrate use-cases.
- Keep unrelated business rules out of providers.
- Keep provider logic out of widgets as much as possible.
- Avoid unnecessary provider nesting and overly complex dependency chains.

## Reads and updates
- Use `ref.watch` for reactive reads.
- Use `ref.read` for one-off actions where appropriate.
- Scope and dispose providers correctly when lifecycle management matters.

## Async state
- Use `AsyncValue` patterns appropriately for asynchronous state.
- Handle loading, success, and error states explicitly.
- Prefer predictable state transitions and avoid hidden side effects.

## UI interaction
- Do not use `setState` for feature-level state when the same behavior belongs in a Riverpod provider or notifier.
- Keep widgets focused on rendering and UI interactions, not state orchestration logic.