---
title: "Developing the Spudlab Project theme"
date: 2026-10-29T00:00:00Z
draft: false
description: "Why Spudlab created a focused Hugo theme for project landing pages, onboarding, help, and structured documentation."
tags: [hugo, design, documentation, accessibility, open-source]
---

The [Spudlab Project theme](/projects/spudlab-project-theme/) grew from a limitation in the original Spudlab theme. A community website and a single project's website need related visual language, but they organise information around different questions. The community site asks what the lab is doing; a project site must quickly explain what one tool does, why it is useful, how to begin, and where to find reliable help.

That distinction became the theme's central concept. Instead of stretching a general publishing layout to cover product documentation, the new theme gives a single project a focused landing page and a structured documentation area. It retains Spudlab's restrained palette and typography while allowing each project to supply its own identity, links, content, and calls to action.

## Designing a route from interest to use

The homepage is built as a progression rather than a collection of unrelated cards. A configurable hero states the project's purpose, a feature grid explains its benefits, onboarding steps turn interest into a first result, and a final call to action points towards help or the next useful task. Every group is optional, so a small project does not need to invent content merely to fill a template.

Configuration is split along Hugo's existing boundaries. Site-wide identity, colours, menus, project links, maker attribution, and custom assets live in site configuration. Homepage sections live in the home page's front matter, while background, governance, release, and other long-form material can use generic pages. This keeps content portable and avoids requiring downstream projects to edit theme files.

## Treating documentation as part of the project

Documentation is a primary layout rather than an afterthought. Hugo's content hierarchy drives nested sidebar navigation, section cards, breadcrumbs, tables of contents, and previous and next links. Authors can control ordering with normal page weights and use a small callout shortcode for notes and warnings. Code, tables, blockquotes, and long-form text share the same readable content treatment.

Icons presented a different design problem. Requiring an icon font, browser library, or content-delivery network would add runtime dependencies and weaken offline and privacy-friendly use. Version 0.1.0 instead bundles the Lucide Static catalogue and serves selected symbols from a same-origin SVG sprite. Projects can choose from more than 1,900 icons while retaining the upstream licence notice and making no third-party request.

## Reusing the accessible foundation

The theme carries forward semantic landmarks, skip navigation, keyboard operation, visible focus styles, responsive layouts, reduced-motion support, print styles, and a navigation fallback when JavaScript is unavailable. Automatic light and dark modes can be supplemented by the same three-state colour control used on the main Spudlab site.

Those features reduce barriers, but they do not make every site automatically accessible. Project maintainers still need meaningful image alternatives, logical headings, descriptive links, readable colour choices, and documentation that works for its intended audience. The theme establishes a foundation; authors remain responsible for the information placed on it.

## Establishing the first release

The development stack remains deliberately small: Hugo templates, CSS processed by Hugo, and a small JavaScript file for navigation and colour preferences. There are no external fonts, trackers, JavaScript libraries, or separate frontend build tools. An example project named Canopy exercises the landing page, documentation hierarchy, callouts, generic pages, and configurable branding. Strict CI builds validate that example before releases are created.

Version **v0.1.0**, released on 25 October 2026, establishes this focused model for project websites. It supports Hugo 0.123.0 or newer and is available under the Apache License 2.0. The release is a baseline rather than a finished answer: real projects can now test whether its path from introduction to documentation remains clear as their content grows.

Explore the [source repository](https://github.com/spudlab-xyz/spudlab-project-theme), view the [v0.1.0 release](https://github.com/spudlab-xyz/spudlab-project-theme/releases/tag/v0.1.0), try the [demonstration site](https://spudlab-xyz.github.io/spudlab-project-theme/), or read the [Spudlab Project theme overview](/projects/spudlab-project-theme/).
