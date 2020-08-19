# wifi-rebooter
Redémarrage automatique d'une interface en cas de perte de connexion

Déclenchement automatique de la vérification chaque minute

```bash
sudo crontab -e

# * *     * * *   root /opt/wifi-check/check.sh
```

