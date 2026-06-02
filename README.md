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

## Terraform-Struktur

Dieses Repository nutzt eine einfache Terraform-Dateistruktur:

- `versions.tf` definiert die benötigte Terraform-Version und Provider-Versionen.
- `providers.tf` konfiguriert den AzureRM Provider.
- `variables.tf` enthält Eingabevariablen wie Projektname, Umgebung, Region und Tags.
- `main.tf` enthält die eigentlichen Azure-Ressourcen.
- `outputs.tf` gibt wichtige Werte aus, zum Beispiel Resource-Group-Name oder Resource-Group-ID.
- `.terraform.lock.hcl` speichert die konkret verwendete Provider-Version und sollte mit committed werden.

Der Ordner `.terraform/` wird nicht committed, weil er lokal durch `terraform init` erzeugt wird.

## GitHub Actions Pipeline

Die Datei `.github/workflows/terraform-checks.yml` definiert unsere erste CI-Pipeline.

Diese Pipeline läuft bei:

- Push auf `main`
- Push auf Branches mit `feature/**`
- Pull Requests gegen `main`
- manuellem Start über `workflow_dispatch`

Die Pipeline führt folgende Schritte aus:

1. `actions/checkout@v4` lädt den Repository-Code in den GitHub Runner.
2. `hashicorp/setup-terraform@v3` installiert Terraform.
3. `terraform fmt -check -recursive` prüft die Formatierung.
4. `terraform init -backend=false` initialisiert Terraform ohne Remote Backend.
5. `terraform validate` prüft die Terraform-Konfiguration.

Aktuell führt die Pipeline kein `terraform apply` aus. Das ist bewusst so, weil `apply` echte Azure-Ressourcen erstellen und Kosten verursachen kann.

## Wichtige lokale Befehle

```powershell
git status
git branch
git log --oneline

## Azure OIDC Vorbereitung

Für `terraform plan` und später `terraform apply` in GitHub Actions muss sich der GitHub Runner bei Azure authentifizieren.

Aktuell funktionieren in GitHub Actions:

- `terraform fmt`
- `terraform init`
- `terraform validate`

Ein `terraform plan` benötigt jedoch Zugriff auf Azure, weil Terraform prüfen muss, welche Ressourcen in der Azure Subscription existieren oder erstellt werden sollen.

Dafür verwenden wir später OpenID Connect (OIDC), statt ein dauerhaftes Client Secret in GitHub zu speichern.

OIDC bedeutet:

- GitHub Actions fordert zur Laufzeit ein kurzlebiges Token an.
- Azure vertraut diesem Token nur für ein bestimmtes Repository und einen bestimmten Branch oder Workflow.
- Es wird kein dauerhaftes Passwort oder Client Secret gespeichert.

Später benötigen wir dafür folgende Werte als GitHub Repository Variables:

- `AZURE_CLIENT_ID`
- `AZURE_TENANT_ID`
- `AZURE_SUBSCRIPTION_ID`

Zusätzlich muss in Azure eine App Registration mit Federated Credential erstellt werden.