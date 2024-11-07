'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "ac7915b48bd2e7aeeff80e1d9924a3be",
"assets/AssetManifest.bin.json": "297f8be6cd018d8f28ce73e97dba769a",
"assets/AssetManifest.json": "303b57372e079b46a1a5d6cd7a745926",
"assets/assets/images/american_cuisine.jpg": "2ddb59e983507b0f6492cdc783519e97",
"assets/assets/images/biryani.jpg": "22adcbcbf41a077f786f41b97263e0ad",
"assets/assets/images/burger.jpg": "3724d61ee0758717852d38669a0d578d",
"assets/assets/images/butter_chicken.jpg": "001367746c1a2acd95d37c1ab57bbe46",
"assets/assets/images/chad.png": "56b555edce28911a829c970843a0c0c6",
"assets/assets/images/croissants.jpg": "e520bdc4cf7d7eff064a4e10716d2471",
"assets/assets/images/french_cuisine.jpg": "93e3a0ec354974b3c088d965fa57928c",
"assets/assets/images/greek_cuisine.jpg": "4e83577483b3f3e397da280b3c764981",
"assets/assets/images/greek_salad.jpg": "110b84194b9bfff9043fda14e26bdc45",
"assets/assets/images/green_curry.jpg": "f11ed4da83ccbe7079ae06e06bf5d24b",
"assets/assets/images/guacamole.jpg": "5bd1363bb81b57170a20510c4e3ac603",
"assets/assets/images/indian_cuisine.jpg": "ec93d3bcc0451fb4902d64bcdbc9c900",
"assets/assets/images/italian_cuisine.jpg": "d9bf01f967f8b8651b003428a098a1c5",
"assets/assets/images/japanese_cuisine.jpg": "c1ce848b8a96bba18e5920a0f951a626",
"assets/assets/images/margherita_pizza.jpg": "73676fb574c7aa570911477fc8cb1cad",
"assets/assets/images/mexican_cuisine.jpg": "00a861cb497ce282198b19981a6979d0",
"assets/assets/images/moussaka.jpg": "b91ccd5c51f705e619137508578a0d4b",
"assets/assets/images/pad_thai.jpg": "8024e7e1572f4aaba010ae43d7a3e4b1",
"assets/assets/images/paella.jpg": "8b1e9481f4af3b12b151e5d6cfde5e34",
"assets/assets/images/pancakes.jpg": "e7281561b3553ced0452810c9af66199",
"assets/assets/images/ramen.jpg": "bfa1e9214982147f058eb55be8f81065",
"assets/assets/images/ratatouille.jpg": "f17fd2137d7fd4b9da8511c989fd6f19",
"assets/assets/images/spaghetti.jpg": "97502abe75064d8ea8dc638f6c9207d3",
"assets/assets/images/spanish_cuisine.jpg": "f921b9e1e0b7ecc6d5bc58ce9de02dba",
"assets/assets/images/spanish_tortilla.jpg": "292ef02cc0fbb2a92ebba1e51ac87a5c",
"assets/assets/images/step1_biryani.jpg": "ebb72c4a5c7789174e208dbc83b70290",
"assets/assets/images/step1_burger.jpg": "1a8382b8bef96369279804fd9d50a352",
"assets/assets/images/step1_butter_chicken.jpg": "1456932923a8a4589e66a8e2f2d16ac0",
"assets/assets/images/step1_croissant.jpg": "b0bc0c9f01d4670e94ed10f34d3c77e8",
"assets/assets/images/step1_greek_salad.jpg": "c0448a9884eae791abc3de46de3a519a",
"assets/assets/images/step1_green_curry.jpg": "a48479b09c7ac1c7cc594436b117b83b",
"assets/assets/images/step1_guacamole.jpg": "7d0c80f1f9498867f827315a65ae1fdb",
"assets/assets/images/step1_moussaka.jpg": "5f205783780ab28a0cec36fe69207c7f",
"assets/assets/images/step1_pad_thai.jpg": "8b38221b0eb4009dcd5fd32c35fa1033",
"assets/assets/images/step1_paella.jpg": "399aba416aab67112dc0e6754d374832",
"assets/assets/images/step1_pancakes.jpg": "414f1d67f99eeb4bac5b11ad2df0f6a4",
"assets/assets/images/step1_pizza.jpg": "c0b256d10d78eead36ed0156df4a0d58",
"assets/assets/images/step1_ramen.jpg": "e4c3c522e7677f2f0aca950a758effb5",
"assets/assets/images/step1_ratatouille.jpg": "4c97a6f13aeb1263c016de5f0867d92a",
"assets/assets/images/step1_spaghetti.jpg": "892c3a61fb0f6ef0b55fb6d3b08a5082",
"assets/assets/images/step1_sushi.jpg": "d4f7ddb3b0e18e41bcec1ee2f9b319f2",
"assets/assets/images/step1_tacos.jpg": "f2dc17b7057addbdfd6966a3bd7329b0",
"assets/assets/images/step1_tortilla.jpg": "78c3cad9deec1b3e1441682b4d40beb8",
"assets/assets/images/step2_biryani.jpg": "0b8aeae3ed0c8180fe7a1de713dd756d",
"assets/assets/images/step2_burger.jpg": "14a1b024a2f1a47ee01ad9509bb7a0d0",
"assets/assets/images/step2_butter_chicken.jpg": "a2a5deb50fb55ab0a31ce97dee630daa",
"assets/assets/images/step2_croissant.jpg": "9109aa0f664ad92b9bea63282793ce02",
"assets/assets/images/step2_greek_salad.jpg": "200cce6a37d60e3d146b2b9537a70f33",
"assets/assets/images/step2_green_curry.jpg": "ab373f9e645333a8e137ba05d0a1e8bb",
"assets/assets/images/step2_guacamole.jpg": "7dfc8143d51416266f6a7f419198bcf5",
"assets/assets/images/step2_moussaka.jpg": "8bbf61855a0a36e5befc479141d21d2c",
"assets/assets/images/step2_pad_thai.jpg": "66e5edf938ece8712af23cc890e44313",
"assets/assets/images/step2_paella.jpg": "e642c4f4c83e9f19de6af75e6c042132",
"assets/assets/images/step2_pancakes.jpg": "90c7a72407bc78f5b212a4b4d7f6af76",
"assets/assets/images/step2_pizza.jpg": "20bc20861dbda1d2a7c7058fe5f933a4",
"assets/assets/images/step2_ramen.jpg": "8dedf3068ca869d410487fc78f66bad7",
"assets/assets/images/step2_ratatouille.jpg": "fe9415e6d1a4d0d4a67e1f27d36a9105",
"assets/assets/images/step2_spaghetti.jpg": "aeef0e9d4a4d287df041fdffff6438dc",
"assets/assets/images/step2_sushi.jpg": "fe1bc3defed265e1a62b83e530a70ff5",
"assets/assets/images/step2_tacos.jpg": "bd16243f8062609fd2a2db3c86a517e9",
"assets/assets/images/step2_tortilla.jpg": "84ae311cb9559709251f9a4b6631d298",
"assets/assets/images/step3_pancakes.jpg": "dc17c0807b65f91c0d15ff2b05e19bd6",
"assets/assets/images/step3_pizza.jpg": "f1ca92fce4bcac97221c5e05289ec9df",
"assets/assets/images/step3_spaghetti.jpg": "d552671a880a5ca2a6dea5eb1dc0c640",
"assets/assets/images/sushi_rolls.jpg": "69b9841897d592a94edb506cd35f8778",
"assets/assets/images/tacos.jpg": "a95b3aef518c1e44c28c16689fb94eef",
"assets/assets/images/thai_cuisine.jpg": "a7f70c84ac20aaddc3197459dadd3b6c",
"assets/assets/logo/YumVerse_logo.png": "8c6272e29a72fc02d9fb2e8cf8c4ef7b",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "1f5cdc98e1f8a2f6acb62ffe99e3e448",
"assets/NOTICES": "1c5db8913ac95819348c9123823e27b9",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "9c11748d828a406a161a87832ac25174",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "ac5a2503bfd3703d8df993b67003ff0f",
"/": "ac5a2503bfd3703d8df993b67003ff0f",
"main.dart.js": "0c5aa26a23c8b62b457f87dcd4a614a6",
"manifest.json": "58ff236c2df27a33c6b24a729466b12d",
"version.json": "3e5c2897d4a1409cb9a6082a8c38b36a"};
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
