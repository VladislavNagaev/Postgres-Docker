# Образ на основе которого будет создан контейнер
FROM postgres:13

# Копирование файла конфигурации
COPY postgres.conf /etc/postgresql/postgresql.conf

# Точка входа
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]
