# Azure Terraform Playground

Dieses Repository dient als privates Lern- und Übungsprojekt für Azure, Terraform und GitHub Actions.

## Ziele

- Git- und GitHub-Workflow sicher trainieren
- Terraform-Grundlagen praktisch anwenden
- GitHub Actions Pipelines verstehen und bauen
- Azure OIDC für sichere Authentifizierung vorbereiten
- Remote State und Terraform Backends verstehen
- Kleine Azure-Ressourcen kostenbewusst testen

## Arbeitsweise

Wir arbeiten mit Feature-Branches und Pull Requests.

Standard-Workflow:

1. `main` aktualisieren
2. Feature-Branch erstellen
3. Änderung lokal umsetzen
4. Terraform prüfen
5. Commit erstellen
6. Branch pushen
7. Pull Request öffnen
8. GitHub Actions prüfen
9. Pull Request mergen
10. Lokal zurück auf `main` und `git pull`

## Kostenregel

Dieses Repository ist ein Lernprojekt. Ressourcen sollen nur bewusst erstellt und nach Übungen wieder entfernt werden.

- Kein automatisches `terraform apply` bei jedem Push
- `apply` nur manuell
- Ressourcen nicht unnötig über Nacht laufen lassen
- Zielbudget: maximal 50 Euro