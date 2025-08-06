# Container image that runs your code
#FROM ghcr.io/astral-sh/uv:alpine3.21
FROM ghcr.io/astral-sh/uv:python3.13-bookworm-slim

# Copy the project into the image
ADD . /app

ENV PLAYWRIGHT_BROWSERS_PATH=/app/browsers
ENV UV_LINK_MODE=copy

WORKDIR /app
#RUN uv python install 3.13
RUN uv sync --locked
RUN uv run playwright install --with-deps chromium

ENTRYPOINT ["uv", "run", "cnvt.py"]

