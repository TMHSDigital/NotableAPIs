# OpenAI GPT-4o Authentication

This document provides detailed instructions for setting up and using authentication with the OpenAI GPT-4o API.

## Authentication Method

OpenAI GPT-4o uses API key-based authentication for securing API requests.

## Prerequisites

Before you can authenticate with the API, you will need:

- An OpenAI account
- A payment method added to your account
- API access enabled for your account

## Setup Process

### Step 1: Create an OpenAI Account

1. Visit [OpenAI's website](https://openai.com/)
2. Click on "Sign Up" and follow the registration process
3. Verify your email address

### Step 2: Add a Payment Method

1. Log in to your OpenAI account
2. Navigate to the Billing section
3. Add a valid payment method (credit card or other accepted payment types)
4. Verify that your payment method has been successfully added

### Step 3: Enable API Access

1. Navigate to the [API Keys section](https://platform.openai.com/api-keys) of your account
2. Click "Create new secret key"
3. Provide a name for your key (for your reference only)
4. Copy and securely store the generated API key
5. **Important**: The full key is only shown once at creation time

## Authentication Examples

### Python

```python
import openai

# Set your API key
openai.api_key = "your-api-key"  # Replace with your actual API key

# Create a request
response = openai.chat.completions.create(
    model="gpt-4o",
    messages=[
        {"role": "system", "content": "You are a helpful assistant."},
        {"role": "user", "content": "Hello, how are you?"}
    ]
)

print(response.choices[0].message.content)
```

### Node.js

```javascript
const { OpenAI } = require('openai');

// Set up the OpenAI client with your API key
const openai = new OpenAI({
  apiKey: process.env.OPENAI_API_KEY  // Access key from environment variable
});

async function callGPT4o() {
  const response = await openai.chat.completions.create({
    model: "gpt-4o",
    messages: [
      { role: "system", content: "You are a helpful assistant." },
      { role: "user", content: "Hello, how are you?" }
    ]
  });
  
  console.log(response.choices[0].message.content);
}

callGPT4o();
```

## Organization IDs

If you belong to multiple organizations, you can specify which organization to use:

### Python

```python
import openai

# Set your API key and organization
openai.api_key = "your-api-key"
openai.organization = "org-your-organization-id"

# Make API request as usual
```

### Node.js

```javascript
const { OpenAI } = require('openai');

const openai = new OpenAI({
  apiKey: process.env.OPENAI_API_KEY,
  organization: process.env.OPENAI_ORGANIZATION_ID
});

// Make API request as usual
```

## Security Best Practices

- Never expose your API key in client-side code
- Store API keys as environment variables or in a secure vault
- Use a separate API key for each application or service
- Set up usage limits to prevent unexpected charges
- Implement proper token handling and storage
- Rotate API keys periodically, especially if there's a potential compromise
- Use the minimum required scope and permissions
- Monitor API usage for unusual activity

## Troubleshooting

### Common Authentication Errors

- **401 Unauthorized**: Invalid or missing API key. Check that your API key is correct and properly formatted.
- **403 Forbidden**: Your API key is valid, but you don't have permission to access the resource (e.g., organization permissions issue).
- **429 Too Many Requests**: You've exceeded the rate limit. Implement backoff strategies.
- **Incorrect API Key Format**: Ensure your API key starts with "sk-" and includes the full string.

## Additional Resources

- [OpenAI API Authentication Guide](https://platform.openai.com/docs/api-reference/authentication)
- [OpenAI API Key Best Practices](https://platform.openai.com/docs/guides/safety-best-practices)
- [OpenAI Rate Limit Documentation](https://platform.openai.com/docs/guides/rate-limits) 