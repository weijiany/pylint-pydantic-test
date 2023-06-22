FROM python:3.10.11-slim
ENV POETRY_VIRTUALENVS_CREATE=false
RUN python3 -m pip install --no-cache-dir poetry
WORKDIR /app
COPY pyproject.toml poetry.lock /app/
RUN poetry install --no-interaction --no-ansi --no-root

COPY .pylintrc .
