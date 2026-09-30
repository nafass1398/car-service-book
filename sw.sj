<meta name='viewport' content='width=device-width, initial-scale=1'/>self.addEventListener('install', e => {
  e.waitUntil(caches.open('svc-v1').then(c => c.addAll(['./', './index.html'])));
});
self.addEventListener('fetch', e => {
  e.respondWith(caches.match(e.request).then(r => r || fetch(e.request)));
});