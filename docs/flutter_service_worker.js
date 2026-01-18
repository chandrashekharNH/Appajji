'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "aaa2521f836583a269b206664050f692",
"version.json": "18d270f1d5ff2bedd45bc6ef801c865d",
"index.html": "23f8ba1f723c69b51b7ead3e582260a1",
"/": "23f8ba1f723c69b51b7ead3e582260a1",
"main.dart.js": "91d99f81f8bc56ca2868e03d745b84f5",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "3bfd412be85ba8d3dc62bc1efc9dd21a",
"assets/NOTICES": "cb347ea6ea2aeccc6ceba735a159518e",
"assets/FontManifest.json": "cdeb947fb97a6f0bccf2793e7080b464",
"assets/AssetManifest.bin.json": "f74e91f669387ce4c66aa707096936b9",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"assets/AssetManifest.bin": "cafd478cdb1ee1a4f443761d1a40ca73",
"assets/fonts/MaterialIcons-Regular.otf": "20f96ff0bb8666947e585296c458c10b",
"assets/assets/images/rawphotos/photo11.jpeg": "0315bd8ddee1d37819bec9f4d0fb8da4",
"assets/assets/images/rawphotos/photo10.jpeg": "d8ce966e1d8edf421e280c22e7c2d91e",
"assets/assets/images/rawphotos/photo6.jpeg": "36cfaea68279497d4783da5c9708a657",
"assets/assets/images/rawphotos/photo7.jpeg": "cd01ef9ec159c2107ab49fbbf7912dd7",
"assets/assets/images/rawphotos/photo16.jpeg": "f9b887698d31b776a5dc14645eeeb4af",
"assets/assets/images/rawphotos/photo4.jpeg": "bb284bbc248d5b0629e21841b6be1f37",
"assets/assets/images/rawphotos/photo15.jpeg": "1b4253d1111e4a5375bb210dda3eb512",
"assets/assets/images/rawphotos/photo8.jpeg": "fc836243305af6ab334e4a8f631a75c0",
"assets/assets/images/rawphotos/photo9.jpeg": "9f3b460c4c22f444fe649a02d2e7ed61",
"assets/assets/images/rawphotos/photo14.jpeg": "c4169318d26d87a9bdeffcfb1494630e",
"assets/assets/images/rawphotos/photo5.jpeg": "3ab5e583ea2d4321976af46fa93e003b",
"assets/assets/images/rawphotos/photo2.jpeg": "9cad2145c963ff1b333da10e6a947ed5",
"assets/assets/images/rawphotos/photo13.jpeg": "128f657700da909298ceefcc7da88429",
"assets/assets/images/rawphotos/photo12.jpeg": "87048b7896dd8be1befea58cf17956d0",
"assets/assets/images/hero/home_hero.jpeg": "91ec34de047702a8876cb670b2d3fff8",
"assets/assets/images/avatars/narasimha.png": "90f1edfc8a1ce3ba68bf1d7b6298c868",
"assets/assets/images/avatars/kurma.png": "608cb5c459343ac7404faf2b252b21f5",
"assets/assets/images/avatars/vamana.png": "f9325c8722ef225fbded85b237aff4a4",
"assets/assets/images/avatars/matsya.png": "e28d3af73284ec2574711ddd7248aea4",
"assets/assets/images/avatars/rama.png": "fa59f53da301004476befb0d2a1c83be",
"assets/assets/images/avatars/buddha.png": "8e3239a3e2c387d38d750af66eef828c",
"assets/assets/images/avatars/varaha.png": "ee0d5972293b8af68c1b3576b69ee423",
"assets/assets/images/avatars/kalki.png": "7f9f86a404a853b76d98204d507dcac8",
"assets/assets/images/avatars/krishna.png": "afa8bb5efd64dddc74fbef29e591a8a2",
"assets/assets/images/profilephotos/god4.png": "23f842a3e917ab66dfc3e2b1358e4b4b",
"assets/assets/images/profilephotos/god1.png": "c0a4c9985ccf997db950818b0e240ee6",
"assets/assets/images/profilephotos/god2.png": "94fcaf1865232e51483211736dc186dd",
"assets/assets/images/profilephotos/god3.png": "c13c6d740022cbe57730cf86b98068bd",
"assets/assets/images/profilephotos/profile.png": "00ad2fef8c655867d5be0a191aed7987",
"assets/assets/images/profilephotos/profile2.png": "541b90fbcd42d049e37ce6082fae8f06",
"assets/assets/images/profilephotos/profile3.png": "a9f56c6ca8ae49d619671948412ed981",
"assets/assets/videos/pooja1.mp4": "42172bd2adbfe1a2a0302b3fb54fb8c8",
"assets/assets/videos/pooja.mp4": "7e9500a98e7b59e927117a6e06d138e0",
"assets/assets/videos/pooja2.mp4": "18789921386c16bcbf9501a91f3abaea",
"assets/assets/fonts/kannada/NotoSerifKannada-Regular.ttf": "81660e81955214f45e56268f244b1279",
"assets/assets/fonts/kannada/NotoSerifKannada-Bold.ttf": "78753e2e829c05ae056ed26275c1d26d",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
