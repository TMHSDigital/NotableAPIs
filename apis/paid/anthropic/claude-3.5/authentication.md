# Anthropic Claude 3.5 Authentication

This document provides detailed instructions for setting up and using authentication with the Anthropic Claude 3.5 API.

## Authentication Method

Anthropic Claude 3.5 API uses API key-based authentication with the `x-api-key` header for securing API requests.

## Prerequisites

Before you can authenticate with the API, you will need:

- An Anthropic account
- A valid payment method added to your account
- API access enabled for your organization

## Setup Process

### Step 1: Create an Anthropic Account

1. Visit [Anthropic's website](https://www.anthropic.com/)
2. Click on "Console" or "Sign Up" and follow the registration process
3. Verify your email address
4. Complete any additional verification steps if required

### Step 2: Add a Payment Method

1. Log in to your Anthropic account
2. Navigate to the Billing section
3. Add a valid payment method
4. Verify that your payment method has been successfully added

### Step 3: Obtain API Key

1. Navigate to the API Keys section in the Anthropic Console
2. Click "Create API Key"
3. Provide a name for your key (for your reference only)
4. Copy and securely store the generated API key
5. **Important**: The full key is only shown once at creation time

## Authentication Examples

### Python

```python
import anthropic

# Initialize the client with your API key
client = anthropic.Anthropic(
    api_key="your-api-key",  # Replace with your actual API key
)

# Create a message
response = client.messages.create(
    model="claude-3-5-sonnet-20240620",
    max_tokens=1000,
    messages=[
        {"role": "user", "content": "Hello, how are you?"}
    ]
)

print(response.content[0].text)
```

### Node.js

```javascript
const { Anthropic } = require('@anthropic-ai/sdk');

// Set up the Anthropic client with your API key
const anthropic = new Anthropic({
  apiKey: process.env.ANTHROPIC_API_KEY,  // Access key from environment variable
});

async function callClaude() {
  const message = await anthropic.messages.create({
    model: "claude-3-5-sonnet-20240620",
    max_tokens: 1000,
    messages: [
      { role: "user", content: "Hello, how are you?" }
    ]
  });
  
  console.log(message.content[0].text);
}

callClaude();
```

## Authenticating with cURL

```bash
curl https://api.anthropic.com/v1/messages \
  -H "x-api-key: $ANTHROPIC_API_KEY" \
  -H "anthropic-version: 2023-06-01" \
  -H "content-type: application/json" \
  -d '{
    "model": "claude-3-5-sonnet-20240620",
    "max_tokens": 1000,
    "messages": [
      {"role": "user", "content": "Hello, how are you?"}
    ]
  }'
```

## Using Claude API via Cloud Providers

### Amazon Bedrock

```python
import boto3
import json

bedrock_runtime = boto3.client(
    service_name="bedrock-runtime",
    region_name="us-west-2"  # specify your region
)

payload = {
    "anthropic_version": "bedrock-2023-05-31",
    "max_tokens": 1000,
    "messages": [
        {"role": "user", "content": "Hello, how are you?"}
    ]
}

response = bedrock_runtime.invoke_model(
    modelId="anthropic.claude-3-5-sonnet-20240620",
    body=json.dumps(payload)
)

response_body = json.loads(response["body"].read())
print(response_body["content"][0]["text"])
```

### Google Vertex AI

```python
from vertexai.generative_models import GenerativeModel

# Initialize the model
model = GenerativeModel("claude-3-5-sonnet@20240620")

# Generate content
response = model.generate_content("Hello, how are you?")

print(response.text)
```

## Security Best Practices

- Never expose your API key in client-side code
- Store API keys as environment variables or in a secure vault
- Use a separate API key for each application or service
- Implement proper token handling and storage
- Rotate API keys periodically, especially if there's a potential compromise
- Use the minimum required permissions
- Monitor API usage for unusual activity
- Implement rate limiting on your end to prevent unexpected charges

## Troubleshooting

### Common Authentication Errors

- **401 Unauthorized**: Invalid or missing API key. Check that your API key is correct and properly formatted.
- **403 Forbidden**: Your API key is valid, but you don't have permission to access the resource.
- **429 Too Many Requests**: You've exceeded the rate limit. Implement backoff strategies.
- **Incorrect API Key Format**: Ensure your API key is properly formatted and includes the full string.
- **Version Header Missing**: Make sure to include the `anthropic-version` header in your requests.

## Additional Resources

- [Anthropic API Documentation](https://docs.anthropic.com/en/api/authentication)
- [Claude API Reference](https://docs.anthropic.com/en/api/overview)
- [Claude on Amazon Bedrock Documentation](https://docs.anthropic.com/en/api/claude-on-amazon-bedrock)
- [Claude on Google Vertex AI Documentation](https://cloud.google.com/vertex-ai/generative-ai/docs/partner-models/use-claude) 