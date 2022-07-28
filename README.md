# flux-open-id-connect-api

Open Id Connect Api

## Installation

### Native

#### Download

```dockerfile
RUN (mkdir -p /%path%/libs/flux-open-id-connect-api && cd /%path%/libs/flux-open-id-connect-api && wget -O - https://github.com/fluxfw/flux-open-id-connect-api/releases/download/%tag%/flux-open-id-connect-api-%tag%-build.tar.gz | tar -xz --strip-components=1)
```

or

Download https://github.com/fluxfw/flux-open-id-connect-api/releases/download/%tag%/flux-open-id-connect-api-%tag%-build.tar.gz and extract it to `/%path%/libs/flux-open-id-connect-api`

#### Load

```php
require_once __DIR__ . "/%path%/libs/flux-open-id-connect-api/autoload.php";
```

### Composer

```json
{
    "repositories": [
        {
            "type": "package",
            "package": {
                "name": "flux/flux-open-id-connect-api",
                "version": "%tag%",
                "dist": {
                    "url": "https://github.com/fluxfw/flux-open-id-connect-api/releases/download/%tag%/flux-open-id-connect-api-%tag%-build.tar.gz",
                    "type": "tar"
                },
                "autoload": {
                    "files": [
                        "autoload.php"
                    ]
                }
            }
        }
    ],
    "require": {
        "flux/flux-open-id-connect-api": "*"
    }
}
```

## Environment variables

| Variable | Description | Default value |
| -------- | ----------- | ------------- |
| **FLUX_OPEN_ID_CONNECT_API_PROVIDER_URl** | OpenIdConnect server url | *-* |
| **FLUX_OPEN_ID_CONNECT_API_PROVIDER_CLIENT_ID** | OpenIdConnect client id<br>Use *FLUX_OPEN_ID_CONNECT_API_PROVIDER_CLIENT_ID_FILE* for docker secrets | *-* |
| **FLUX_OPEN_ID_CONNECT_API_PROVIDER_CLIENT_SECRET** | OpenIdConnect client secret<br>Use *FLUX_OPEN_ID_CONNECT_API_PROVIDER_CLIENT_SECRET_FILE* for docker secrets | *-* |
| **FLUX_OPEN_ID_CONNECT_API_PROVIDER_REDIRECT_URI** | OpenIdConnect redirect uri<br>Like `https://%host%/callback` | *-* |
| FLUX_OPEN_ID_CONNECT_API_PROVIDER_SCOPE | OpenIdConnect server scopes | openid profile email |
| FLUX_OPEN_ID_CONNECT_API_PROVIDER_SUPPORTS_PKCE | Whether OpenIdConnect server supports proof key for code exchange<br>Recommended to use this for additional security | true |
| FLUX_OPEN_ID_CONNECT_API_PROVIDER_TRUST_SELF_SIGNED_CERTIFICATE | If you use a self signed certificate, you need to trust it manually | false |
| **FLUX_OPEN_ID_CONNECT_API_SESSION_CRYPT_SECRET** | Secret for encrypt the cookie<br>Should be a generated random value<br>Use *FLUX_OPEN_ID_CONNECT_API_SESSION_CRYPT_SECRET_FILE* for docker secrets | *-* |
| FLUX_OPEN_ID_CONNECT_API_SESSION_CRYPT_METHOD | Algorithm method | aes-256-cbc |
| FLUX_OPEN_ID_CONNECT_API_SESSION_CRYPT_PLAIN | Bypass encrypt cookie for dev environment | false |
| FLUX_OPEN_ID_CONNECT_API_ROUTE_AFTER_LOGIN_URL | Url to redirect after login | / |
| FLUX_OPEN_ID_CONNECT_API_ROUTE_AFTER_LOGOUT_URL | Url to redirect after logout | / |

Minimal variables required to set are **bold**

## Example

Look at [flux-open-id-connect-rest-api](https://github.com/fluxfw/flux-open-id-connect-rest-api)
