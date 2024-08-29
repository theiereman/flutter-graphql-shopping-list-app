# shopping-list-and-recipes-app

## Design

Idées interfaces :
![Sans-titre-2024-02-06-1400](https://github.com/theiereman/shopping-list-and-recipes-app/assets/141121240/7d24e4be-d335-41b1-b3e2-5bdd071d21cc)  
Fichier : https://drive.proton.me/urls/NY27WQT2YR#8G16LIRKLFH3

## Trello

https://trello.com/b/0uBiZ7ee/application-liste-de-courses-recettes

## Development info

### Run prisma migrations in backend

`cd backend && npx prisma migrate deploy`

### Run build_runner to watch Riverpod changes and auto-generate files

`dart run build_runner watch`

### Usage of flutter_dotenv for secrets

- to make it work add `.env` file at root
- required content in `.env` file :
  ```
    SERVER_URI=https://api.example.com/graphql
  ```
