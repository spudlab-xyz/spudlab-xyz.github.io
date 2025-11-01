# SpudLab

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Live-brightgreen?style=flat-square&logo=github)](https://spudlab-xyz.github.io/)
[![Hugo](https://img.shields.io/badge/Hugo-0.20+-blue?style=flat-square&logo=hugo)](https://gohugo.io/)
[![License](https://img.shields.io/github/license/spudlab-xyz/spudlab-xyz.github.io?style=flat-square)](LICENSE)
[![GitHub last commit](https://img.shields.io/github/last-commit/spudlab-xyz/spudlab-xyz.github.io?style=flat-square)](https://github.com/spudlab-xyz/spudlab-xyz.github.io/commits/main)
[![GitHub issues](https://img.shields.io/github/issues/spudlab-xyz/spudlab-xyz.github.io?style=flat-square)](https://github.com/spudlab-xyz/spudlab-xyz.github.io/issues)
[![GitHub contributors](https://img.shields.io/github/contributors/spudlab-xyz/spudlab-xyz.github.io?style=flat-square)](https://github.com/spudlab-xyz/spudlab-xyz.github.io/graphs/contributors)
[![GitHub stars](https://img.shields.io/github/stars/spudlab-xyz/spudlab-xyz.github.io?style=flat-square)](https://github.com/spudlab-xyz/spudlab-xyz.github.io/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/spudlab-xyz/spudlab-xyz.github.io?style=flat-square)](https://github.com/spudlab-xyz/spudlab-xyz.github.io/network/members)

> SpudLab is a community-driven space for open-source science, tech, and data projects. We build and share tools, libraries, and resources to help developers, researchers, and curious minds explore and create.

## 🌐 Live Site

Visit our website at: **[https://spudlab-xyz.github.io/](https://spudlab-xyz.github.io/)**

## 📋 Table of Contents

- [About](#about)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Quick Start](#quick-start)
- [Development](#development)
- [Building](#building)
- [Deployment](#deployment)
- [Project Structure](#project-structure)
- [Customization](#customization)
- [Contributing](#contributing)
- [License](#license)

## 🎯 About

SpudLab is built with [Hugo](https://gohugo.io/), a fast and modern static site generator. This repository contains the source code for our community website, showcasing our open-source projects, resources, and community initiatives.

## ✨ Features

- 🚀 **Fast & Lightweight**: Built with Hugo for optimal performance
- 📱 **Responsive Design**: Mobile-first approach for all devices
- 🎨 **Clean Theme**: Minimalist "Blank" theme for maximum customization
- 🔧 **Easy to Maintain**: Simple structure for quick updates
- 📝 **Markdown Support**: Write content in Markdown
- 🌐 **GitHub Pages Ready**: Automated deployment via GitHub Actions

## 📋 Prerequisites

Before you begin, ensure you have the following installed:

- [Hugo](https://gohugo.io/installation/) (Extended version recommended)
- [Git](https://git-scm.com/)
- A text editor or IDE

### Installing Hugo

**On Ubuntu/Debian:**
```bash
sudo apt-get install hugo
```

**On macOS (with Homebrew):**
```bash
brew install hugo
```

**On Windows (with Chocolatey):**
```bash
choco install hugo
```

**Or download from:** [Hugo Releases](https://github.com/gohugoio/hugo/releases)

## 🚀 Quick Start

1. **Clone the repository:**
   ```bash
   git clone https://github.com/spudlab-xyz/spudlab-xyz.github.io.git
   cd spudlab-xyz.github.io
   ```

2. **Initialize and update the theme submodule (if needed):**
   ```bash
   git submodule update --init --recursive
   ```

3. **Start the development server:**
   ```bash
   hugo server -D
   ```

4. **Open your browser and visit:**
   ```
   http://localhost:1313
   ```

## 🛠️ Development

### Local Development

To start developing locally:

```bash
# Start the Hugo development server with drafts enabled
hugo server -D --watch

# Start with bind to all interfaces (useful for network testing)
hugo server -D --bind 0.0.0.0

# Start with specific port
hugo server -D --port 8080
```

### Creating New Content

```bash
# Create a new page
hugo new content/about.md

# Create a new blog post
hugo new content/posts/my-first-post.md

# Create content with a specific archetype
hugo new content/projects/my-project.md --kind project
```

### Theme Customization

The site uses the "Blank" theme located in `themes/blank/`. To customize:

1. **Override layouts**: Create files in `layouts/` directory
2. **Override static files**: Add files to `static/` directory
3. **Modify configuration**: Edit `config.toml`

## 🏗️ Building

### Build for Production

```bash
# Build the site (output goes to public/)
hugo

# Build with specific environment
hugo --environment production

# Build and minify
hugo --minify
```

### Build Options

```bash
# Clean build (remove public directory first)
rm -rf public && hugo

# Build with future and draft content
hugo -D -F

# Build with verbose output
hugo --verbose
```

## 🚀 Deployment

### GitHub Pages (Automatic)

This site is automatically deployed to GitHub Pages using GitHub Actions:

1. **Push to main branch** triggers the deployment
2. **GitHub Actions** builds the site using Hugo
3. **GitHub Pages** serves the built site from the `gh-pages` branch

The deployment workflow is configured in `.github/workflows/hugo.yml` (if present).

### Manual Deployment

If you need to deploy manually:

```bash
# Build the site
hugo --minify

# The built site is in the public/ directory
# Upload the contents of public/ to your web server
```

### Custom Domain

To use a custom domain:

1. Add a `CNAME` file to `static/` directory with your domain
2. Configure DNS settings with your domain provider
3. Update `baseURL` in `config.toml`

## 📁 Project Structure

```
spudlab-xyz.github.io/
├── archetypes/          # Content templates
├── config.toml          # Site configuration
├── content/             # Site content (Markdown files)
├── layouts/             # HTML templates (overrides theme)
├── public/              # Generated site (build output)
├── static/              # Static assets (images, CSS, JS)
├── themes/              # Hugo themes
│   └── blank/           # Current theme
├── LICENSE              # License file
└── README.md            # This file
```

### Key Files

- **`config.toml`**: Main configuration file
- **`layouts/index.html`**: Homepage template
- **`static/css/style.css`**: Custom styles
- **`themes/blank/`**: Theme files

## 🎨 Customization

### Configuration

Edit `config.toml` to customize:

```toml
baseURL = 'https://spudlab-xyz.github.io/'
languageCode = 'en-us'
title = 'SpudLab'
theme = 'blank'

[params]
  description = 'Your site description'
  author = 'SpudLab Team'
```

### Styling

Add custom CSS to `static/css/style.css` or create new CSS files in the `static/css/` directory.

### Adding Pages

Create new Markdown files in the root directory or organize them in subdirectories for complex sites.

## 🤝 Contributing

We welcome contributions! Please see our contributing guidelines:

1. **Fork the repository**
2. **Create a feature branch**: `git checkout -b feature/amazing-feature`
3. **Commit your changes**: `git commit -m 'Add amazing feature'`
4. **Push to the branch**: `git push origin feature/amazing-feature`
5. **Open a Pull Request**

### Contribution Guidelines

- Ensure your code follows the project's coding standards
- Test your changes locally before submitting
- Update documentation as needed
- Add appropriate commit messages

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🔗 Links

- **Website**: [https://spudlab-xyz.github.io/](https://spudlab-xyz.github.io/)
- **Repository**: [https://github.com/spudlab-xyz/spudlab-xyz.github.io](https://github.com/spudlab-xyz/spudlab-xyz.github.io)
- **Hugo Documentation**: [https://gohugo.io/documentation/](https://gohugo.io/documentation/)
- **Theme Repository**: [https://github.com/vimux/blank](https://github.com/vimux/blank)

## 💡 Support

If you have questions or need help:

- 📝 [Open an issue](https://github.com/spudlab-xyz/spudlab-xyz.github.io/issues)
- 💬 Join our community discussions
- 📧 Contact us through our website

---

<div align="center">
  <strong>Built with ❤️ by the SpudLab community</strong>
</div>