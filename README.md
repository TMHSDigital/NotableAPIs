# NotableAPIs

<div align="center">
  <img src="./assets/images/notableapis-logo.svg" alt="NotableAPIs Banner" width="680">
</div>

<p align="center">
  <a href="https://github.com/TMHSDigital"><img src="https://img.shields.io/badge/maintained%20by-TMHSDigital-blue.svg?style=flat-square" alt="Maintained by TMHSDigital"></a>
  <a href="https://github.com/TMHSDigital/NotableAPIs"><img src="https://img.shields.io/badge/last%20updated-May%202025-brightgreen.svg?style=flat-square" alt="Last Updated"></a>
  <a href="https://github.com/TMHSDigital/NotableAPIs"><img src="https://img.shields.io/badge/APIs%20Documented-50+-orange.svg?style=flat-square" alt="APIs Documented"></a>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square" alt="License: MIT"></a>
</p>

<p align="center">A comprehensive repository of API documentation covering various frameworks and platforms.</p>

<br>

## About

NotableAPIs is a curated collection of API documentation organized by pricing model, functionality, and provider. The repository serves as a reference for developers looking to discover, understand, and integrate APIs into their projects.

## Directory Structure

| Directory | Contents |
|:----------|:---------|
| [`apis`](./apis/) | APIs by pricing model (free, freemium, paid) |
| [`by-provider`](./by-provider/) | APIs by provider (OpenAI, Microsoft, etc.) |
| [`categories`](./categories/) | APIs by functionality (Finance, AI, etc.) |
| [`docs`](./docs/) | Documentation templates and guides |

<details>
<summary>Detailed structure</summary>

```
NotableAPIs/
│
├── apis/
│   ├── free/                  # Completely free APIs
│   ├── freemium/              # APIs with free and paid tiers
│   ├── paid/                  # APIs requiring payment
│   └── tools_and_platforms/   # API development tools
│
├── by-provider/               # APIs organized by provider
│   ├── anthropic/
│   ├── microsoft/
│   ├── openai/
│   └── stripe/
│
├── categories/                # APIs grouped by functionality
│   ├── api-marketplaces/
│   ├── financial/
│   └── microservices/
│
└── docs/                      # Documentation and resources
    ├── security/
    ├── templates/
    └── api-trends-2024-2025.md
```

</details>

## Featured APIs

<table>
  <tr>
    <th align="left" width="130">Category</th>
    <th align="left" width="200">API</th>
    <th align="left">Description</th>
  </tr>
  <tr>
    <td rowspan="3">AI & ML</td>
    <td><a href="./apis/paid/openai/gpt-4o/">OpenAI GPT-4o</a></td>
    <td>Multimodal capabilities with text, image, and audio</td>
  </tr>
  <tr>
    <td><a href="./apis/paid/anthropic/claude-3.5/">Anthropic Claude 3.5</a></td>
    <td>Advanced reasoning and document processing</td>
  </tr>
  <tr>
    <td><a href="./apis/paid/microsoft/azure-openai/">Azure OpenAI</a></td>
    <td>Enterprise-grade AI with Azure integration</td>
  </tr>
  <tr>
    <td>Financial</td>
    <td><a href="./apis/paid/stripe/">Stripe API</a></td>
    <td>Comprehensive payment processing</td>
  </tr>
</table>

## API Trends (2024-2025)

<div align="center">
  <table>
    <tr>
      <td align="center" width="175"><b>60%</b><br>Annual Increase<br>in API Calls</td>
      <td align="center" width="175"><b>72%</b><br>Using<br>Microservices</td>
      <td align="center" width="175"><b>85%</b><br>Prioritizing<br>API Security</td>
      <td align="center" width="175"><b>3×</b><br>Growth in<br>AI-Powered APIs</td>
    </tr>
  </table>
</div>

Key trends in the evolving API landscape:

- **AI-Powered APIs**: Enhanced capabilities for reasoning and document processing
- **Microservices Architecture**: Specialized components for targeted business functions
- **API Marketplaces**: Centralized platforms for discovery and integration
- **Security Enhancements**: Advanced protection and compliance features
- **Intelligent Integration**: AI-powered automation for complex workflows

<div align="right">
  <a href="./docs/api-trends-2024-2025.md">More about API trends →</a>
</div>

## Documentation Format

Each API is documented following a standardized format:

```
api-name/
├── README.md           # Overview and basic information
├── authentication.md   # Authentication details
├── endpoints.md        # Available endpoints
├── examples/           # Usage examples
└── limitations.md      # Restrictions and limits
```

## Contributing

We welcome contributions to this repository. See our [contribution guidelines](./docs/CONTRIBUTING.md) for details.

## License

This repository is licensed under the [MIT License](./LICENSE).

<hr>

<p align="center">
  <a href="https://github.com/TMHSDigital">
    <img src="./assets/images/tmhs-badge.svg" alt="TM Hospitality Strategies" width="180">
  </a>
  <br>
  <sub>© 2025 TM Hospitality Strategies</sub>
</p>