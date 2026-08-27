---
name: Serene Vitality
colors:
  surface: '#f9faf6'
  surface-dim: '#d9dad7'
  surface-bright: '#f9faf6'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f3f4f0'
  surface-container: '#edeeeb'
  surface-container-high: '#e8e8e5'
  surface-container-highest: '#e2e3df'
  on-surface: '#1a1c1a'
  on-surface-variant: '#414943'
  inverse-surface: '#2f312f'
  inverse-on-surface: '#f0f1ed'
  outline: '#717973'
  outline-variant: '#c1c8c1'
  surface-tint: '#3b6751'
  primary: '#023321'
  on-primary: '#ffffff'
  primary-container: '#1e4a36'
  on-primary-container: '#8bb99f'
  inverse-primary: '#a2d1b6'
  secondary: '#4c6453'
  on-secondary: '#ffffff'
  secondary-container: '#cce6d1'
  on-secondary-container: '#516857'
  tertiary: '#3d2800'
  on-tertiary: '#ffffff'
  tertiary-container: '#5a3c00'
  on-tertiary-container: '#d6a65b'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#bdedd2'
  primary-fixed-dim: '#a2d1b6'
  on-primary-fixed: '#002113'
  on-primary-fixed-variant: '#234f3b'
  secondary-fixed: '#cfe9d4'
  secondary-fixed-dim: '#b3cdb9'
  on-secondary-fixed: '#0a2013'
  on-secondary-fixed-variant: '#354c3c'
  tertiary-fixed: '#ffddae'
  tertiary-fixed-dim: '#f0be71'
  on-tertiary-fixed: '#281800'
  on-tertiary-fixed-variant: '#604100'
  background: '#f9faf6'
  on-background: '#1a1c1a'
  surface-variant: '#e2e3df'
typography:
  display:
    fontFamily: Manrope
    fontSize: 48px
    fontWeight: '700'
    lineHeight: 56px
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Manrope
    fontSize: 32px
    fontWeight: '600'
    lineHeight: 40px
    letterSpacing: -0.01em
  headline-lg-mobile:
    fontFamily: Manrope
    fontSize: 28px
    fontWeight: '600'
    lineHeight: 36px
  headline-md:
    fontFamily: Manrope
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
  body-lg:
    fontFamily: Manrope
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  body-md:
    fontFamily: Manrope
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  label-md:
    fontFamily: Manrope
    fontSize: 14px
    fontWeight: '600'
    lineHeight: 20px
    letterSpacing: 0.01em
  label-sm:
    fontFamily: Manrope
    fontSize: 12px
    fontWeight: '500'
    lineHeight: 16px
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  unit: 8px
  container-margin: 24px
  gutter: 16px
  stack-sm: 8px
  stack-md: 16px
  stack-lg: 32px
  stack-xl: 64px
---

## Brand & Style
The design system is centered on "Restorative Mindfulness." It targets health-conscious individuals seeking a low-friction, anxiety-free way to track their wellness metrics. The visual language moves away from the clinical "coldness" of traditional health apps, favoring a warm, organic, and grounded aesthetic.

The style is **Organic Minimalism**. It combines the clean structure of modern SaaS with the tactile warmth of physical stationery. Key attributes include:
- **Generous Negative Space:** Prioritizing focus and mental breathing room.
- **Soft Geometry:** Avoiding harsh angles to maintain a friendly, approachable persona.
- **Flat Depth:** Using subtle color shifts and soft shadows rather than complex gradients or skeuomorphism.
- **Intentionality:** Every element serves a purpose; decorative flourishes are minimized to prevent cognitive overload.

## Colors
The palette is inspired by forest landscapes and natural textures to evoke stability and calm.

- **Primary (#1E4A36):** Deep Forest Green. Used for high-emphasis actions, primary branding, and deep structural elements. It provides the "grounding" force of the UI.
- **Background (#F5EFDD):** Warm Off-White. This serves as the canvas, reducing the blue-light strain associated with pure white backgrounds.
- **Secondary (#8FA895):** Sage. Used for muted states, secondary buttons, and decorative icons.
- **Accents:** 
    - **Soft Amber (#E8B76A):** Used for highlighting positive streaks, "low-energy" states, or informational alerts.
    - **Soft Terracotta (#D98668):** Used for urgent alerts, health warnings, or high-intensity metrics.

## Typography
Manrope is selected for its geometric foundation softened by humanist proportions, ensuring legibility and a modern, friendly tone.

- **Headlines:** Use SemiBold (600) or Bold (700) weights to establish clear hierarchy. Use tighter letter spacing for large display text to maintain a cohesive "block" feel.
- **Body Text:** Use Regular (400) weight for maximum readability. Line heights are intentionally generous (1.5x - 1.6x) to prevent dense text blocks that could cause user fatigue.
- **Labels:** Use SemiBold (600) for button text and navigational items to ensure they are distinct from content.

## Layout & Spacing
The layout follows a **Fluid Grid** logic with large safety margins to emphasize the minimalist aesthetic.

- **Grid System:** A 12-column grid for desktop and a 4-column grid for mobile. 
- **Margins:** 24px horizontal margins on mobile devices to create a "contained" feel.
- **Vertical Rhythm:** Built on an 8px base unit. Component internal padding should favor larger values (e.g., 24px or 32px) to support the "generous whitespace" philosophy.
- **Breakpoints:**
    - Mobile: 0 - 599px
    - Tablet: 600 - 1023px
    - Desktop: 1024px+

## Elevation & Depth
Depth is expressed through **Tonal Layering** supplemented by **Ambient Shadows**.

- **Surface Strategy:** The background (#F5EFDD) is the lowest layer. Content cards use a slightly lighter tint of the background or a pure white to pop forward.
- **Shadows:** Use extremely soft, low-opacity shadows to indicate interactivity.
    - *Shadow Profile:* `0px 4px 20px rgba(30, 74, 54, 0.06)`. Note the use of the Primary Green hex for the shadow tint to maintain color harmony.
- **Borders:** Use thin (1px) borders in the Secondary (#8FA895) color at 20% opacity for subtle definition where shadows aren't appropriate.

## Shapes
The shape language is defined by "High Curvature," emphasizing comfort and safety.

- **Component Radius:** Default components use a 16px radius.
- **Container Radius:** Larger cards and modals use a 24px radius (`rounded-xl`).
- **Icons:** Must use 2px rounded line caps and joins. Avoid sharp 90-degree corners in custom iconography.

## Components
- **Buttons:** 
    - *Primary:* Deep Forest Green background, White text, 16px radius.
    - *Secondary:* Sage background (at 20% opacity) with Deep Forest Green text.
- **Cards:** 
    - Use a 24px radius. 
    - Padding should be 24px internally. 
    - No heavy borders; use the Ambient Shadow or a subtle tonal shift for definition.
- **Input Fields:** 
    - Background should be 5% darker than the main background. 
    - 16px radius. 
    - Label text sits above the field in `label-md`.
- **Chips/Badges:** 
    - Fully pill-shaped (100px radius). 
    - Used for tracking categories or status indicators.
- **Progress Bars:** 
    - Thick (12px) tracks with fully rounded ends. 
    - Empty track uses Sage at 15% opacity; filled track uses Primary Green or Soft Amber.
- **Icons:** 
    - 24x24px bounding box. 
    - 2px stroke weight. 
    - Always use rounded terminals.