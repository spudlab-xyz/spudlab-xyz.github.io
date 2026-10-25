---
title: "Developing the Spudlab theme"
date: 2026-10-26T00:00:00Z
draft: false
description: "How the Spudlab Hugo theme became a restrained, configurable, and accessible foundation for open science websites."
tags: [hugo, design, accessibility, open-source]
---

The [Spudlab theme project](/projects/spudlab-theme/) began with a practical question: what should a website for open science feel like? The answer was not a crowded dashboard or a generic documentation template. It was a calm, legible place where projects, methods, status, and evidence could take priority over decoration.

That goal shaped the first release. The theme uses the Spudlab palette by default, but identity, colours, navigation, social links, homepage sections, and footer content are configurable. This lets Spudlab maintain a recognisable home while allowing other organisations to reuse the theme without presenting themselves as Spudlab.

## Building a useful content system

The theme needed to support more than conventional blog posts. Scientific and engineering work often has a lifecycle, so project cards and articles can show a status alongside descriptions, dates, tags, and reading time. Separate layouts cover the homepage, sections, individual articles, taxonomies, and the error page. RSS and social metadata make the same content useful beyond the site itself.

Configuration was kept close to Hugo's established patterns. Site identity belongs in configuration, page-specific presentation belongs in front matter, and optional custom CSS or JavaScript can be loaded without editing theme files. The example site exercises the supported page types and provides a working configuration that users can adapt.

## Accessibility as a design constraint

Accessibility was considered throughout development rather than added as a final pass. The theme includes semantic landmarks, keyboard navigation, a skip link, visible focus states, reduced-motion support, print styles, and fallbacks when JavaScript is unavailable. Its automatic light and dark modes can be overridden with a three-state control, while the site's content remains available regardless of that control.

These features make the theme accessibility-aware, not automatically compliant in every use. Site owners still need meaningful alternative text, sensible headings, clear link wording, accessible custom colours, and careful content. The theme can provide a sound foundation, but it cannot validate what an author publishes.

## Keeping the stack small

The first release deliberately avoids external fonts, JavaScript libraries, trackers, and additional frontend build tools. Hugo handles templates and asset processing, while a small theme script supports navigation and colour preferences. Fewer moving parts make the output easier to inspect, host, and maintain.

Version 0.1.0 established that foundation with responsive layouts, configurable branding, content metadata, accessibility features, documentation, an example site, and GitHub Pages automation. It supports Hugo 0.123.0 or newer in standard or extended editions and is available under the Apache License 2.0.

The release is a starting point rather than a claim that design work is finished. Development can now proceed against a documented baseline, with changes recorded in the changelog and validated through the example site. Explore the [source repository](https://github.com/spudlab-xyz/spudlab-theme), view the [v0.1.0 release](https://github.com/spudlab-xyz/spudlab-theme/releases/tag/v0.1.0), or see the theme represented as a [Spudlab project](/projects/spudlab-theme/).
