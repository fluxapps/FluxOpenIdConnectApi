ARG REST_API_IMAGE
FROM $REST_API_IMAGE AS rest_api

FROM phpswoole/swoole:latest-alpine

LABEL org.opencontainers.image.source="https://github.com/fluxapps/flux-open-id-connect-api"
LABEL maintainer="fluxlabs <support@fluxlabs.ch> (https://fluxlabs.ch)"

COPY --from=rest_api /flux-rest-api /flux-open-id-connect-api/libs/flux-rest-api
COPY . /flux-open-id-connect-api

ENTRYPOINT ["/flux-open-id-connect-api/bin/entrypoint.php"]

EXPOSE 9501
