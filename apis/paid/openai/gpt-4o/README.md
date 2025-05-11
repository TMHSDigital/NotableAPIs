# OpenAI GPT-4o API

<div align="center">

[![Documentation Status](https://img.shields.io/badge/Documentation-Complete-success.svg)](https://github.com/TMHSDigital/NotableAPIs)
[![API Type](https://img.shields.io/badge/API%20Type-Paid-orange.svg)](https://github.com/TMHSDigital/NotableAPIs/tree/main/apis/paid)
[![Provider](https://img.shields.io/badge/Provider-OpenAI-blue.svg)](https://github.com/TMHSDigital/NotableAPIs/tree/main/by-provider/openai)
<img src="../../../../assets/images/api-doc-badge.svg" alt="Documented by TM Hospitality Strategies">

</div>

GPT-4o is OpenAI's most advanced multimodal model, released in May 2024. It represents a significant upgrade from previous GPT models with enhanced multilingual capabilities, improved reasoning, and native support for multiple input and output modalities.

<div align="center">

## API Overview

</div>

<table>
  <tr>
    <td><strong>Provider</strong></td>
    <td>OpenAI</td>
  </tr>
  <tr>
    <td><strong>API Name</strong></td>
    <td>GPT-4o API</td>
  </tr>
  <tr>
    <td><strong>Endpoint URL</strong></td>
    <td><code>https://api.openai.com/v1/chat/completions</code></td>
  </tr>
  <tr>
    <td><strong>Pricing Model</strong></td>
    <td>Paid ($2.50 per million input tokens, $10.00 per million output tokens)</td>
  </tr>
  <tr>
    <td><strong>Knowledge Cutoff</strong></td>
    <td>October 2023</td>
  </tr>
</table>

<div align="center">

## Key Features

</div>

- Multimodal capabilities:
  - Text input and output
  - Image input and understanding
  - Audio input and output (voice)
- 128,000 token context window
- Corporate customization through fine-tuning
- Enhanced multilingual support (over 50 languages covering 97% of speakers)
- Native voice-to-voice support
- Improved reasoning and problem-solving capabilities
- Released as a unified model for all types of inputs
- Realtime API support (added October 2024)

<div align="center">

## Use Cases

</div>

- Advanced virtual assistants
- Content generation and summarization
- Multilingual translation and communication
- Code generation and debugging
- Image understanding and description
- Voice-based applications
- Advanced reasoning for complex problems
- Document analysis and extraction

<div align="center">

## Performance Metrics

</div>

- Scored 88.7 on the MMLU benchmark (compared to 86.5 for GPT-4)
- Significantly faster inference times than previous models
- Higher accuracy on mathematical and reasoning tasks
- Enhanced code generation capabilities

<div align="center">

## Authentication

</div>

- API key-based authentication
- Requires an OpenAI account with API access
- Usage limits based on account tier

<div align="center">
<a href="./authentication.md">
  <img src="https://img.shields.io/badge/View-Authentication%20Details-blue?style=for-the-badge&logo=lock" alt="View Authentication Details">
</a>
</div>

<div align="center">

## How to Access

</div>

```python
import openai

# Set your API key
openai.api_key = "your-api-key"

# Create a chat completion request
response = openai.chat.completions.create(
    model="gpt-4o",
    messages=[
        {"role": "system", "content": "You are a helpful assistant."},
        {"role": "user", "content": "Explain quantum computing in simple terms."}
    ]
)

# Print the response
print(response.choices[0].message.content)
```

<div align="center">

## Realtime API (Added October 2024)

</div>

The Realtime API provides streaming responses with lower latency, making it suitable for interactive applications:

```python
import openai

# Set your API key
openai.api_key = "your-api-key"

# Create a streaming chat completion
for chunk in openai.chat.completions.create(
    model="gpt-4o",
    messages=[
        {"role": "system", "content": "You are a helpful assistant."},
        {"role": "user", "content": "Write a short poem about technology."}
    ],
    stream=True
):
    if chunk.choices[0].delta.content:
        print(chunk.choices[0].delta.content, end="")
```

<div align="center">

## Rate Limits

</div>

- Tier-based rate limits (varies by account)
- Default rate limits apply to prevent abuse
- Enterprise customers can request higher limits

<div align="center">

## Documentation

</div>

<table>
  <tr>
    <td><a href="https://platform.openai.com/docs/models/gpt-4o">Official Documentation</a></td>
    <td><a href="https://platform.openai.com/docs/api-reference">API Reference</a></td>
    <td><a href="https://github.com/openai/openai-cookbook">Code Examples</a></td>
  </tr>
</table>

<div align="center">

## Updates and Changelog

</div>

| Date | Description |
|------|-------------|
| **May 2024** | Initial release of GPT-4o |
| **August 2024** | Added corporate customization feature |
| **October 2024** | Introduced Realtime API for lower latency responses |
| **January 2025** | Added improved code generation capabilities |
| **March 2025** | Enhanced multilingual support |

<div align="center">

## Limitations

</div>

- Knowledge cutoff of October 2023
- Cannot browse the internet without extensions
- May occasionally produce incorrect information
- Limited understanding of very specialized domains
- Cannot execute code or access external systems

<div align="center">

## References

</div>

- [OpenAI GPT-4o Announcement](https://openai.com/index/hello-gpt-4o/)
- [GPT-4o Model Card](https://platform.openai.com/docs/models/gpt-4o)
- [API Documentation](https://platform.openai.com/docs/api-reference/introduction)
- [Community Forum](https://community.openai.com/t/chatgpt-release-notes-2025-march-27-gpt-4o-a-new-update/1153887) 