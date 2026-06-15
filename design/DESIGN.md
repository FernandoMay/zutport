---
name: Zutport Design System
colors:
  surface: '#f8f9ff'
  surface-dim: '#cbdbf5'
  surface-bright: '#f8f9ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#eff4ff'
  surface-container: '#e5eeff'
  surface-container-high: '#dce9ff'
  surface-container-highest: '#d3e4fe'
  on-surface: '#0b1c30'
  on-surface-variant: '#444651'
  inverse-surface: '#213145'
  inverse-on-surface: '#eaf1ff'
  outline: '#757682'
  outline-variant: '#c5c5d3'
  surface-tint: '#4059aa'
  primary: '#00236f'
  on-primary: '#ffffff'
  primary-container: '#1e3a8a'
  on-primary-container: '#90a8ff'
  inverse-primary: '#b6c4ff'
  secondary: '#855300'
  on-secondary: '#ffffff'
  secondary-container: '#fea619'
  on-secondary-container: '#684000'
  tertiary: '#00311f'
  on-tertiary: '#ffffff'
  tertiary-container: '#004a31'
  on-tertiary-container: '#27c38a'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#dce1ff'
  primary-fixed-dim: '#b6c4ff'
  on-primary-fixed: '#00164e'
  on-primary-fixed-variant: '#264191'
  secondary-fixed: '#ffddb8'
  secondary-fixed-dim: '#ffb95f'
  on-secondary-fixed: '#2a1700'
  on-secondary-fixed-variant: '#653e00'
  tertiary-fixed: '#6ffbbe'
  tertiary-fixed-dim: '#4edea3'
  on-tertiary-fixed: '#002113'
  on-tertiary-fixed-variant: '#005236'
  background: '#f8f9ff'
  on-background: '#0b1c30'
  surface-variant: '#d3e4fe'
typography:
  headline-xl:
    fontFamily: Inter
    fontSize: 40px
    fontWeight: '700'
    lineHeight: 48px
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Inter
    fontSize: 32px
    fontWeight: '700'
    lineHeight: 40px
    letterSpacing: -0.02em
  headline-lg-mobile:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '700'
    lineHeight: 32px
  headline-md:
    fontFamily: Inter
    fontSize: 20px
    fontWeight: '600'
    lineHeight: 28px
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-sm:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  label-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '600'
    lineHeight: 16px
    letterSpacing: 0.05em
  ticket-code:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '700'
    lineHeight: 24px
    letterSpacing: 0.1em
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  unit: 8px
  container-padding: 24px
  gutter: 16px
  stack-sm: 8px
  stack-md: 16px
  stack-lg: 32px
---

## Brand & Style

The design system is engineered for a high-velocity travel and logistics platform. The brand personality balances **institutional reliability** with **dynamic energy**, catering to travelers and commuters across West Java. 

The visual style is **Modern Corporate**, characterized by extreme clarity, generous whitespace, and a high-contrast information hierarchy. It avoids unnecessary flourishes, focusing instead on "functional elegance" where depth is used sparingly to guide the user's focus toward action and confirmation. The emotional response should be one of total confidence—the user should feel that their journey from Bogor to Sukabumi is handled with precision.

## Colors

This design system utilizes a structured palette to differentiate between utility and aspiration:

*   **Primary (Indigo Blue):** Represents the core "Zutport" infrastructure. It is used for headers, primary buttons, and navigation anchors to instill a sense of institutional trust.
*   **Secondary (Amber/Gold):** Reserved exclusively for "Premium" tiers, loyalty rewards, and promotional highlights. This provides a warm, high-contrast counterpoint to the deep blue.
*   **Tertiary (Emerald Green):** Used for "Confirmed" statuses, ticket validations, and successful transaction states.
*   **Neutral (Slate):** A scale of grays used for secondary text and structural borders to maintain a clean, professional aesthetic.
*   **Functional Red:** Used sparingly for alerts regarding delays or cancellations in transit routes.

## Typography

The design system relies on **Inter** for its neutral, highly legible character, which remains readable even at small sizes on low-resolution mobile screens. 

*   **Hierarchy:** Use `headline-xl` for major destination titles (e.g., "Exploring Parung"). 
*   **Ticket Typography:** Ticket IDs and reference codes use a specific `ticket-code` style with increased letter spacing to ensure no ambiguity between characters during manual entry.
*   **Readability:** Maintain a strict adherence to `body-md` for travel descriptions to ensure accessibility.

## Layout & Spacing

The design system follows an **8px linear scale** for all spacing and layout decisions. 

*   **Grid:** A 4-column grid for mobile and a 12-column fluid grid for desktop. 
*   **Margins:** Standard screen margins are set to `24px` to provide significant "breathability" for ticket information.
*   **Reflow:** On tablet and desktop, destination cards reflow from a vertical stack to a multi-column grid. Detailed ticket views shift from a full-screen mobile modal to a centered 600px container on larger screens.

## Elevation & Depth

Visual hierarchy is established through a combination of **Tonal Layers** and **Ambient Shadows**:

1.  **Level 0 (Base):** Background color (#F8FAFC), used for the canvas.
2.  **Level 1 (Cards):** White surfaces with a very soft, diffused shadow (15% opacity, 12px blur, 4px Y-offset) to indicate interactivity.
3.  **Level 2 (Floating/Modals):** Higher elevation with a 25% opacity shadow, used for search filters and booking summaries.
4.  **The "Zutlemane" Ticket Depth:** Tickets utilize a distinctive "perforated" divider line. The top section (Destination) and bottom section (Barcode) are visually joined but separated by a dashed stroke and semi-circular cut-outs on the left/right edges to mimic physical ticket stock.

## Shapes

The design system adopts a **Rounded** aesthetic to feel approachable and modern. 

*   **Primary Containers:** Use a standard `16px` (1rem) radius.
*   **Ticket Elements:** Use `24px` radius for the outer container, but keep the internal "perforation" line sharp to maintain the physical metaphor.
*   **Buttons:** Standardized `12px` radius to maintain a professional look without becoming fully circular.
*   **Premium Badge:** A specific pill-shape (`rounded-xl`) with a 2px Amber border to signify "Zutport Premium" status.

## Components

### Buttons
*   **Primary:** Solid Indigo (#1E3A8A) with white text. High-contrast, bold weight.
*   **Secondary:** Ghost style with Indigo border and text.
*   **Premium Action:** Solid Amber (#F59E0B) with dark navy text.

### Ticket Cards
*   **Structure:** Header (Route: Bogor → Sukabumi), Body (Time, Platform, Seat), and Footer (Barcode).
*   **Perforation:** A horizontal dashed line separates the body from the barcode container. Use CSS mask-image or pseudo-elements to create the "punched-hole" effect on the sides of the card at the dash-line intersection.

### Input Fields
*   **Style:** Outlined with a 1px Slate-200 border. Upon focus, the border thickens to 2px Indigo.
*   **Icons:** Use clear, line-art iconography for "Origin" (Pin) and "Destination" (Flag).

### Premium Badge
*   **Visuals:** Gold gradient background with a small star icon. Used on high-end routes or for "Zutport Gold" members.

### Status Chips
*   **On-Time:** Green background, dark green text.
*   **Delayed:** Yellow background, dark brown text.
*   **Cancelled:** Red background, dark red text.