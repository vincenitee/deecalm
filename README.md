# DeeCalm

**A companion app for patients living with Ulcerative Colitis.**

DeeCalm helps patients track food intake, hydration, flare-ups, and medications, surface possible flare-up patterns from their own logged data, and stay connected to a trusted overseer — a family member, spouse, or friend who can check in on their status.

Built as a solo project to deepen my Flutter and backend architecture skills, and to build something genuinely useful for someone managing a chronic illness.

> Named after Adiana — my girlfriend, whose calm and care inspired both the name and the spirit of this app.

---

## 📱 About the Project

Ulcerative Colitis (UC) is a chronic inflammatory bowel disease, and patients managing it often struggle to identify what triggers a flare-up, stay consistent with medication schedules, and keep the people around them informed during difficult periods. DeeCalm was built directly from requirements gathered through an interview with a UC patient, aiming to solve real, everyday pain points rather than guessing at features.

This is my **first solo Android app**, developed end-to-end — from requirements gathering and database design through to a Play Store release.

---

## ✨ Features

### 🍽️ Food Diary
Log meals with photos, notes, and tags. Flag any entry as a possible flare-up trigger.

### 💧 Water Intake Tracker
Log water intake, set a daily hydration goal, and get interval-based reminders — fully customizable by time window and active days of the week.

### 🔥 Flare-Up & Symptom Log
Track severity (1–5), bowel frequency, presence of blood, and stool consistency using the Bristol Stool Chart — modeled after clinical tools like the Mayo Score.

### 💊 Medication Reminders
Set up scheduled or as-needed medications with local push reminders, and track adherence over time.

### 🔎 Pattern Insights
A rule-based (non-AI) engine that cross-references food logs against flare-ups to surface possible correlations — with patient feedback (Confirmed / Not Related / Unsure) refining what gets shown over time.

### 🩺 Care Team Contacts
Store doctor and clinic details for quick access during emergencies or referrals.

### 👥 Overseer Mode
Link a trusted family member or friend to a permissioned dashboard — the patient controls exactly what's visible, category by category.

---

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| Frontend | Flutter |
| Architecture | Clean Architecture (Domain / Data / Presentation) |
| State Management | Riverpod |
| Backend | Supabase (PostgreSQL, Auth, Realtime, Edge Functions) |
| Local Notifications | flutter_local_notifications |
| Push Notifications | Firebase Cloud Messaging |
| Charts | fl_chart |
| PDF/CSV Export | pdf, csv |
| Code Quality | very_good_analysis, Husky pre-commit/pre-push hooks |

---

## 🏗️ Architecture

DeeCalm follows **Clean Architecture** principles, structured feature-first:

```
lib/
  core/           # shared constants, theming, error handling, base classes
  features/
    auth/
    food_diary/
    water_tracker/
    flareup_log/
    medications/
    pattern_insights/
    care_contacts/
    overseer/
  shared/         # reusable widgets and models
```

Each feature is separated into three layers:
- **Domain** — pure business logic, entities, and use cases (no Flutter or Supabase dependencies)
- **Data** — repository implementations and data sources (Supabase, local storage)
- **Presentation** — screens, widgets, and Riverpod providers

This separation keeps business logic testable and independent of any specific backend or UI framework.

---

## 🔐 Data & Privacy

DeeCalm handles sensitive health data, so security is treated as a first-class concern:

- Row Level Security (RLS) enforced at the database level for every table
- Overseer visibility is **opt-in per data category**, never on by default
- Data encrypted in transit and at rest via Supabase
- Patients can export their own data (PDF/CSV) or delete their account entirely

---

## 📋 Project Status

Currently in active development. See the [project requirements document](./docs/DeeCalm-V1-Requirements.md) for the full v1 scope, build order, and timeline.

**Planned v1 build order:**
1. Auth + Supabase schema
2. Food diary + water tracking
3. Flare-up/symptom log
4. Medication reminders + adherence
5. Care team contacts + data export
6. Pattern insights engine
7. Overseer linking + permissions + alerts

---

## 🚧 Out of Scope for V1

- Conversational AI symptom consultant (may be explored in a future version)
- iOS release
- Multi-language support
- Wearable integration

---

## 👤 Author

Built by [**vincenitee**](https://github.com/vincenitee) — developer working in government IT systems, building this as a personal project to grow as a mobile developer and to support UC patients with a tool built from real patient input.

---

## 📄 License
All Rights Reserved.

© 2026 Vincent Bolinget (vincenitee). This source code is made publicly viewable for portfolio purposes only. No part of this repository may be copied, modified, distributed, or used to create derivative works without explicit written permission from the author.