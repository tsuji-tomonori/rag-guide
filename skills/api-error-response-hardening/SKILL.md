---
name: api-error-response-hardening
description: Use when changing API error handling, Hono onError handlers, AWS SDK error handling, or routes that may expose internal exception details in HTTP responses.
---

# API Error Response Hardening

Use this skill when an API route, framework error handler, or service adapter can turn internal exceptions into client-visible responses.

## Required Checks

1. Treat `HTTPException` or explicitly handled domain errors as the only source of client-facing error messages.
2. For unhandled exceptions, log details server-side and return a generic response body.
3. Do not return raw `Error.message`, AWS SDK exception text, ARNs, IAM role names, log group names, bucket/object keys, signed URLs, stack resource IDs, tokens, prompts, debug traces, or request payload dumps.
4. Preserve suitable status codes only when they are intentionally assigned by API code. Do not trust arbitrary `status` properties on SDK or adapter errors as safe client messages.
5. Add or update tests that assert sensitive substrings are absent from responses.
6. If the route downloads logs or debug artifacts, keep authorization checks in place and confirm failures do not leak infrastructure details.

## Suggested Response Shape

- Validation/domain errors: stable, intentional message such as `Validation failed` or `Benchmark run not found`.
- Unhandled 4xx-like adapter errors: `{ "error": "Request failed" }`.
- Unhandled 5xx errors: `{ "error": "Internal server error" }`.

## Suggested Log Shape

Log the original exception with route context when available. Keep the full exception in server logs, not in the HTTP response.

## Completion Notes

Record which tests prove that raw internal details are not exposed. If a failure path cannot be exercised locally, document the untested path and reason.
