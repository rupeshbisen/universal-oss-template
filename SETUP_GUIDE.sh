#!/bin/bash
# Universal OSS Template - Setup and Usage Guide
#
# This script documents how to use the Universal OSS Template repository

echo "╔════════════════════════════════════════════════════════════════╗"
echo "║     UNIVERSAL OSS TEMPLATE - ENTERPRISE GITHUB TEMPLATE       ║"
echo "╚════════════════════════════════════════════════════════════════╝"

ecosystem "🎯 FEATURES IMPLEMENTED"
echo "✅ Tech-Agnostic Architecture"
echo "✅ Enterprise-Grade Configuration"
echo "✅ Automated CI/CD Pipelines"
echo "✅ Semantic Versioning & Release Management"
echo "✅ Code Quality Automation (ESLint, Prettier)"
echo "✅ Git Hooks (Husky, Commitlint)"
echo "✅ Comprehensive Documentation"
echo "✅ GitHub Actions Workflows"
echo "✅ Issue & PR Templates"
echo "✅ Community Guidelines"

echo ""
echo "📁 COMPLETE DIRECTORY STRUCTURE"
echo "────────────────────────────────────────────────────────────────"

cat << 'EOF'
universal-oss-template/
│
├── 📂 .github/
│   ├── 📂 workflows/
│   │   ├── ci.yml                    # Linting & formatting CI
│   │   └── release.yml               # Semantic release automation
│   ├── 📂 ISSUE_TEMPLATE/
│   │   ├── bug_report.md             # Bug report template
│   │   └── feature_request.md        # Feature request template
│   └── PULL_REQUEST_TEMPLATE.md      # PR submission template
│
├── 📂 .husky/
│   └── commit-msg                    # Husky commit-msg hook
│
├── 📂 docs/
│   └── architecture.md               # System architecture docs
│
├── 📂 examples/
│   └── example.md                    # Usage examples
│
├── 📄 Configuration Files:
│   ├── .editorconfig                 # Editor settings
│   ├── .env.example                  # Environment template
│   ├── .eslintrc.json                # ESLint rules
│   ├── .gitignore                    # Git ignore patterns
│   ├── .prettierrc                   # Prettier config
│   └── commitlint.config.js          # Commit validation
│
├── 📄 Documentation:
│   ├── README.md                     # Main documentation
│   ├── CONTRIBUTING.md               # Contribution guide
│   ├── CODE_OF_CONDUCT.md            # Community standards
│   ├── SECURITY.md                   # Security policy
│   ├── CHANGELOG.md                  # Version history
│   └── LICENSE                       # MIT License
│
└── 📄 Project Meta:
    ├── package.json                  # Node.js project config
    └── TEMPLATE_CONFIG_REFERENCE.md  # This reference
EOF

echo ""
echo "npm SCRIPTS"
echo "────────────────────────────────────────────────────────────────"
cat << 'EOF'
  npm run lint              Run ESLint analysis
  npm run lint:fix         Automatically fix linting issues
  npm run format           Format code with Prettier
  npm run format:check     Check code formatting
  npm run prepare          Install Husky git hooks
  npm run test             Run tests (placeholder)
  npm run test:watch      Run tests in watch mode
  npm run release         Semantic Release (CI/CD only)
EOF

echo ""
echo "🚀 QUICK START"
echo "────────────────────────────────────────────────────────────────"
cat << 'EOF'
1. Clone or use this as GitHub template:
   gh repo create my-project --template your-username/template

2. Install dependencies:
   npm install

3. Setup environment:
   cp .env.example .env
   # Edit .env with your configuration

4. Install git hooks:
   npm run prepare

5. Start developing:
   git checkout -b feat/my-feature
   # Make changes
   npm run lint:fix
   npm run format
   git add .
   git commit -m "feat(scope): description"
   git push origin feat/my-feature

6. Open pull request and merge to main

7. Semantic Release automatically:
   - Bumps version
   - Updates CHANGELOG.md
   - Creates GitHub Release
EOF

echo ""
echo "📋 CONVENTIONAL COMMITS"
echo "────────────────────────────────────────────────────────────────"
cat << 'EOF'
Format: <type>(<scope>): <subject>

Types:
  feat     New feature (→ minor bump)
  fix      Bug fix (→ patch bump)
  docs     Documentation
  style    Code formatting
  refactor Code refactoring
  perf     Performance improvement
  test     Tests
  chore    Dependencies/build
  ci       CI/CD configuration

Examples:
  feat(auth): add JWT authentication
  fix(api): resolve race condition
  docs(readme): update installation
  chore(deps): upgrade eslint

Breaking Changes:
  Add in commit body:
  BREAKING CHANGE: description
EOF

echo ""
echo "✨ TECHNOLOGIES INCLUDED"
echo "────────────────────────────────────────────────────────────────"
cat << 'EOF'
  ESLint               Code linting
  Prettier             Code formatting
  Husky                Git hooks
  Commitlint           Commit message validation
  Semantic Release     Automated versioning
  GitHub Actions       CI/CD pipelines
EOF

echo ""
echo "📚 DOCUMENTATION FILES"
echo "────────────────────────────────────────────────────────────────"
cat << 'EOF'
  README.md                  Project overview & quick start
  CONTRIBUTING.md            How to contribute & standards
  CODE_OF_CONDUCT.md         Community guidelines
  SECURITY.md                Vulnerability reporting
  CHANGELOG.md              Version history (auto-generated)
  docs/architecture.md       System design documentation
  examples/example.md        Usage patterns & examples
EOF

echo ""
echo "🔄 GITHUB ACTIONS WORKFLOWS"
echo "────────────────────────────────────────────────────────────────"
cat << 'EOF'
CI Pipeline (.github/workflows/ci.yml):
  Triggers: Push & Pull Request
  Jobs:
    - Lint: ESLint analysis
    - Format Check: Prettier verification

Release Pipeline (.github/workflows/release.yml):
  Triggers: Push to main branch
  Jobs:
    - Semantic Release: Version management & publishing
EOF

echo ""
echo "🎯 CUSTOMIZATION CHECKLIST"
echo "────────────────────────────────────────────────────────────────"
cat << 'EOF'
When using this template:
  [ ] Update package.json - name, author, repository
  [ ] Update README.md - project-specific details
  [ ] Update LICENSE - copyright & author
  [ ] Customize ESLint rules (.eslintrc.json)
  [ ] Customize Prettier options (.prettierrc)
  [ ] Update .env.example - project variables
  [ ] Configure branch protection
  [ ] Enable dependabot
  [ ] Add CODEOWNERS file
  [ ] Update GitHub URLs in workflows
  [ ] Customize issue/PR templates
  [ ] Add language-specific configs
EOF

echo ""
echo "🔐 SECURITY FEATURES"
echo "────────────────────────────────────────────────────────────────"
cat << 'EOF'
  ✅ Conventional commit enforcement (commitlint)
  ✅ Code quality gates (ESLint, Prettier)
  ✅ Git hooks for pre-commit validation
  ✅ Semantic versioning for release tracking
  ✅ CHANGELOG auto-generation
  ✅ Security policy (SECURITY.md)
  ✅ Code of Conduct
  ✅ Environment variable templates
  ✅ .gitignore best practices
  ✅ EditorConfig standardization
EOF

echo ""
echo "📖 TEMPLATE PHILOSOPHY"
echo "────────────────────────────────────────────────────────────────"
cat << 'EOF'
Follows industry best practices:
  ✅ GitHub Opensource Guide
  ✅ Conventional Commits Specification
  ✅ Semantic Versioning
  ✅ Keep a Changelog format
  ✅ Semantic Release Framework
  ✅ OWASP Security Best Practices
EOF

echo ""
echo "🌟 READY TO USE"
echo "────────────────────────────────────────────────────────────────"
echo "✅ All 25+ files created"
echo "✅ All configurations in place"
echo "✅ Ready for production deployment"
echo "✅ Template repository ready for GitHub"
echo ""
echo "Push this template to GitHub and use it as a template repository!"
echo ""
echo "Reference: README.md, CONTRIBUTING.md, CODE_OF_CONDUCT.md"
echo "════════════════════════════════════════════════════════════════"
