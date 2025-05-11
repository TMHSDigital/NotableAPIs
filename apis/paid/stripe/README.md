# Stripe API

Stripe is a comprehensive payment processing platform that offers a suite of APIs for online businesses to manage payments, subscriptions, invoices, and more.

## API Overview

- **Provider**: Stripe
- **API Name**: Stripe API
- **Endpoint URL**: https://api.stripe.com/v1
- **Pricing Model**: Paid (transaction-based)
  - Standard pricing: 2.9% + $0.30 per successful card charge (US rates, 2025)
  - Custom pricing available for high-volume businesses
- **Current API Version**: 2025-04-01

## Key Features

- **Payment Processing**: Accept credit cards, digital wallets, and local payment methods
- **Subscriptions and Recurring Billing**: Manage subscription plans and billing cycles
- **Invoicing**: Create, send, and track invoices
- **Connect**: Split payments and manage marketplace transactions
- **Checkout**: Hosted payment pages and embeddable elements
- **Billing**: Subscription billing and invoice management
- **Terminal**: In-person payments integration
- **Radar**: Fraud prevention and risk management
- **Identity**: KYC and identity verification
- **Issuing**: Create and manage virtual and physical cards
- **Climate**: Carbon removal contributions
- **Financial Connections**: Account linking and financial data access
- **Tax**: Automated tax calculation and reporting

## Use Cases

- E-commerce payment processing
- Subscription service management
- Marketplace platform development
- SaaS billing automation
- Omnichannel retail payments
- Crowdfunding and donation collection
- On-demand service payments
- B2B invoice payments

## Authentication

- API key-based authentication
- Secret keys for server-side operations
- Publishable keys for client-side operations
- Restricted API keys with limited permissions
- Webhook signatures for securing webhook endpoints

## How to Access

```javascript
// Server-side Node.js example
const stripe = require('stripe')('sk_test_YourSecretKey');

// Create a payment intent
async function createPayment() {
  const paymentIntent = await stripe.paymentIntents.create({
    amount: 2000, // Amount in cents
    currency: 'usd',
    payment_method_types: ['card'],
  });
  
  return paymentIntent;
}

createPayment().then(paymentIntent => {
  console.log(paymentIntent.client_secret);
});
```

## Client Libraries

Stripe provides official client libraries for multiple programming languages:

- JavaScript/Node.js
- Python
- PHP
- Ruby
- Java
- .NET
- Go

## Rate Limits

- General API: 100 requests per second
- Certain endpoints have lower specific limits
- Idempotency keys recommended for preventing duplicate requests
- Retry-After header provided when rate limits are exceeded

## Documentation

- [Official Stripe API Documentation](https://stripe.com/docs/api)
- [Stripe API Reference](https://stripe.com/docs/api/authentication)
- [Stripe Developer Dashboard](https://dashboard.stripe.com/developers)
- [API Changelog](https://stripe.com/docs/changelog)

## Updates and Changelog (2024-2025)

- **April 2025**: New API version 2025-04-01 released
- **March 2025**: Enhanced "Link" integration for improved conversion rates
- **February 2025**: Advanced fraud prevention with Radar improvements
- **January 2025**: Enhanced Financial Connections data access
- **November 2024**: Expanded local payment method support
- **September 2024**: Improved webhooks management interface
- **July 2024**: New Tax API features for global compliance

## Limitations

- Availability varies by country and region
- Certain payment methods not available in all regions
- Requires compliance with PCI DSS standards
- Account review process may be required for high-risk businesses
- Currency conversion fees apply for non-local currencies

## Security Features

- TLS for all API connections
- PCI compliance
- Tokenization of sensitive data
- Strong Customer Authentication (SCA) support
- Webhook signature verification
- Fraud detection and prevention tools

## References

- [Stripe API Documentation](https://stripe.com/docs/api)
- [Stripe API Changelog](https://stripe.com/docs/changelog)
- [Stripe API Upgrades Guide](https://stripe.com/docs/upgrades)
- [Stripe Dashboard](https://dashboard.stripe.com)
- [Stripe Blog](https://stripe.com/blog) 