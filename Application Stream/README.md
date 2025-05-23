# Hackathon Assignment

The goal of the hackathon is to containerize the “InfoPortal” application:

- **Frontend:** Angular running on Tomcat
  - target: deploy via Azure Static Web Apps / AKS Cluster
- **Backend:** Java application on Tomcat
  - target: deploy to AKS
- **Database:** PostgreSQL
  - target: migrate to Azure Database for PostgreSQL (PaaS)

**Additional requirements:**

- Integrate SSO with Entra ID (Azure AD)
- Hackathon will run in a sandbox (separate Azure subscription)
- Assignment based on joint session with Seyfor / Microsoft / J&T, can be adjusted as needed

---

## Hackathon Challenges – Objectives, Success Criteria & Documentation

### Challenge 1 – Containerization of Frontend + Backend

**Objective:** Create Dockerfiles for the Angular frontend and Java backend and verify that the applications can be built and run locally in containers.

This step focuses on the initial containerization of both parts of the application. You are expected to write working Dockerfiles and ensure that both frontend and backend can communicate correctly when run as containers on your local machine.

**Success Criteria:**

- Dockerfiles exist for both frontend and backend.
- Image can be built locally using docker build.
- Image can be run locally.
- Frontend communicates properly with the backend.

**Documentation:**

- [Docker](https://docs.docker.com/get-started/)
- [Dockerfile reference](https://docs.docker.com/engine/reference/builder/)

---

### Challenge 2 – Migration to Azure Database for PostgreSQL

**Objective:** Migrate the database to Azure Database for PostgreSQL (Flexible Server).

**Success Criteria:**

- Azure PostgreSQL Flexible Server is created.
- Data successfully migrated (e.g. using pg_dump/pg_restore).
- Backend connects to the new database.

**Documentation:**

- [Azure Database for PostgreSQL](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/)
- [Migration guide](https://learn.microsoft.com/en-us/azure/dms/tutorial-postgresql-azure-postgresql-online)

---

### Challenge 3 – Build AKS Cluster

**Objective:** Create an AKS cluster.

**Success Criteria:**

- AKS cluster is created and kubectl is configured.
- kubectl get nodes returns Ready nodes.

**Documentation:**

- [AKS](https://learn.microsoft.com/en-us/azure/aks/)
- [Azure CLI AKS](https://learn.microsoft.com/en-us/cli/azure/aks)

---

### Challenge 4 – Build Images for Frontend + Backend

**Objective:** Set up automated builds of the frontend and backend Docker images using GitLab CI/CD, and push these images to Azure Container Registry (ACR).

This challenge builds on the Dockerfiles created in Challenge 1. The goal here is to implement automated image builds using a GitLab CI pipeline and publish the resulting images to ACR.

**Success Criteria:**

- GitLab CI pipeline builds images successfully.
- Images are pushed to Azure Container Registry.
- Images are tagged appropriately (e.g. version tags).

**Documentation:**

- [Azure Container Registry](https://learn.microsoft.com/en-us/azure/container-registry/)
- [GitLab CI/CD](https://docs.gitlab.com/ee/ci/)

---

### Challenge 5 – Deployment to AKS

**Objective:** Deploy using fixed YAML files or Helm charts via CI/CD pipeline.

**Success Criteria:**

- YAML or Helm charts are available.
- CI/CD pipeline deploys to AKS.
- Pods are in Running state.
- Application is accessible.

**Documentation:**

- [Helm](https://helm.sh/docs/)
- [Deploy to AKS](https://learn.microsoft.com/en-us/azure/aks/kubernetes-walkthrough)

---

### Challenge 6 – Azure Static Web Apps

**Objective:** Deploy frontend using Azure Static Web Apps.

After the initial deployment of the entire application to AKS, the team will explore an alternative deployment method for the frontend using Azure Static Web Apps.

**Success Criteria:**

- A Static Web App instance is created.
- The frontend successfully communicates with the backend running in AKS.
- Application is accessible via URL.
- The snippet functionality works as expected.

**Documentation:**

- [Azure Static Web Apps](https://learn.microsoft.com/en-us/azure/static-web-apps/)

---

### Challenge 7 – Advanced Secret Management

**Objective:** Use Azure Key Vault and SecretProviderClass in AKS.

**Success Criteria:**

- Key Vault contains the secrets.
- AKS has Secret CSI driver enabled.
- SecretProviderClass is created.
- Secret is mounted into the container.

**Documentation:**

- [Key Vault](https://learn.microsoft.com/en-us/azure/key-vault/)
- [CSI driver](https://learn.microsoft.com/en-us/azure/aks/csi-secrets-store-driver)

---

### Optional Challenge – Azure Container Apps

**Objective:** Deploy the backend using Azure Container Apps.

**Success Criteria:**

- Container App is created.
- Backend is deployed and running.
- Endpoint is accessible.

**Documentation:**

- [Azure Container Apps](https://learn.microsoft.com/en-us/azure/container-apps/)

---

### Optional Challenge – Monitoring AKS

**Objective:** Implement monitoring using Prometheus + Grafana + Application Insights.

**Success Criteria:**

- Prometheus + Grafana are deployed to AKS.
- AKS metrics are visible in dashboards.
- Application Insights is active for the backend.

**Documentation:**

- [Azure Monitor for containers](https://learn.microsoft.com/en-us/azure/azure-monitor/containers/)
- [Application Insights](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview)

---

### Optional Challenge – API Management

**Objective:** Try integrating with Azure API Management.

**Success Criteria:**

- API Management instance is created.
- Backend API is imported into APIM.
- API is successfully called via APIM endpoint.

**Documentation:**

- [Azure API Management](https://learn.microsoft.com/en-us/azure/api-management/)