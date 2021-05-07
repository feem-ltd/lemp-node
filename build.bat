@echo off

docker build --file="build/nginx/Dockerfile" -t feem/lemp-node-nginx .
docker build --file="build/nuxt/Dockerfile.production" -t feem/lemp-node-nuxt .
docker build --file="build/laravel/Dockerfile.production" -t feem/lemp-node-laravel .
