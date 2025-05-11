# Anthropic Claude 3.5 API

Claude 3.5 is Anthropic's most advanced AI assistant model family, launched in 2024. The model family offers significant improvements in reasoning, instruction following, and document understanding compared to previous Claude versions.

## API Overview

- **Provider**: Anthropic
- **API Name**: Claude 3.5 API
- **Endpoint URL**: https://api.anthropic.com/v1/messages
- **Pricing Model**: Paid (varies by model)
- **Latest Models**:
  - Claude 3.5 Sonnet: Released June 20, 2024
  - Claude 3.5 Haiku: Text-only model released November 4, 2024

## Key Features

- Enhanced reasoning and problem-solving capabilities
- Advanced multimodal understanding
- PDF document processing (added November 2024)
- JSON mode for structured outputs
- Tool use capabilities for executing functions
- Improved context handling
- Multilingual support
- Vision capabilities (image understanding)
- Available across multiple platforms:
  - Anthropic API
  - Amazon Bedrock
  - Google Vertex AI

## Use Cases

- Document analysis and extraction
- Research assistance
- Content generation
- Data analysis and insights
- Customer support
- Code assistance
- Complex problem-solving
- Multi-step reasoning tasks

## Authentication

- API key-based authentication
- Organization-level access controls
- Usage tiers based on subscription

## How to Access

```python
import anthropic

# Initialize the client with your API key
client = anthropic.Anthropic(
    api_key="your-api-key",
)

# Create a message
message = client.messages.create(
    model="claude-3-5-sonnet-20240620",
    max_tokens=1000,
    messages=[
        {"role": "user", "content": "Explain the theory of relativity in simple terms."}
    ]
)

# Print the response
print(message.content[0].text)
```

## PDF Processing (Added November 2024)

```python
import anthropic
import base64

# Initialize the client
client = anthropic.Anthropic(api_key="your-api-key")

# Read and encode the PDF file
with open("document.pdf", "rb") as f:
    base64_pdf = base64.b64encode(f.read()).decode("utf-8")

# Create the message with the PDF attachment
message = client.messages.create(
    model="claude-3-5-sonnet-20240620",
    max_tokens=1000,
    messages=[
        {
            "role": "user",
            "content": [
                {
                    "type": "text",
                    "text": "Summarize this document."
                },
                {
                    "type": "image",
                    "source": {
                        "type": "base64",
                        "media_type": "application/pdf",
                        "data": base64_pdf
                    }
                }
            ]
        }
    ]
)

# Print the response
print(message.content[0].text)
```

## Token Counting

Anthropic added token counting functionality in November 2024 to help developers estimate costs:

```python
import anthropic

client = anthropic.Anthropic(api_key="your-api-key")

# Count tokens in a message
count = client.count_tokens(
    model="claude-3-5-sonnet-20240620",
    text="Hello, Claude! How are you today?"
)

print(f"Token count: {count.token_count}")
```

## Rate Limits

- Default tier: 100 requests per minute
- Enterprise tier: Custom limits based on needs
- Token limits vary by model and context

## Documentation

- [Official Claude API Documentation](https://docs.anthropic.com/)
- [Claude on Amazon Bedrock](https://docs.anthropic.com/en/api/claude-on-amazon-bedrock)
- [Claude on Google Vertex AI](https://cloud.google.com/vertex-ai/generative-ai/docs/partner-models/use-claude)
- [Anthropic API Reference](https://docs.anthropic.com/en/api/overview)

## Updates and Changelog

- **June 2024**: Initial release of Claude 3.5 Sonnet
- **November 2024**:
  - Release of Claude 3.5 Haiku (text-only model)
  - Added PDF support for Claude 3.5 Sonnet
  - Added token counting functionality
- **December 2024**: Added web search capabilities
- **March 2025**: Enhanced document processing abilities

## Limitations

- Maximum context window varies by model
- May produce incorrect information in specialized domains
- Limited availability of some features across different platforms
- Higher pricing compared to some competitors

## References

- [Anthropic API Documentation](https://docs.anthropic.com/)
- [Claude 3.5 Release Notes](https://docs.anthropic.com/en/release-notes/api)
- [Anthropic Web Search API Announcement](https://www.anthropic.com/news/web-search-api)
- [Claude on Amazon Bedrock Documentation](https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters-claude.html) 