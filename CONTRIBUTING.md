# Contributing to This Project

Thank you for your interest in contributing! We follow open source best practices and maintain high code quality standards. This document guides you through the contribution process.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Workflow](#development-workflow)
- [Conventional Commits](#conventional-commits)
- [Pull Request Process](#pull-request-process)
- [Release Process](#release-process)
- [Testing](#testing)
- [Documentation](#documentation)
- [Reporting Issues](#reporting-issues)

## Code of Conduct

We are committed to providing a welcoming and inclusive environment. Please review our [Code of Conduct](CODE_OF_CONDUCT.md) before contributing.

## Getting Started

### Prerequisites

- Node.js >= 18.0.0
- npm >= 8.0.0
- Git
- GitHub account

### Fork and Clone

1. **Fork the repository** on GitHub
2. **Clone your fork locally**
   ```bash
   git clone https://github.com/your-username/universal-oss-template.git
   cd universal-oss-template
   ```

3. **Add upstream remote** for syncing
   ```bash
   git remote add upstream https://github.com/original-owner/universal-oss-template.git
   ```

4. **Sync with main branch**
   ```bash
   git fetch upstream
   git checkout main
   git merge upstream/main
   ```

### Local Setup

```bash
# Install dependencies
npm install

# Install git hooks
npm run prepare

# Verify setup
npm run lint:fix
npm run format
```

## Development Workflow

### Create Feature Branch

Always create a new branch for your changes:

```bash
git checkout -b feat/my-feature-name
# or
git checkout -b fix/bug-description
# or
git checkout -b docs/doc-update
```

### Make Your Changes

1. Write clean, well-documented code
2. Follow the project's code style
3. Keep changes focused and atomic
4. Add tests for new functionality

### Run Quality Checks

Before committing, run:

```bash
# Check linting
npm run lint

# Fix linting auto-fixable issues
npm run lint:fix

# Format code
npm run format

# Check formatting without changes
npm run format:check
```

### Commit Your Changes

Follow [Conventional Commits](#conventional-commits) format for all commits.

```bash
git add .
git commit -m "feat(scope): description of the feature"
```

## Conventional Commits

All commits must follow the [Conventional Commits](https://www.conventionalcommits.org/) specification.

### Format

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Commit Types

| Type      | Purpose                                                           |
| --------- | ----------------------------------------------------------------- |
| `feat`    | A new feature                                                     |
| `fix`     | A bug fix                                                         |
| `docs`    | Documentation only changes                                        |
| `style`   | Changes that don't affect meaning (formatting, semicolons, etc.) |
| `refactor` | Code change without feature addition or bug fix                  |
| `perf`    | Code change that improves performance                             |
| `test`    | Adding or updating tests                                          |
| `chore`   | Changes to build process, dependencies, or tools                |
| `ci`      | Changes to CI/CD configuration                                    |
| `revert`  | Reverts a previous commit                                         |

### Examples

#### Feature

```bash
git commit -m "feat(auth): add JWT token validation"
```

```
feat(api): implement rate limiting middleware

Rate limiting prevents abuse by restricting requests per IP address.

- Default: 100 requests per minute
- Configurable via environment variables
```

#### Bug Fix

```bash
git commit -m "fix(db): resolve connection timeout issue"
```

```
fix(cache): fix memory leak in event handler

The event listener was not being properly cleaned up, causing
memory to accumulate over time.

Fixes #123
```

#### Documentation

```bash
git commit -m "docs(readme): update installation instructions"
```

#### Breaking Changes

To indicate a breaking change, add `BREAKING CHANGE:` footer:

```bash
git commit -m "feat!(auth): redesign authentication system"
```

```
feat(auth): redesign authentication system

BREAKING CHANGE: Authentication token format has changed from
JWT to PASETO. Update clients to use new token format.

See migration guide: docs/auth-migration.md
```

### Commit Message Tips

- Use imperative mood ("add feature" not "added feature")
- Don't capitalize first letter of subject
- No period (.) at the end of subject
- Keep subject under 50 characters
- Wrap body at 72 characters
- Use body to explain WHAT and WHY, not HOW
- Reference issues: `Fixes #123` or `Closes #456`

## Pull Request Process

### Before Submitting

1. **Sync with latest main**
   ```bash
   git fetch upstream
   git rebase upstream/main
   ```

2. **Run full test suite**
   ```bash
   npm run lint
   npm run lint:fix
   npm run format
   npm test
   ```

3. **Update documentation** if needed
   - README.md for user-facing changes
   - docs/architecture.md for architectural changes
   - Code comments for complex logic

### Create Pull Request

1. **Push to your fork**
   ```bash
   git push origin feat/my-feature-name
   ```

2. **Open PR on GitHub**
   - Use the provided PR template
   - Clear title describing changes
   - Reference related issues
   - Provide context and rationale

3. **Complete the checklist**
   - [ ] Tests pass locally
   - [ ] Code follows style guidelines
   - [ ] Self-review completed
   - [ ] Documentation updated
   - [ ] Commits follow conventional format

### PR Review Process

- At least one approval required before merge
- Address feedback promptly
- Request re-review after changes
- Be collaborative and constructive
- Ask questions if feedback is unclear

## Release Process

We use [Semantic Release](https://semantic-release.gitbook.io/) for automated versioning and releases.

### Automatic Version Bumping

- **Patch** (1.0.0 → 1.0.1): `fix:` and `docs:` commits
- **Minor** (1.0.0 → 1.1.0): `feat:` commits
- **Major** (1.0.0 → 2.0.0): Commits with `BREAKING CHANGE:`

### Release Workflow

1. All PRs merged to `main` trigger CI checks
2. After merge, `.github/workflows/release.yml` executes automatically
3. Semantic Release:
   - Analyzes commits since last version
   - Determines version bump
   - Updates CHANGELOG.md
   - Creates Git tag
   - Publishes GitHub Release
   - Triggers package publishing (if configured)

### Your Role in Releases

- Write conventional commits
- Don't manually update version numbers
- Don't manually edit CHANGELOG.md
- Semantic Release handles everything automatically

## Testing

### Adding Tests

- Write tests for new features
- Update tests for bug fixes
- Maintain or improve code coverage
- Follow existing test patterns

### Running Tests

```bash
# Run tests once
npm test

# Run tests in watch mode
npm run test:watch

# Run with coverage
npm test -- --coverage
```

## Documentation

### Update When Needed

- User-facing changes: Update README.md
- New features: Add to examples/example.md
- Architectural changes: Update docs/architecture.md
- New dependencies: Document in relevant sections
- Breaking changes: Create migration guide

### Documentation Standards

- Clear and concise
- Include examples
- Link to related docs
- Update navigation as needed
- Spell-check before commit

## Reporting Issues

### Bug Reports

Use the [bug report template](.github/ISSUE_TEMPLATE/bug_report.md):

1. Clear title describing the bug
2. Steps to reproduce
3. Expected vs actual behavior
4. Environment details
5. Screenshots if applicable
6. Possible solution (optional)

### Feature Requests

Use the [feature request template](.github/ISSUE_TEMPLATE/feature_request.md):

1. Clear description of the feature
2. Problem it solves
3. Proposed solution
4. Alternative approaches
5. Use cases and examples

### Security Issues

**Do not** open public issues for security vulnerabilities. See [SECURITY.md](SECURITY.md).

## Development Tips

### Using Husky Git Hooks

Git hooks automatically run before commits:

- **Pre-commit**: Lint and format checks
- **Commit-msg**: Conventional commit validation

### Troubleshooting Git Hooks

If hooks aren't working, reinstall:

```bash
npm run prepare
```

### Skipping Hooks (Not Recommended)

```bash
# Skip all hooks
git commit --no-verify

# Skip only linting (still validates commit message)
git commit --no-verify -m "feat: skip all checks"
```

## Community

- **Chat**: GitHub Discussions
- **Issues**: GitHub Issues tracker
- **Docs**: See documentation directory
- **Email**: Contact maintainers

## Thank You!

Your contributions help make this project better for everyone. We appreciate your time and effort!

---

**Questions?** Open an issue or discussion, and maintainers will help you out.
