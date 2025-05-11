# Stripe API Authentication

This document provides detailed instructions for setting up and using authentication with the Stripe API.

## Authentication Methods

Stripe uses API keys for authentication, with different key types for different scenarios:

1. **Secret API Keys** - For server-side code and secure environments
2. **Publishable API Keys** - For client-side code (browser, mobile apps)
3. **Restricted API Keys** - Limited access keys with specific permissions
4. **Webhook Signing Secrets** - For verifying webhook authenticity

## Prerequisites

Before you can authenticate with the API, you will need:

- A Stripe account
- Access to the Stripe Dashboard
- Appropriate permissions within your Stripe account

## Setup Process

### Step 1: Create a Stripe Account

1. Visit [Stripe's website](https://stripe.com/)
2. Click on "Start now" or "Create account" and follow the registration process
3. Verify your email address
4. Complete the account setup process with your business information

### Step 2: Obtain API Keys

1. Log in to the [Stripe Dashboard](https://dashboard.stripe.com/)
2. Navigate to Developers → API keys
3. You'll see your publishable key and a hidden secret key
4. Click "Reveal test key" to view your secret key
5. **Important**: Keep your secret key confidential and secure

### Step 3: Set Up API Keys for Different Environments

#### Test Mode Keys
By default, you'll see test mode API keys that start with `pk_test_` and `sk_test_`. These should be used for development and testing.

#### Live Mode Keys
Once ready for production:
1. Toggle to "View live keys" in the dashboard
2. Complete any required verification steps
3. Your live keys will start with `pk_live_` and `sk_live_`

### Step 4: Create Restricted API Keys (Optional)

For enhanced security, create keys with limited permissions:

1. In the Stripe Dashboard, go to Developers → API keys
2. Click "Create restricted key"
3. Select only the required permissions and resources
4. Name your key and save it

## Authentication Examples

### Server-Side (Node.js)

```javascript
// Include the Stripe library
const stripe = require('stripe')('sk_test_YourSecretKey');

// Make an API request
async function getCustomers() {
  const customers = await stripe.customers.list({
    limit: 3,
  });
  return customers;
}

getCustomers().then(customers => {
  console.log(customers.data);
});
```

### Client-Side (JavaScript)

```html
<!-- Include Stripe.js -->
<script src="https://js.stripe.com/v3/"></script>

<script>
  // Initialize Stripe with your publishable key
  const stripe = Stripe('pk_test_YourPublishableKey');
  
  // Create a payment element
  const elements = stripe.elements();
  const cardElement = elements.create('card');
  cardElement.mount('#card-element');
  
  // Use the elements with your form submission
</script>
```

### Using cURL

```bash
curl https://api.stripe.com/v1/charges \
  -u sk_test_YourSecretKey: \
  -d amount=2000 \
  -d currency=usd \
  -d source=tok_visa \
  -d description="Example charge"
```

## Webhook Authentication

To verify webhook events from Stripe:

### Node.js Example

```javascript
const express = require('express');
const stripe = require('stripe')('sk_test_YourSecretKey');

const app = express();

// Use the raw body for signature verification
app.use(
  express.raw({
    type: 'application/json'
  })
);

app.post('/webhook', (request, response) => {
  const sig = request.headers['stripe-signature'];
  const webhookSecret = 'whsec_YourWebhookSecret';
  
  let event;
  
  try {
    event = stripe.webhooks.constructEvent(
      request.body,
      sig,
      webhookSecret
    );
  } catch (err) {
    response.status(400).send(`Webhook Error: ${err.message}`);
    return;
  }
  
  // Handle the event
  console.log('Webhook received:', event.type);
  
  response.json({received: true});
});

app.listen(3000, () => console.log('Running on port 3000'));
```

## Security Best Practices

### Protecting API Keys

- **Never expose secret keys** in client-side code or public repositories
- Store keys in environment variables or secure secrets management systems
- Use restricted API keys with minimum required permissions
- Rotate keys periodically, especially after team member departures
- Monitor API key usage for unusual activity

### Environment-Specific Keys

- Use test mode keys (`pk_test_` and `sk_test_`) for development
- Use live mode keys (`pk_live_` and `sk_live_`) only in production
- Set up separate development, staging, and production environments

### Webhook Security

- Verify webhook signatures using Stripe's signing secret
- Implement proper error handling for webhook verification
- Consider using Stripe CLI for local webhook testing
- Monitor webhook event delivery in the Stripe Dashboard

## Troubleshooting

### Common Authentication Errors

- **Authentication Required**: Missing or invalid API key
- **Invalid API Key Provided**: API key is incorrectly formatted
- **Resource Not Found**: Using test key to access live data or vice versa
- **Permission Denied**: Restricted API key missing required permissions
- **Webhook Signature Verification Failed**: Invalid webhook signature

### Quick Fixes

- Double-check your API key value
- Ensure you're using the correct key type (test vs. live)
- Verify the key hasn't been revoked in the dashboard
- Check restricted key permissions if using a restricted key
- Verify webhook signing secret is correct

## Additional Resources

- [Stripe API Keys Documentation](https://stripe.com/docs/keys)
- [Stripe Security Best Practices](https://stripe.com/docs/security)
- [Webhook Signatures Guide](https://stripe.com/docs/webhooks/signatures)
- [Stripe API Authentication Reference](https://stripe.com/docs/api/authentication) 