# Utility Scripts

This directory contains scripts and tools to help manage, test, and interact with APIs documented in this repository.

## Available Scripts

### Project Management
- `CreateProjectStructure.ps1` - PowerShell script to create the initial repository structure
- `update-readmes.sh` - Script to update README files with latest templates
- `validate-structure.py` - Python script to validate repository structure

### API Testing
- `api-tester.py` - Tool for testing API endpoints
- `rate-limit-monitor.py` - Monitor API rate limits
- `status-checker.py` - Check API service status

### Documentation
- `generate-docs.py` - Generate documentation from templates
- `update-pricing.py` - Update pricing information across docs
- `cross-reference.py` - Maintain cross-references between directories

## Usage

### Prerequisites
- Python 3.8+
- PowerShell 7+ (for Windows scripts)
- Bash (for Unix scripts)
- Required Python packages listed in `requirements.txt`

### Running Scripts
1. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

2. Make scripts executable (Unix):
   ```bash
   chmod +x *.sh
   ```

3. Run a script:
   ```bash
   # Python scripts
   python script-name.py

   # PowerShell scripts
   ./script-name.ps1

   # Bash scripts
   ./script-name.sh
   ```

## Contributing Scripts

When adding new scripts:
1. Include clear documentation
2. Add usage examples
3. List dependencies
4. Follow coding standards
5. Add error handling
6. Include logging

## Script Categories

### Maintenance Scripts
Scripts for maintaining repository structure and documentation

### Testing Scripts
Scripts for testing and validating APIs

### Documentation Scripts
Scripts for generating and updating documentation

### Utility Scripts
General purpose utilities for working with APIs

## Best Practices

- Use consistent logging
- Include error handling
- Add usage documentation
- Follow naming conventions
- Include progress indicators
- Support both Windows and Unix when possible

For detailed contribution guidelines, please refer to the main repository's contribution guide.