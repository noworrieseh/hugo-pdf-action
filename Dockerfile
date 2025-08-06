FROM ghcr.io/astral-sh/uv:python3.13-bookworm-slim

ADD . /app

ENV PLAYWRIGHT_BROWSERS_PATH=/app/browsers
ENV UV_LINK_MODE=copy

WORKDIR /app
RUN uv sync --locked
RUN uv run playwright install --with-deps --only-shell chromium

ENTRYPOINT ["uv", "run", "cnvt.py"]
