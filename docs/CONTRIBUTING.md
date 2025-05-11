# Contributing to NotableAPIs

<div align="center">
<img src="../assets/images/api-doc-badge.svg" alt="Documented by TM Hospitality Strategies">
</div>

Thank you for your interest in contributing to the NotableAPIs repository! This guide will help you understand how to contribute effectively and ensure consistency across the documentation.

<div align="center">

## Getting Started

</div>

### Prerequisites

- A GitHub account
- Basic knowledge of Markdown
- Familiarity with Git and GitHub workflows
- Understanding of the API you wish to document

### Fork and Clone

1. Fork the repository on GitHub
2. Clone your fork locally:
   ```bash
   git clone https://github.com/YOUR-USERNAME/NotableAPIs.git
   cd NotableAPIs
   ```
3. Add the upstream repository as a remote:
   ```bash
   git remote add upstream https://github.com/ORIGINAL-OWNER/NotableAPIs.git
   ```

<div align="center">

## Repository Structure

</div>

The repository is organized as follows:

- `apis/` - APIs by pricing model (free, freemium, paid)
- `categories/` - APIs by functionality
- `by-provider/` - APIs by provider
- `docs/` - Documentation and templates
- `scripts/` - Utility scripts

<div align="center">

## How to Contribute

</div>

### Adding a New API

1. Determine the appropriate location(s) for the API:
   - Pricing category in `apis/`
   - Functional category in `categories/`
   - Provider category in `by-provider/`

2. Create directories as needed. For example, to add a new free API:
   ```bash
   mkdir -p apis/free/api-name
   ```

3. Use the templates in `docs/templates/` to create the necessary documentation files:
   - `README.md` (required)
   - `authentication.md` (if applicable)
   - `endpoints.md` (if applicable)
   - `limitations.md` (if applicable)

4. Add any example code in an `examples/` directory within the API folder.

### Updating Existing Documentation

1. Identify the files that need to be updated
2. Make your changes, ensuring you follow the style guidelines
3. Test any code examples you modify
4. Update the "last updated" date if present

### Cross-Referencing

When an API fits multiple categories or is from a specific provider:

1. Add the primary documentation under the appropriate pricing model in `apis/`
2. Create reference files in `categories/` and `by-provider/` that link to the main documentation

<div align="center">

## Documentation Standards

</div>

### File Structure

Each API should have the following structure:

```
api-name/
├── README.md                # Overview and basic information
├── authentication.md        # Authentication details (if applicable)
├── endpoints.md             # API endpoints information (if applicable)
├── limitations.md           # Rate limits and restrictions (if applicable)
└── examples/                # Code examples
    ├── example1.js
    ├── example2.py
    └── ...
```

### Content Guidelines

- **Be accurate**: Verify all information before submitting
- **Be comprehensive**: Include all relevant details
- **Be concise**: Keep content clear and to the point
- **Include examples**: Provide practical code examples where possible
- **Cite sources**: Link to official documentation and other references
- **Use consistent formatting**: Follow the templates provided

### Markdown Style

- Use ATX-style headers (`#` for title, `##` for sections)
- Use bullet lists (`-`) for unordered lists
- Use numbered lists (`1.`) for sequential steps
- Use backticks (`` ` ``) for inline code
- Use fenced code blocks with language specifiers (` ```python `)
- Use tables for structured data
- Use relative links for internal references
- Center section headings with `<div align="center">`

<div align="center">

## Submission Process

</div>

1. Create a new branch for your changes:
   ```bash
   git checkout -b feature/add-new-api
   ```

2. Make your changes and commit them with a clear message:
   ```bash
   git add .
   git commit -m "Add documentation for New API"
   ```

3. Push your changes to your fork:
   ```bash
   git push origin feature/add-new-api
   ```

4. Create a Pull Request (PR) to the main repository
5. Provide a clear description of your changes in the PR
6. Respond to any feedback or requested changes

<div align="center">

## Review Process

</div>

All contributions will be reviewed for:

1. Accuracy of information
2. Compliance with documentation standards
3. Completeness of documentation
4. Code example functionality
5. Overall quality and usefulness

<div align="center">

## Keeping Your Fork Updated

</div>

Regularly update your fork with changes from the upstream repository:

```bash
git fetch upstream
git checkout main
git merge upstream/main
git push origin main
```

<div align="center">

## Questions or Issues

</div>

If you have questions or encounter issues, please:

1. Check existing issues to see if your question has already been addressed
2. Open a new issue if needed, with a clear description of your question or problem

<div align="center">

## Code of Conduct

</div>

Please be respectful and constructive in all interactions. We aim to maintain a welcoming and inclusive community for all contributors.

<div align="center">

## Additional Resources

</div>

- [Markdown Guide](https://www.markdownguide.org/)
- [GitHub Docs](https://docs.github.com/en)
- [How to Write a Good Commit Message](https://chris.beams.io/posts/git-commit/)

<hr>

<div align="center">
Thank you for contributing to NotableAPIs and helping to build a valuable resource for the API development community!
</div> 