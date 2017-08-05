# Paliwko with Docker

## Komendy
1. Start bazy danych
```bash
sudo docker-compose up -d db
```
1. Budowa aplikacji
```bash
sudo docker-compose build app
```

1. Tworzenie bazy i uruchomienie migracji
```bash
sudo docker-compose run --rm app rake db:create db:migrate
```

1. Tworzenie użytkownika
```bash
sudo docker-compose run --rm app rake create_user
```

1. Uruchomienie aplikacji
```bash
sudo docker-compose up -d app
```
