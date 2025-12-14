# Coffee DevOps Playbook ☕️

A **minimal, DevOps-first learning project** using a simple coffee shop website as the vehicle.  
The application itself is intentionally trivial; the focus is on **clean CI practices, repo standards, and build reliability**.

---

## Project Goals (Non-Negotiable)

- Practice **real DevOps fundamentals**, not frontend complexity
- Enforce **clean CI**: linting, testing, reproducible builds
- Keep everything **simple, readable, and correct**
- Build a foundation that can later evolve into:
  - Docker image publishing
  - Kubernetes deployment
  - Jenkins multibranch pipelines
  - Release promotion workflows

At this stage: **CI only. No Kubernetes. No deployment automation.**

---

## Application Overview

- **Type**: Static coffee shop website
- **Backend**: Python + Flask
- **Database**: None
- **Purpose**: Serve static pages (products & prices) + health endpoint

This is not a product. It is a **DevOps exercise**.

---

## Repository Structure

```text
.
├── app/
│   ├── __init__.py
│   ├── main.py            # Flask entrypoint
│   ├── routes.py          # App routes
│   ├── templates/         # HTML templates
│   └── static/            # CSS / assets
├── tests/
│   └── test_health.py     # Basic pytest coverage
├── requirements.txt
├── Dockerfile             # Present, but not used in CI yet
├── .github/
│   └── workflows/
│       └── pipeline.yml   # GitHub Actions CI
└── README.md
