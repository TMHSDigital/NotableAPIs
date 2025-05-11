# Azure OpenAI Service Authentication

This document provides detailed instructions for setting up and using authentication with the Azure OpenAI Service API.

## Authentication Methods

Azure OpenAI Service supports multiple authentication methods:

1. **API Key Authentication** - Simple authentication using an API key
2. **Azure Active Directory (OAuth)** - More secure token-based authentication
3. **Managed Identity** - For Azure-hosted applications

## Prerequisites

Before you can authenticate with the API, you will need:

- An Azure account
- An Azure subscription with access to Azure OpenAI Service
- An Azure OpenAI Service resource
- Appropriate RBAC permissions for your Azure account

## Setup Process

### Step 1: Create an Azure Account and Subscription

1. Visit [Azure's website](https://azure.microsoft.com/)
2. Sign up for an Azure account if you don't have one
3. Create a subscription or use an existing one

### Step 2: Request Access to Azure OpenAI Service

1. Complete the [Azure OpenAI Service access request form](https://aka.ms/oai/access)
2. Wait for approval (usually takes a few business days)

### Step 3: Create an Azure OpenAI Service Resource

1. Log in to the [Azure Portal](https://portal.azure.com/)
2. Search for "Azure OpenAI" in the marketplace
3. Click "Create"
4. Select your subscription, resource group, region, and name
5. Choose a pricing tier
6. Complete the creation process

### Step 4: Deploy a Model

1. Navigate to your Azure OpenAI resource in the Azure Portal
2. Select "Model deployments" from the left menu
3. Click "Create new deployment"
4. Select a model (e.g., "gpt-4o")
5. Name your deployment (e.g., "gpt4o")
6. Set deployment options and confirm

### Step 5: Get Authentication Credentials

#### For API Key Authentication:

1. Navigate to your Azure OpenAI resource in the Azure Portal
2. Select "Keys and Endpoint" from the left menu
3. Copy either Key1 or Key2 (they are interchangeable)
4. Note the endpoint URL

#### For Azure Active Directory Authentication:

1. Register an application in Azure Active Directory
2. Configure API permissions for Azure OpenAI
3. Create a client secret or use certificate authentication
4. Note the tenant ID, client ID, and client secret/certificate

## Authentication Examples

### Python with API Key

```python
import os
from openai import AzureOpenAI

# Set up the Azure OpenAI client with API key
client = AzureOpenAI(
    api_key=os.getenv("AZURE_OPENAI_API_KEY"),  # Your API key
    api_version="2024-10-21",
    azure_endpoint=os.getenv("AZURE_OPENAI_ENDPOINT")  # Your endpoint URL
)

# Get a response from the model
response = client.chat.completions.create(
    model="deployment-name",  # Your model deployment name, NOT the model name
    messages=[
        {"role": "system", "content": "You are a helpful assistant."},
        {"role": "user", "content": "What is Azure OpenAI Service?"}
    ]
)

print(response.choices[0].message.content)
```

### Python with Azure Active Directory (Microsoft Authentication Library)

```python
import os
from azure.identity import DefaultAzureCredential
from openai import AzureOpenAI

# Set up authentication with Azure AD
credential = DefaultAzureCredential()
token = credential.get_token("https://cognitiveservices.azure.com/.default")

# Set up the Azure OpenAI client with AAD token
client = AzureOpenAI(
    azure_ad_token=token.token,
    api_version="2024-10-21",
    azure_endpoint=os.getenv("AZURE_OPENAI_ENDPOINT")
)

# Use the client as with API key authentication
response = client.chat.completions.create(
    model="deployment-name",  # Your model deployment name
    messages=[
        {"role": "system", "content": "You are a helpful assistant."},
        {"role": "user", "content": "What is Azure OpenAI Service?"}
    ]
)

print(response.choices[0].message.content)
```

### C# with API Key

```csharp
using Azure.AI.OpenAI;
using Azure;

// Set up the Azure OpenAI client with API key
OpenAIClient client = new OpenAIClient(
    new Uri(Environment.GetEnvironmentVariable("AZURE_OPENAI_ENDPOINT")),
    new AzureKeyCredential(Environment.GetEnvironmentVariable("AZURE_OPENAI_API_KEY"))
);

// Create the chat completion options
ChatCompletionsOptions options = new ChatCompletionsOptions
{
    DeploymentName = "deployment-name", // Your model deployment name
    Messages =
    {
        new ChatMessage(ChatRole.System, "You are a helpful assistant."),
        new ChatMessage(ChatRole.User, "What is Azure OpenAI Service?")
    }
};

// Get the response
Response<ChatCompletions> response = await client.GetChatCompletionsAsync(options);
Console.WriteLine(response.Value.Choices[0].Message.Content);
```

### REST API with cURL

```bash
curl https://{your-endpoint}.openai.azure.com/openai/deployments/{your-deployment-name}/chat/completions?api-version=2024-10-21 \
  -H "Content-Type: application/json" \
  -H "api-key: {your-api-key}" \
  -d '{
    "messages": [
      {"role": "system", "content": "You are a helpful assistant."},
      {"role": "user", "content": "What is Azure OpenAI Service?"}
    ]
  }'
```

## Managed Identity Authentication (for Azure-hosted apps)

If your application is hosted in Azure, you can use managed identity for secure, password-less authentication:

```python
from azure.identity import DefaultAzureCredential
from openai import AzureOpenAI

# DefaultAzureCredential will use the managed identity in Azure environments
credential = DefaultAzureCredential()

# Set up the client with the managed identity
client = AzureOpenAI(
    azure_endpoint="https://your-resource.openai.azure.com",
    api_version="2024-10-21",
    azure_ad_token_provider=credential.get_token("https://cognitiveservices.azure.com/.default").token
)

# Use the client as usual
```

## Security Best Practices

- Never hardcode API keys in your code
- Store API keys and credentials in secure configuration stores:
  - Azure Key Vault
  - Environment variables
  - Application configuration with appropriate security
- Use Azure Active Directory when possible for enhanced security
- Implement the principle of least privilege for all identities
- Rotate API keys regularly
- Use private endpoints for network isolation when possible
- Monitor API usage for unusual patterns
- Set up spending limits to prevent unexpected charges

## Troubleshooting

### Common Authentication Errors

- **401 Unauthorized**: Invalid or missing API key/token. Check that your credentials are correct.
- **403 Forbidden**: Your credentials are valid, but you don't have permission to access the resource.
- **404 Not Found**: The deployment name or endpoint URL is incorrect.
- **400 Bad Request**: The API version is missing or incorrect.
- **429 Too Many Requests**: You've exceeded the rate limit. Implement backoff strategies.

## Additional Resources

- [Azure OpenAI Authentication Documentation](https://learn.microsoft.com/en-us/azure/ai-services/openai/reference#authentication)
- [Azure OpenAI Quickstart Guide](https://learn.microsoft.com/en-us/azure/ai-services/openai/quickstart)
- [Azure Identity Library Documentation](https://learn.microsoft.com/en-us/dotnet/api/overview/azure/identity-readme)
- [Azure Key Vault for Secrets Management](https://learn.microsoft.com/en-us/azure/key-vault/general/basic-concepts) 