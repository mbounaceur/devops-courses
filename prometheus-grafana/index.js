const express = require('express');
const prometheus = require('prom-client');

// Crée un nouveau compteur pour les requêtes HTTP
const httpRequestCounter = new prometheus.Counter({
  name: 'http_requests_total',
  help: 'Total number of HTTP requests',
  labelNames: ['method', 'path', 'status']
});

// Crée un nouveau collecteur Prometheus et enregistre le compteur
const prometheusCollector = new prometheus.CollectorRegistry();
prometheusCollector.registerMetric(httpRequestCounter);

// Crée une application Express.js
const app = express();

// Ajoute un middleware qui incrémente le compteur à chaque requête
app.use((req, res, next) => {
  httpRequestCounter.inc({
    method: req.method,
    path: req.path,
    status: res.statusCode
  });
  next();
});

// Ajoute un point de terminaison pour les métriques Prometheus
app.get('/metrics', (req, res) => {
  res.set('Content-Type', prometheus.register.contentType);
  res.end(prometheus.register.metrics());
});

// Démarre le serveur Express.js
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
