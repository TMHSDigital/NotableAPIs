# APIs by Provider

This directory organizes APIs based on their service providers, making it easy to discover and compare APIs from the same company or organization.

## Major Providers

### Amazon Web Services (AWS)
- Cloud Services
- Machine Learning
- Database
- Analytics

### Google Cloud
- Maps & Location
- Machine Learning
- Cloud Infrastructure
- Data Analytics

### Microsoft Azure
- Cloud Computing
- AI & ML
- IoT
- Developer Tools

### IBM Cloud
- Watson AI
- Cloud Services
- Security
- Blockchain

### Oracle Cloud
- Database
- Enterprise Solutions
- Cloud Infrastructure
- Analytics

## Structure

Each provider directory contains:
- Overview of the provider's API ecosystem
- Authentication and access requirements
- Common SDKs and tools
- Pricing models overview
- Best practices for integration

### Provider Directory Format
```
provider-name/
├── README.md           # Provider overview and common information
├── authentication.md   # Authentication methods and setup
├── pricing.md         # Pricing models and tiers
└── apis/              # Individual API documentation
    ├── api-1/
    ├── api-2/
    └── ...
```

## Adding New Providers

When adding a new provider:
1. Create a new directory using the provider's name
2. Include a comprehensive README following the template
3. Document authentication methods and requirements
4. List available APIs with links to detailed documentation
5. Include relevant SDK information and code examples

## Cross-References

- APIs listed here are cross-referenced with their entries in the `apis/` directory
- Each API entry includes links to its category-based documentation
- Pricing information is synchronized with entries in the pricing-based directories

For detailed contribution guidelines, please refer to the main repository's contribution guide.