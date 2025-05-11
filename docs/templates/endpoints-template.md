# [API Name] Endpoints

This document provides details about the available endpoints for the [API Name] API.

## Base URL

```
[Base URL for API requests]
```

## Authorization

All endpoints require [authentication method] unless otherwise specified. See [authentication.md](./authentication.md) for details.

## Endpoints

### [Endpoint Category 1]

#### `GET /[path]`

Retrieves [resource description].

**Parameters:**

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `[param1]` | `[type]` | Yes/No | [Description] |
| `[param2]` | `[type]` | Yes/No | [Description] |

**Example Request:**

```
curl -X GET "[base-url]/[path]?[param1]=[value]" \
  -H "Authorization: [auth-header]"
```

**Example Response:**

```json
{
  "[field1]": "[value]",
  "[field2]": "[value]"
}
```

**Response Codes:**

| Code | Description |
|------|-------------|
| 200 | Success |
| 400 | Bad Request |
| 401 | Unauthorized |
| 404 | Not Found |

#### `POST /[path]`

Creates a new [resource].

**Request Body:**

```json
{
  "[field1]": "[value]",
  "[field2]": "[value]"
}
```

**Example Request:**

```
curl -X POST "[base-url]/[path]" \
  -H "Authorization: [auth-header]" \
  -H "Content-Type: application/json" \
  -d '{"[field1]":"[value]","[field2]":"[value]"}'
```

**Example Response:**

```json
{
  "[field1]": "[value]",
  "[field2]": "[value]",
  "id": "[generated-id]"
}
```

**Response Codes:**

| Code | Description |
|------|-------------|
| 201 | Created |
| 400 | Bad Request |
| 401 | Unauthorized |
| 422 | Unprocessable Entity |

### [Endpoint Category 2]

#### `PUT /[path]/{id}`

Updates an existing [resource].

**Path Parameters:**

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | Yes | ID of the [resource] |

**Request Body:**

```json
{
  "[field1]": "[value]",
  "[field2]": "[value]"
}
```

**Example Request:**

```
curl -X PUT "[base-url]/[path]/[id]" \
  -H "Authorization: [auth-header]" \
  -H "Content-Type: application/json" \
  -d '{"[field1]":"[value]","[field2]":"[value]"}'
```

**Example Response:**

```json
{
  "[field1]": "[value]",
  "[field2]": "[value]",
  "id": "[id]"
}
```

**Response Codes:**

| Code | Description |
|------|-------------|
| 200 | Success |
| 400 | Bad Request |
| 401 | Unauthorized |
| 404 | Not Found |
| 422 | Unprocessable Entity |

## Pagination

[API Name] uses [pagination method] for endpoints that return multiple items.

**Pagination Parameters:**

| Name | Type | Default | Description |
|------|------|---------|-------------|
| `page` | `integer` | 1 | Page number |
| `limit` | `integer` | 20 | Items per page |

**Pagination Response Headers:**

| Header | Description |
|--------|-------------|
| `X-Total-Count` | Total number of items |
| `X-Page-Count` | Total number of pages |

## Error Responses

Error responses follow this format:

```json
{
  "error": {
    "code": "[error-code]",
    "message": "[error-message]",
    "details": "[optional-details]"
  }
}
```

## Rate Limiting

Endpoints are subject to [rate limits]. See [limitations.md](./limitations.md) for details.

**Rate Limit Headers:**

| Header | Description |
|--------|-------------|
| `X-RateLimit-Limit` | Maximum requests per period |
| `X-RateLimit-Remaining` | Remaining requests in current period |
| `X-RateLimit-Reset` | Time (in seconds) until rate limit resets |

## Additional Resources

- [Link to official API reference]
- [Link to API console or interactive documentation]
- [Other relevant documentation] 