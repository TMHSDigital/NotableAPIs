# Free APIs

This directory contains APIs that are completely free to use. These APIs are ideal for learning, hobby projects, and small-scale applications.

## Categories

### Public Data
- [OpenWeather Free API](./openweather/) - Basic weather data and forecasts
- [REST Countries](./restcountries/) - Country information and data
- [NASA Open APIs](./nasa/) - Space and earth science data

### Development Tools
- [GitHub API](./github/) - Public repository access
- [JSON Placeholder](./jsonplaceholder/) - Fake REST API for testing
- [HTTPBin](./httpbin/) - HTTP Request & Response testing

### Educational
- [Dictionary API](./dictionary/) - Word definitions and synonyms
- [Math.js](./mathjs/) - Mathematical computations
- [Quotes API](./quotes/) - Programming and inspirational quotes

## Features Common to Free APIs

### Typical Characteristics
- No authentication required (or simple API key)
- Rate limiting applies
- Basic support through community
- Limited to public data
- No SLA guarantees

### Rate Limits
Most free APIs implement rate limiting:
- Hourly/daily request caps
- Concurrent request limits
- IP-based restrictions

### Best Practices
1. Implement caching when possible
2. Respect rate limits
3. Handle errors gracefully
4. Credit the API provider
5. Monitor usage

## Documentation Structure

Each API in this directory follows this format:
```
api-name/
├── README.md           # Overview and basic usage
├── authentication.md   # API key acquisition (if needed)
├── endpoints.md        # Available endpoints
├── examples/          # Usage examples
└── limitations.md     # Rate limits and restrictions
```

## Adding New Free APIs

When adding a new free API:
1. Verify it's completely free to use
2. Document any limitations clearly
3. Include basic usage examples
4. Test all endpoints
5. Add appropriate category tags

## Categories Overview

Free APIs are available in these categories:
- Data & Analytics
- Development Tools
- Education
- Entertainment
- Geography
- Science
- Social Media
- Testing
- Weather

For detailed contribution guidelines, please refer to the main repository's contribution guide.