# Proyecto-gcp-cloud-engineer

# 🚀 Automatización e Infraestructura End-to-End en GCP con Terraform y Python

Proyecto integral de infraestructura como código (IaC) y automatización en Google Cloud Platform. Diseñado para orquestar la arquitectura completa de un entorno cloud seguro, abarcando desde redes personalizadas y cómputo auto-administrado hasta clústeres de Kubernetes, servicios Serverless, pipelines de datos y exportación automatizada de auditoría de logs.

---

## 🛠️ Herramientas y Servicios Utilizados

* **Infraestructura como Código (IaC):** Terraform
* **Orquestación de Contenedores (`kubectl`):** Kubernetes
* **Automatización y Scripts:** Bash, Python 3 (`google-cloud-storage`, `google-cloud-bigquery`, Compute API)
* **Servicios de GCP:**
  * **IAM & Seguridad:** Roles personalizados, Service Accounts, OS Login, permisos a nivel de Dataset.
  * **Compute & Networking:** Virtual Private Cloud (VPC personalizada), Subredes, Firewall con Network Tags, Compute Engine con Startup Scripts, Managed Instance Groups (MIG) con Auto-healing, y Snapshots automatizados de discos.
  * **Contenedores & Serverless:** Google Kubernetes Engine (GKE), Load Balancers, Cloud Run y Cloud Functions Gen 2 (Event-Driven).
  * **Storage & Databases:** Cloud Storage (Buckets con Lifecycle Rules y subida programática), Cloud SQL (PostgreSQL) y BigQuery (Datasets, esquemas explícitos JSON y tablas).
  * **Observabilidad & Operaciones:** Cloud Monitoring (Uptime Checks) y Cloud Logging (Sinks de exportación automatizada de errores `severity>=ERROR`).

---

## ⚙️ Comandos de Ejecución y Despliegue

# Inicializar Terraform

* terraform init

# Desplegar la Infraestructura

* terraform apply 

# Limpieza y Destrucción de Recursos

* terraform destroy -auto-approve

---

## ✒️ Autor
* **Lucas Hernan Gonzalez**
