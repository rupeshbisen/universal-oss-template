# Examples

This directory contains example implementations and usage patterns.

## Quick Start Example

### Basic Setup

1. Clone or use this template:

   ```bash
   # Using GitHub CLI
   gh repo create my-project --template your-username/universal-oss-template

   # Or clone directly
   git clone https://github.com/your-username/universal-oss-template.git my-project
   cd my-project
   ```

2. Install dependencies:

   ```bash
   npm install
   ```

3. Start developing:

   ```bash
   # Run linting
   npm run lint

   # Format code
   npm run format
   ```

## Commit Message Examples

Following [Conventional Commits](https://www.conventionalcommits.org/):

### Feature Commits

```bash
git commit -m "feat: add user authentication module"
git commit -m "feat(api): implement rate limiting"
git commit -m "feat(ui): add dark mode support"
```

### Bug Fix Commits

```bash
git commit -m "fix: resolve memory leak in event handler"
git commit -m "fix(auth): correct token refresh logic"
git commit -m "fix(db): handle connection timeout gracefully"
```

### Documentation Commits

```bash
git commit -m "docs: update API reference"
git commit -m "docs(readme): add installation instructions"
```

### Other Commit Types

```bash
# Chores (maintenance tasks)
git commit -m "chore: update dependencies"
git commit -m "chore(ci): optimize workflow caching"

# Refactoring
git commit -m "refactor: simplify authentication flow"
git commit -m "refactor(utils): extract common helpers"

# Style changes (formatting, no code change)
git commit -m "style: format code with prettier"

# Performance improvements
git commit -m "perf: optimize database queries"

# Tests
git commit -m "test: add unit tests for user service"
git commit -m "test(integration): add API endpoint tests"
```

## Workflow Examples

### Creating a Feature Branch

```bash
# Create and switch to a new branch
git checkout -b feat/user-authentication

# Make your changes
# ...

# Stage changes
git add .

# Commit with conventional message
git commit -m "feat(auth): implement user login functionality"

# Push to remote
git push origin feat/user-authentication
```

### Creating a Pull Request

1. Push your feature branch
2. Open a pull request on GitHub
3. Fill out the PR template
4. Request review from maintainers
5. Address any feedback
6. Merge when approved

### Triggering a Release

Releases are automated via semantic-release. When you merge to `main`:

- `feat:` commits trigger a **minor** version bump (1.0.0 → 1.1.0)
- `fix:` commits trigger a **patch** version bump (1.0.0 → 1.0.1)
- `BREAKING CHANGE:` in commit body triggers a **major** version bump (1.0.0 → 2.0.0)

## Customization Examples

### Adding a New Workflow

Create a new file in `.github/workflows/`:

```yaml
# .github/workflows/test.yml
name: Test

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: '20'
          cache: 'npm'
      - run: npm ci
      - run: npm test
```

### Adding ESLint Rules

Extend `.eslintrc.json`:

```json
{
  "extends": ["eslint:recommended"],
  "rules": {
    "no-console": "warn",
    "no-unused-vars": "error",
    "prefer-const": "error"
  }
}
```

### Adding Prettier Options

Modify `.prettierrc`:

```json
{
  "semi": true,
  "singleQuote": true,
  "tabWidth": 2,
  "trailingComma": "es5",
  "printWidth": 100
}
```

## Related Documentation

- [README](../README.md)
- [Contributing Guide](../CONTRIBUTING.md)
- [Architecture](../docs/architecture.md)
