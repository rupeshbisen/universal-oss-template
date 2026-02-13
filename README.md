# Universal OSS Template

An enterprise-grade, production-ready, tech-agnostic open source project template following GitHub best practices. Perfect for Node.js, React, Next.js, Python, Go, Java, and any other programming language or framework.

## 🎯 Features

- ✅ **Tech-Agnostic**: Works with any programming language or framework
- ✅ **Enterprise-Ready**: Professional-grade configurations and workflows
- ✅ **Automated Releases**: Semantic Release for automatic versioning and changelogs
- ✅ **CI/CD Pipelines**: GitHub Actions for linting, formatting, and testing
- ✅ **Code Quality**: ESLint, Prettier, and Commitlint pre-configured
- ✅ **Git Hooks**: Husky for pre-commit and commit-message validation
- ✅ **Comprehensive Docs**: Architecture guide, security policy, code of conduct
- ✅ **GitHub Templates**: Issue templates, PR template, CODEOWNERS support
- ✅ **Developer Friendly**: Easy to customize and extend

## 📋 Table of Contents

- [Quick Start](#quick-start)
- [Project Structure](#project-structure)
- [Setup Instructions](#setup-instructions)
- [Development](#development)
- [Release Process](#release-process)
- [Contributing](#contributing)
- [License](#license)

## 🚀 Quick Start

### Use as GitHub Template

```bash
# Option 1: Using GitHub CLI
gh repo create my-project --template your-username/universal-oss-template

# Option 2: Clone directly
git clone https://github.com/rupeshbisen/universal-oss-template.git my-project
cd my-project
```

### Initial Setup

```bash
# Install dependencies
npm install

# Install git hooks
npm run prepare

# Verify everything works
npm run lint
npm run format:check
```

## 📁 Project Structure

```
universal-oss-template/
├── .github/
│   ├── workflows/
│   │   ├── ci.yml                    # CI pipeline (lint & format)
│   │   └── release.yml               # Automated release workflow
│   ├── ISSUE_TEMPLATE/
│   │   ├── bug_report.md             # Bug report template
│   │   └── feature_request.md        # Feature request template
│   └── PULL_REQUEST_TEMPLATE.md      # PR template
├── .husky/
│   └── commit-msg                    # Git hook for commit linting
├── docs/
│   └── architecture.md               # System architecture documentation
├── examples/
│   └── example.md                    # Usage examples
├── .editorconfig                     # Editor configuration
├── .env.example                      # Environment variables template
├── .eslintrc.json                    # ESLint configuration
├── .gitignore                        # Git ignore patterns
├── .prettierrc                       # Prettier formatting rules
├── CHANGELOG.md                      # Version history (auto-generated)
├── CODE_OF_CONDUCT.md                # Community guidelines
├── CONTRIBUTING.md                   # Contribution guidelines
├── LICENSE                           # MIT License
├── README.md                         # This file
├── SECURITY.md                       # Security policy
├── commitlint.config.js              # Commit message rules
└── package.json                      # Project metadata & scripts
```

## 🛠️ Setup Instructions

### Prerequisites

- Node.js >= 18.0.0
- npm >= 8.0.0
- Git

### Installation

1. **Clone the repository**

   ```bash
   git clone <repository-url>
   cd universal-oss-template
   ```

2. **Install dependencies**

   ```bash
   npm install
   ```

3. **Setup environment**

   ```bash
   cp .env.example .env
   # Edit .env with your configuration
   ```

4. **Install git hooks**

   ```bash
   npm run prepare
   ```

5. **Customize for your project**
   - Update `package.json` with your project name and details
   - Update `README.md` with project-specific information
   - Configure `LICENSE` with your copyright information
   - Update GitHub URLs in workflows and documentation

## 💻 Development

### Available Scripts

```bash
# Linting
npm run lint              # Run ESLint
npm run lint:fix         # Fix linting issues automatically

# Formatting
npm run format           # Format code with Prettier
npm run format:check     # Check if code is formatted

# Setup
npm run prepare          # Install git hooks (runs automatically on npm install)

# Testing
npm test                 # Run tests
npm run test:watch      # Run tests in watch mode

# Release
npm run release         # Publish a new release (GitHub Actions only)
```

### Code Quality Standards

#### Linting

ESLint is configured with sensible defaults. Modify `.eslintrc.json` to customize rules:

```json
{
  "rules": {
    "no-console": "warn",
    "no-unused-vars": "error"
  }
}
```

#### Formatting

Prettier ensures consistent code style. Configuration in `.prettierrc`:

```json
{
  "semi": true,
  "singleQuote": true,
  "tabWidth": 2,
  "trailingComma": "es5",
  "printWidth": 100
}
```

#### Conventional Commits

All commits must follow [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>(<scope>): <subject>

<body>

<footer>
```

**Types:**

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation
- `style`: Code formatting (no logic change)
- `refactor`: Code refactoring
- `perf`: Performance improvement
- `test`: Tests
- `chore`: Build/dependency updates
- `ci`: CI/CD configuration

**Examples:**

```bash
git commit -m "feat(auth): implement JWT authentication"
git commit -m "fix(api): resolve null pointer exception"
git commit -m "docs: update installation steps"
git commit -m "chore(deps): upgrade eslint to v8.0.0"
```

## 🚢 Release Process

Releases are fully automated via **Semantic Release** on merge to `main` branch:

### Version Bumping

- **Patch** (1.0.0 → 1.0.1): `fix:` commits
- **Minor** (1.0.0 → 1.1.0): `feat:` commits
- **Major** (1.0.0 → 2.0.0): Commits with `BREAKING CHANGE:` footer

### Release Steps

1. Create feature branch: `git checkout -b feat/my-feature`
2. Make changes following conventional commits
3. Create pull request with detailed description
4. Get approval from maintainers
5. Merge to `main` branch
6. Semantic Release automatically:
   - Determines version bump
   - Updates `CHANGELOG.md`
   - Creates Git tag
   - Publishes GitHub Release
   - Creates release notes

### Breaking Changes

To trigger a major version bump, include in commit body:

```
feat: redesign authentication system

BREAKING CHANGE: authentication API has changed. Use new token format.
```

## 👥 Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines including:

- Getting started
- Development workflow
- Conventional commits format
- Pull request process
- Code of conduct

### Quick Contribution Steps

1. Fork the repository
2. Create a feature branch: `git checkout -b feat/amazing-feature`
3. Commit changes: `git commit -m "feat: add amazing feature"`
4. Push to branch: `git push origin feat/amazing-feature`
5. Open a Pull Request

## 📚 Documentation

- [Architecture](docs/architecture.md) - System design and structure
- [Examples](examples/example.md) - Usage examples and patterns
- [Security Policy](SECURITY.md) - Vulnerability reporting and best practices
- [Code of Conduct](CODE_OF_CONDUCT.md) - Community standards
- [Changelog](CHANGELOG.md) - Version history

## 📝 License

MIT License - see [LICENSE](LICENSE) for details.

This means you can use this template freely in personal and commercial projects.

## 🙋 Support

- **Issues**: Report bugs or request features via [GitHub Issues](https://github.com/your-username/universal-oss-template/issues)
- **Discussions**: Ask questions in [GitHub Discussions](https://github.com/your-username/universal-oss-template/discussions)
- **Security**: Report vulnerabilities per [SECURITY.md](SECURITY.md)

## 🎓 Template Philosophy

This template follows:

- ✅ [GitHub Best Practices](https://github.com/github/opensource.guide)
- ✅ [Conventional Commits](https://www.conventionalcommits.org/)
- ✅ [Semantic Versioning](https://semver.org/)
- ✅ [Keep a Changelog](https://keepachangelog.com/)

---

**Made with ❤️ for the open source community**
