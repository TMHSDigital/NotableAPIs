# Stripe APIs

This directory contains documentation for APIs provided by Stripe.

## Available APIs

- [Stripe API](../../apis/paid/stripe/) - Comprehensive payment processing API for online businesses (Current version: 2025-04-01)

## About Stripe

Stripe is a technology company that builds economic infrastructure for the internet. Businesses of every size—from startups to large enterprises—use Stripe's software and APIs to accept payments, send payouts, and manage their businesses online. Founded in 2010, Stripe has become one of the leading payment processing platforms globally.

## API Overview

Stripe offers a suite of APIs and products for online payment processing and business management:

- **Core API**: Payment processing, customers, products, and subscriptions
- **Billing API**: Subscription and invoice management
- **Connect API**: Marketplace and platform payments
- **Terminal API**: In-person payments
- **Issuing API**: Card issuing and management
- **Financial Connections API**: Financial account linking
- **Radar API**: Fraud prevention
- **Identity API**: Identity verification
- **Tax API**: Tax calculation and reporting
- **Climate API**: Carbon removal contributions

## Authentication

Stripe uses API key-based authentication with several key types:
- Secret keys for server-side operations
- Publishable keys for client-side operations
- Restricted keys with limited permissions
- Webhook signing secrets

See the [Stripe Authentication Guide](../../apis/paid/stripe/authentication.md) for detailed instructions.

## Developer Tools

- **Stripe CLI**: Local development and testing tool
- **Stripe SDK**: Client libraries for multiple languages
- **Stripe Elements**: Pre-built UI components
- **Stripe Checkout**: Hosted payment pages
- **Stripe Testing Tools**: Test cards and simulation features

## Documentation

- [Official Stripe Documentation](https://stripe.com/docs)
- [API Reference](https://stripe.com/docs/api)
- [API Changelog](https://stripe.com/docs/changelog)
- [API Versioning Guide](https://stripe.com/docs/upgrades)

## Updates and Changelog (2024-2025)

- **April 2025**: New API version 2025-04-01 released
- **March 2025**: Enhanced "Link" integration for improved conversion rates
- **February 2025**: Advanced fraud prevention with Radar improvements
- **January 2025**: Enhanced Financial Connections data access
- **November 2024**: Expanded local payment method support
- **September 2024**: Improved webhooks management interface
- **July 2024**: New Tax API features for global compliance

## Use Cases

- **E-commerce**: Online stores and marketplaces
- **SaaS**: Subscription billing and management
- **Marketplaces**: Platform payments and payouts
- **On-demand Services**: Service provider payments
- **Crowdfunding**: Fundraising and donations
- **B2B Payments**: Invoice and recurring billing
- **Omnichannel Retail**: In-person and online payments

## Regional Support

Stripe is available in 40+ countries with localized payment methods, currencies, and compliance features. Support varies by region, with specific payment methods available based on location.

## Integration Patterns

- **Direct Integration**: Using Stripe's client and server libraries
- **Hosted Checkout**: Using Stripe Checkout for minimal integration
- **Embedded Components**: Using Stripe Elements in your UI
- **Mobile SDKs**: Native mobile integrations for iOS and Android
- **No-code Solutions**: Using Stripe with platforms like Shopify or WordPress 