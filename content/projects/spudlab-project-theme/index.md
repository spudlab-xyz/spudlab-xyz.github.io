---
title: "Spudlab Project theme"
date: 2026-10-29T00:00:00Z
draft: false
description: "An accessible Hugo theme for a single project's landing page, onboarding, help, and structured documentation."
status: "v0.1.0"
tags: [hugo, documentation, web, accessibility, open-source]
---

Spudlab Project theme is a focused Hugo theme for presenting and documenting one project. It carries the visual language and accessible foundation of the main Spudlab theme into a distinct information structure designed to answer four practical questions: what does this project do, why should someone use it, how do they begin, and where can they get help?

## Project experience

The configurable homepage leads visitors from an introduction to action through:

- A project hero with a concise proposition, supporting explanation, and primary links.
- A feature grid with optional locally hosted icons and links to supporting material.
- Ordered onboarding steps that can guide someone from installation to a first result.
- An optional final call to action for documentation, support, contribution, or another next step.

Projects can configure their identity, logo, colour palette, menus, source link, maker attribution, social metadata, footer, and project links without changing the theme. Content outside the documentation tree uses clean generic page and section layouts suitable for background, governance, release notes, or other supporting information.

## Documentation system

Content below `content/docs` becomes structured documentation using Hugo's normal section hierarchy. The theme provides:

- Nested sidebar navigation and section overview cards.
- Breadcrumbs, tables of contents, and previous/next page links.
- Front matter weights for predictable navigation and card ordering.
- Note and warning callouts for information that needs emphasis.
- Readable styles for code, tables, blockquotes, and long-form technical material.

The theme also bundles more than 1,900 icons from Lucide Static 1.61.0. Icons are selected by name and loaded from a same-origin SVG sprite, avoiding an icon font, client-side icon library, or content-delivery network. The Lucide licence notice is included with the distributed assets.

## Accessibility and operational choices

Responsive layouts, semantic landmarks, skip navigation, keyboard-friendly controls, visible focus states, reduced-motion support, print styles, and a no-JavaScript navigation fallback are included. The colour scheme follows the operating-system preference by default and can expose a three-state automatic, light, and dark control.

The implementation deliberately has no external fonts, JavaScript libraries, trackers, or separate frontend build tools. Hugo performs template rendering and asset processing, while a small script handles responsive navigation and stored colour preferences. Site owners remain responsible for accessible content, image alternatives, heading structure, link wording, and sufficient contrast when customising colours.

## Release and use

Version **v0.1.0** was released on 25 October 2026 and is the current project status. It requires Hugo 0.123.0 or newer in either the standard or extended edition and is licensed under the Apache License 2.0. The repository includes content archetypes, a complete example site, strict build validation, GitHub Pages deployment, and tag-driven release automation.

Read [Developing the Spudlab Project theme](/notes/developing-spudlab-project-theme/) for the concept, design decisions, and trade-offs behind the first release.

- [Source repository](https://github.com/spudlab-xyz/spudlab-project-theme)
- [v0.1.0 release](https://github.com/spudlab-xyz/spudlab-project-theme/releases/tag/v0.1.0)
- [Theme demonstration](https://spudlab-xyz.github.io/spudlab-project-theme/)
- [Installation and configuration guide](https://github.com/spudlab-xyz/spudlab-project-theme#install)
