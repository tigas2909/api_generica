FROM dunglas/frankenphp:php8.4

WORKDIR /app

COPY . .

RUN chown -R www-data:www-data /app

ENV SERVER_NAME=:8080

CMD ["frankenphp", "run", "--config", "/app/Caddyfile"]
