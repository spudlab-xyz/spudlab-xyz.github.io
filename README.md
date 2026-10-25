# Spudlab website

This repository contains the source for [spudlab-xyz.github.io](https://spudlab-xyz.github.io/), Spudlab's main website and blog. The site presents our community-first mission and provides a home for sharing open-source science projects, tools, and updates.

The site is built with [Hugo](https://gohugo.io/) and the [Spudlab theme](https://github.com/spudlab-xyz/spudlab-theme), included as a Git submodule. Its content is organised into Projects, Notes, and About sections.

## Local development

Clone the theme submodule and start Hugo:

```sh
git submodule update --init --recursive
hugo server
```

Create project and note pages as Hugo leaf bundles:

```sh
hugo new content projects/my-project
hugo new content notes/my-note
```

The section archetypes create a separate folder for every entry:

```text
content/
├── projects/
│   └── my-project/
│       └── index.md
└── notes/
    └── my-note/
        └── index.md
```

Place images, data, or downloads used only by an entry beside its `index.md`. Section landing pages remain in `content/projects/_index.md` and `content/notes/_index.md`; the About page and other standalone pages are also maintained under `content/`.

## Deployment

GitHub Pages is configured and ready to deploy this site with GitHub Actions. Pushes to `main` are built and published automatically by the Pages workflow; a deployment can also be started manually from the repository's **Actions** tab.
