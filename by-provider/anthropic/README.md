# Anthropic APIs

This directory contains documentation for APIs provided by Anthropic.

## Available APIs

- [Claude 3.5](../../apis/paid/anthropic/claude-3.5/) - Anthropic's advanced AI assistant model with enhanced reasoning and document processing capabilities (Released June 2024)

## About Anthropic

Anthropic is an AI safety company founded in 2021 by former members of OpenAI. The company is focused on developing reliable, interpretable, and steerable AI systems. Anthropic's Claude AI assistant is designed with a focus on helpfulness, harmlessness, and honesty.

## API Overview

Anthropic's API platform provides access to the Claude family of AI assistants:

- **Claude 3.5 Sonnet**: Advanced model with multimodal capabilities (released June 2024)
- **Claude 3.5 Haiku**: Text-only model optimized for speed (released November 2024)
- **Claude 3 Opus**: Highest-capability model for complex tasks
- **Claude 3 Sonnet**: Balanced performance model
- **Claude 3 Haiku**: Fastest and most compact model

## Authentication

Anthropic uses API key-based authentication with the `x-api-key` header. See the [Claude 3.5 Authentication Guide](../../apis/paid/anthropic/claude-3.5/authentication.md) for detailed instructions on obtaining and using API keys.

## Access Options

Anthropic Claude models are available through multiple platforms:

- Direct API access through Anthropic
- Amazon Bedrock 
- Google Vertex AI
- Other platform integrations

## Pricing Model

Anthropic follows a usage-based pricing model:
- Pay per million input tokens
- Pay per million output tokens
- Different rates for different model capabilities (Haiku is most affordable, Opus is premium)

## Key Features

- **Multimodal Understanding**: Process text and images (including PDFs)
- **Long Context Windows**: Support for extensive document analysis
- **Tool Use**: Function calling capabilities
- **Web Search**: Integrated web search capability (added December 2024)
- **JSON Mode**: Structured, validated JSON output

## Documentation

- [Official Anthropic API Documentation](https://docs.anthropic.com/)
- [Claude API Reference](https://docs.anthropic.com/en/api/overview)
- [Claude on Amazon Bedrock](https://docs.anthropic.com/en/api/claude-on-amazon-bedrock)
- [Claude on Google Vertex AI](https://cloud.google.com/vertex-ai/generative-ai/docs/partner-models/use-claude)

## Updates and Changelog

- **June 2024**: Initial release of Claude 3.5 Sonnet
- **November 2024**:
  - Release of Claude 3.5 Haiku (text-only model)
  - Added PDF support for Claude 3.5 Sonnet
  - Added token counting functionality
- **December 2024**: Added web search capabilities
- **March 2025**: Enhanced document processing abilities

## Use Cases

- Document analysis and extraction
- Research assistance
- Content generation
- Data analysis and insights
- Customer support
- Code assistance
- Complex problem-solving
- Multi-step reasoning tasks 