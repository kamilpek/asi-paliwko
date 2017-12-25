# Paliwko

## Wstęp
Systemu komputerowego wspomagania zarządzania flotą pojazdów.

## Funkcjonalności
1. Komputerowe wspomaganie zarządzania flotą pojazdów
    1. Rejestr pojazdów
    1. Kalendarz przeglądów okresowych
    1. Rejestr kosztów
    1. Statystyki kosztów
    1. Miesięczne zestawienia kosztów
    1. Roczne zestawienia kosztów
    1. Korespondencja na temat pojazdów
    1. Przechowywanie załączników do pojazdów
    1. Rejestrowanie przebiegu pojazdów
    1. Rejestr tankowań dla poszczególnych pojazdów
    1. Obliczanie spalania poszczególnych pojazdów    
1. Ogólne
    1. Panel Administracyjny
    1. Zmiany uprawnień użytkowników przez panel
    1. Statystyki modułów
    1. Elektroniczny notes dla każdego użytkownika
    1. Określanie zastępcy dla wybranych użytkowników
    1. Formularz zmiany hasła użytkownika

## Uruchomienie
* sudo docker network create --driver=bridge kps
* sudo docker run --name postgres_db -e POSTGRES_PASSWORD=super_secure --net=kps -d postgres
* sudo docker-compose build app
* sudo docker-compose run --rm app rake db:create db:migrate db:seed RAILS_ENV=production
* sudo docker-compose run --rm app rake assets:precompile RAILS_ENV=production
* sudo docker-compose up -d app

## Specyfikacja zależności
* Ruby v2.3.1
* Rails v5.0.2
* PostgreSQL v9.5.7
* Bootstrap v3.3.7
* RespondJS v1.4.0
* HTML5SHIV v3.7.3
* JSAPI

## Wersja produktu
* v2.3.3 z dnia 25.12.2017

## hub.docker.com :whale:
[kamilpek/paliwko](https://hub.docker.com/r/kamilpek/paliwko/)

## Autor
[Kamil Pek](https://github.com/kamilpek)
