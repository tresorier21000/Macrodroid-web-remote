// Nom du cache
const CACHE_NAME = 'md-remote-cache-v2.2.1';
const urlsToCache = [
  './',
  './index.html',
  './favicon.png',
  './favicon.ico',
  './manifest.json'
];

// Installation du Service Worker et mise en cache des fichiers
self.addEventListener('install', event => {
  event.waitUntil(
    caches.open(CACHE_NAME)
      .then(cache => {
        return cache.addAll(urlsToCache);
      })
  );
});

// Récupération des requêtes (Mode Offline)
self.addEventListener('fetch', event => {
  // On ne met pas en cache les requêtes vers l'API MacroDroid
  if (event.request.url.includes('trigger.macrodroid.com')) {
    return;
  }
  
  event.respondWith(
    caches.match(event.request)
      .then(response => {
        // Cache hit - On retourne la réponse du cache
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});

// Nettoyage des anciens caches lors de l'activation
self.addEventListener('activate', event => {
  const cacheWhitelist = [CACHE_NAME];
  event.waitUntil(
    caches.keys().then(cacheNames => {
      return Promise.all(
        cacheNames.map(cacheName => {
          if (cacheWhitelist.indexOf(cacheName) === -1) {
            return caches.delete(cacheName);
          }
        })
      );
    })
  );
});
