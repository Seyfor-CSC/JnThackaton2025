# Hackathon Assignment

## Cíl hackathonu

Containerizace aplikace **InfoPortal**:

- **Frontend:** Angular běžící na Tomcat  
  → cílové nasazení: Azure Static Web Apps / AKS Cluster
- **Backend:** Java aplikace na Tomcat  
  → cílové nasazení: AKS
- **Databáze:** PostgreSQL  
  → migrace na Azure Database for PostgreSQL (PaaS)

**Další požadavky:**

- Integrace SSO s Entra ID (Azure AD)
- Hackathon poběží v sandboxu (samostatný Azure subscription)
- Zadání vychází ze společné schůzky Seyfor / Microsoft / J&T, lze upravit dle potřeby

---

## Hackathon Challenges – Objectives, Success Criteria & Documentation

### Challenge 1 – Containerizace Frontendu + Backend

**Cíl:**  
Vytvořit Dockerfile pro Angular frontend a Java backend a ověřit, že aplikace lze sestavit a spustit lokálně v kontejnerech.

**Kritéria úspěchu:**
- Dockerfile existuje pro frontend i backend
- Image lze sestavit lokálně (`docker build`)
- Image lze spustit lokálně
- Frontend komunikuje s backendem

**Dokumentace:**  
- [Dockerfile reference](https://docs.docker.com/engine/reference/builder/)

---

### Challenge 2 – Migrace na Azure Database for PostgreSQL

**Cíl:**  
Migrovat databázi na Azure Database for PostgreSQL (Flexible Server).

**Kritéria úspěchu:**
- Azure PostgreSQL Flexible Server je vytvořen
- Data úspěšně migrována (např. pomocí `pg_dump`/`pg_restore`)
- Backend se připojuje k nové databázi

**Dokumentace:**  
- [Azure Database for PostgreSQL dokumentace](https://learn.microsoft.com/en-us/azure/postgresql/)
- [Migration guide](https://learn.microsoft.com/en-us/azure/dms/tutorial-postgresql-azure-postgresql-online)

---

### Challenge 3 – Vytvoření AKS Clusteru

**Cíl:**  
Vytvořit AKS cluster.

**Kritéria úspěchu:**
- AKS cluster je vytvořen a `kubectl` nakonfigurován
- `kubectl get nodes` vrací Ready uzly

**Dokumentace:**  
- [Azure Kubernetes Service (AKS) dokumentace](https://learn.microsoft.com/en-us/azure/aks/)
- [az aks](https://learn.microsoft.com/en-us/cli/azure/aks)

---

### Challenge 4 – Build Images for Frontend + Backend

**Cíl:**  
Nastavit automatizované buildy Docker image pro frontend a backend pomocí GitLab CI/CD a push do Azure Container Registry (ACR).

**Kritéria úspěchu:**
- GitLab CI pipeline úspěšně buildí image
- Image jsou pushnuty do ACR
- Image jsou správně tagované (např. verzemi)

**Dokumentace:**  
- [Azure Container Registry dokumentace](https://learn.microsoft.com/en-us/azure/container-registry/)
- [GitLab CI/CD dokumentace](https://docs.gitlab.com/ee/ci/)

---

### Challenge 5 – Deployment do AKS

**Cíl:**  
Nasazení pomocí YAML souborů nebo Helm chartů přes CI/CD pipeline.

**Kritéria úspěchu:**
- YAML nebo Helm chart existuje
- CI/CD pipeline nasazuje do AKS
- Pody jsou ve stavu Running
- Aplikace je dostupná

**Dokumentace:**  
- [Helm dokumentace](https://helm.sh/docs/)
- [Quickstart: Deploy AKS](https://learn.microsoft.com/en-us/azure/aks/kubernetes-walkthrough-portal)

---

### Challenge 6 – Azure Static Web Apps

**Cíl:**  
Nasadit frontend pomocí Azure Static Web Apps.

**Kritéria úspěchu:**
- Static Web App instance je vytvořena
- Frontend komunikuje s backendem v AKS
- Aplikace je dostupná přes URL
- Funkcionalita snippetů funguje

**Dokumentace:**  
- [Azure Static Web Apps dokumentace](https://learn.microsoft.com/en-us/azure/static-web-apps/)

---

### Challenge 7 – Advanced Secret Management

**Cíl:**  
Použít Azure Key Vault a SecretProviderClass v AKS.

**Kritéria úspěchu:**
- Key Vault obsahuje tajemství
- AKS má povolený Secret CSI driver
- SecretProviderClass je vytvořen
- Secret je namountován do kontejneru

**Dokumentace:**  
- [Azure Key Vault dokumentace](https://learn.microsoft.com/en-us/azure/key-vault/)
- [CSI driver pro AKS](https://learn.microsoft.com/en-us/azure/aks/csi-secrets-store-driver)

---

## Volitelné výzvy

### Azure Container Apps

**Cíl:**  
Nasadit backend pomocí Azure Container Apps.

**Kritéria úspěchu:**
- Container App je vytvořen
- Backend běží
- Endpoint je dostupný

**Dokumentace:**  
- [Azure Container Apps dokumentace](https://learn.microsoft.com/en-us/azure/container-apps/)

---

### Monitoring AKS

**Cíl:**  
Implementovat monitoring pomocí Prometheus + Grafana + Application Insights.

**Kritéria úspěchu:**
- Prometheus + Grafana jsou nasazeny v AKS
- AKS metriky jsou viditelné v dashboardech
- Application Insights je aktivní pro backend

**Dokumentace:**  
- [Azure Monitor for containers](https://learn.microsoft.com/en-us/azure/azure-monitor/containers/)
- [Application Insights OpenTelemetry](https://learn.microsoft.com/en-us/azure/azure-monitor/app/opentelemetry-overview)

---

### API Management

**Cíl:**  
Vyzkoušet integraci s Azure API Management.

**Kritéria úspěchu:**
- API Management instance je vytvořena
- Backend API je importováno do APIM
- API je úspěšně voláno přes APIM endpoint

**Dokumentace:**  
- [Azure API Management dokumentace](https://learn.microsoft.com/en-us/azure/api-management/)