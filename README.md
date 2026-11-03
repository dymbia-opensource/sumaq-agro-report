# SumaqAgro — Project Documentation Report

[![Build Status](https://img.shields.io/badge/Docs--as--Code-Pandoc%20%7C%20XeLaTeX-blue.svg)](pandoc/Makefile)
[![Course](https://img.shields.io/badge/UPC-1ASI0729%20Open%20Source-red.svg)](https://www.upc.edu.pe/)
[![Milestone](https://img.shields.io/badge/Delivery-TB1%20Stage%20Review-brightgreen.svg)](#table-of-contents---tb1-deliverable)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE.md)

Official repository for managing, collaboratively writing, and sequentially compiling the **Final Project Report** for the startup **Dymbia** and its SaaS platform **SumaqAgro**, developed using **Docs-as-Code**, GitFlow, and Conventional Commits for the course *1ASI0729 Open Source Applications Development* (Academic Term 2026-20).

---

## Project Quick Links

- **Landing Page Source Code Repository:** [Landing Page - SumaqAgro](https://github.com/dymbia-opensource/sumaqAgro-landing-page)
- **Product Backlog Board (Jira):** [Jira Board - SumaqAgro](https://sumaq-agro.atlassian.net/jira/software/c/projects/DSB/boards/2/backlog?epics=visible)
- **Event Storming Workspace (Miro):** [Event Storming Board on Miro](https://miro.com/welcomeonboard/WG5aQ1R0dmR5b0xQWTI5TEZvaXplRmpPTUxmT2pmR1NNVXBVakcxRFI5Yk16dVY3TXpRc0RwbHVKNWFndGJvZDZkZXJrbkN4VFZQdzhHTjV6MWdBNUJtQnhYMVFmcjNLbkxyOWQwZlVuWHVPRUdrWUJzeGVtb1g5cE9UeGFKdjJBd044SHFHaVlWYWk0d3NxeHNmeG9BPT0hdjE=?share_link_id=126689221129)


---

## Academic Information

- **Institution:** Universidad Peruana de Ciencias Aplicadas (UPC)
- **Faculty:** Faculty of Engineering
- **Degree Program:** Software Engineering
- **Course:** 1ASI0729 - Open Source Applications Development
- **Academic Term:** 2026-20
- **Instructor:** Velasquez Nuñez, Angel Augusto

---

## Project Description

**Startup Name:** Dymbia  
**Product Name:** SumaqAgro

**Dymbia** is a Peruvian technology startup focused on closing the digitalization and technology adoption gap in the national agrifood sector, primarily serving small and medium-sized independent growers, agricultural cooperatives, and technical advisors in the **Andean potato** and **specialty coffee** value chains.

### Problems Addressed
- **Vulnerability to Extreme Weather Events:** Reliance on rainfed agriculture in the highlands and damage from frost and pests, causing production losses of up to 40%.
- **Informal Rural Accounting:** Missing purchase and farm labor records prevent growers from determining the unit production cost per sack or quintal.
- **Trade Asymmetry and Lack of Traceability:** Limited access to mechanisms for verifying official size grades or SCA cupping scores for wholesale buyers.

### Core Capabilities
1. **Satellite Monitoring without Hardware:** Sentinel-2 optical telemetry to calculate vegetation vigor (NDVI) and water balance (NDWI) without installing ground sensors.
2. **Accounting Log and Break-Even Analysis:** Streamlined financial recordkeeping (with offline support) that calculates the minimum selling price to protect the investment.
3. **Digital Certification with QR Codes:** Generation of PDF certificates and publicly auditable QR seals for harvest traceability.

---

## Solution Architecture and Technology Stack

* **Domain-Driven Design (DDD):** Strategic decomposition into 7 Bounded Contexts and tactical modeling with Aggregates, Entities, and Value Objects.
* **RESTful Backend (Spring Boot 3 / Java 21):** Decoupled layered architecture (Interfaces, Application, Domain, Infrastructure) with Spring Data JPA persistence on MySQL 8.0.
* **Web Application (Angular 18 SPA):** Reactive interface with Angular Material and an *Offline-First* architecture (IndexedDB and Service Workers) for use in plots without network coverage.
* **Landing Page:** Static website built with HTML5, CSS3, and vanilla JavaScript, optimized for rural mobile networks.
* **C4 Model (Diagrams-as-Code):** Architectural documentation of Context, Containers, and Components formalized using Structurizr DSL.

> **Scope Note:** The project covers cloud software exclusively; it does not include physical sensors or field IoT devices.

---

## Table of Contents - TB1 Deliverable

* [Cover Page](report/front-matter/01-caratula.md)
* [Report Version History](report/front-matter/02-version-history.md)
* [Project Report Collaboration Insights](report/front-matter/03-collaboration.md)
* [Student Outcome](report/front-matter/04-student-outcome.md)
* [Chapter I: Introduction](report/10-chapter-1-intro.md)
  * [1.1. Startup Profile](report/10-chapter-1-intro.md#11-startup-profile)
    * [1.1.1. Startup Description](report/10-chapter-1-intro.md#111-descripción-de-la-startup)
    * [1.1.2. Team Member Profiles](report/10-chapter-1-intro.md#112-perfiles-de-integrantes-del-equipo)
  * [1.2. Solution Profile](report/10-chapter-1-intro.md#12-solution-profile)
    * [1.2.1 Background and Problem Statement](report/10-chapter-1-intro.md#121-antecedentes-y-problemática)
    * [1.2.2 Lean UX Process](report/10-chapter-1-intro.md#122-lean-ux-process)
      * [1.2.2.1. Lean UX Problem Statements](report/10-chapter-1-intro.md#1221-lean-ux-problem-statements)
      * [1.2.2.2. Lean UX Assumptions](report/10-chapter-1-intro.md#1222-lean-ux-assumptions)
      * [1.2.2.3. Lean UX Hypothesis Statements](report/10-chapter-1-intro.md#1223-lean-ux-hypothesis-statements)
      * [1.2.2.4. Lean UX Canvas](report/10-chapter-1-intro.md#1224-lean-ux-canvas)
  * [1.3. Target Segments](report/10-chapter-1-intro.md#13-segmentos-objetivo)
* [Chapter II: Requirements Elicitation & Analysis](report/20-chapter-2-requirements.md)
  * [2.1. Competitors](report/20-chapter-2-requirements.md#21-competidores)
    * [2.1.1. Competitive Analysis](report/20-chapter-2-requirements.md#211-análisis-competitivo)
    * [2.1.2. Strategies and Tactics against Competitors](report/20-chapter-2-requirements.md#212-estrategias-y-tácticas-frente-a-competidores)
  * [2.2. Interviews](report/20-chapter-2-requirements.md#22-entrevistas)
    * [2.2.1. Interview Design](report/20-chapter-2-requirements.md#221-diseño-de-entrevistas)
    * [2.2.2. Interview Records](report/20-chapter-2-requirements.md#222-registro-de-entrevistas)
    * [2.2.3. Interview Analysis](report/20-chapter-2-requirements.md#223-análisis-de-entrevistas)
  * [2.3. Needfinding](report/20-chapter-2-requirements.md#23-needfinding)
    * [2.3.1. User Personas](report/20-chapter-2-requirements.md#231-user-personas)
    * [2.3.2. User Task Matrix](report/20-chapter-2-requirements.md#232-user-task-matrix)
    * [2.3.3. User Journey Mapping](report/20-chapter-2-requirements.md#233-user-journey-mapping)
    * [2.3.4. Empathy Mapping](report/20-chapter-2-requirements.md#234-empathy-mapping)
  * [2.4. Big Picture Event Storming](report/20-chapter-2-requirements.md#24-big-picture-event-storming)
  * [2.5. Ubiquitous Language](report/20-chapter-2-requirements.md#25-ubiquitous-language)
* [Chapter III: Requirements Specification](report/30-chapter-3-specification.md)
  * [3.1. User Stories](report/30-chapter-3-specification.md#31-user-stories)
  * [3.2. Impact Mapping](report/30-chapter-3-specification.md#32-impact-mapping)
  * [3.3. Product Backlog](report/30-chapter-3-specification.md#33-product-backlog)
* [Chapter IV: Product Design](report/40-chapter-4-design.md)
  * [4.1. Style Guidelines](report/40-chapter-4-design.md#41-style-guidelines)
    * [4.1.1. General Style Guidelines](report/40-chapter-4-design.md#411-general-style-guidelines)
    * [4.1.2. Web Style Guidelines](report/40-chapter-4-design.md#412-web-style-guidelines)
    * [4.1.3. Mobile Style Guidelines](report/40-chapter-4-design.md#413-mobile-style-guidelines)
  * [4.2. Information Architecture](report/40-chapter-4-design.md#42-information-architecture)
    * [4.2.1. Organization Systems](report/40-chapter-4-design.md#421-organization-systems)
    * [4.2.2. Labeling Systems](report/40-chapter-4-design.md#422-labeling-systems)
    * [4.2.3. SEO Tags and Meta Tags](report/40-chapter-4-design.md#423-seo-tags-and-meta-tags)
    * [4.2.4. Searching Systems](report/40-chapter-4-design.md#424-searching-systems)
    * [4.2.5. Navigation Systems](report/40-chapter-4-design.md#425-navigation-systems)
  * [4.3. Landing Page UI Design](report/40-chapter-4-design.md#43-landing-page-ui-design)
    * [4.3.1. Landing Page Wireframe](report/40-chapter-4-design.md#431-landing-page-wireframe)
    * [4.3.2. Landing Page Mock-up](report/40-chapter-4-design.md#432-landing-page-mock-up)
  * [4.4. Web Applications UX/UI Design](report/40-chapter-4-design.md#44-web-applications-uxui-design)
    * [4.4.1. Web Applications Wireframes](report/40-chapter-4-design.md#441-web-applications-wireframes)
    * [4.4.2. Web Applications Wireflow Diagrams](report/40-chapter-4-design.md#442-web-applications-wireflow-diagrams)
    * [4.4.3. Web Applications Mock-ups](report/40-chapter-4-design.md#443-web-applications-mock-ups)
    * [4.4.4. Web Applications User Flow Diagrams](report/40-chapter-4-design.md#444-web-applications-user-flow-diagrams)
  * [4.5. Web Applications Prototyping](report/40-chapter-4-design.md#45-web-applications-prototyping)
  * [4.6. Domain-Driven Software Architecture](report/40-chapter-4-design.md#46-domain-driven-software-architecture)
    * [4.6.1. Design-Level Event Storming](report/40-chapter-4-design.md#461-design-level-event-storming)
    * [4.6.2. Software Architecture Context Diagram](report/40-chapter-4-design.md#462-software-architecture-context-diagram)
    * [4.6.3. Software Architecture Container Diagrams](report/40-chapter-4-design.md#463-software-architecture-container-diagrams)
    * [4.6.4. Software Architecture Components Diagrams](report/40-chapter-4-design.md#464-software-architecture-components-diagrams)
  * [4.7. Software Object-Oriented Design](report/40-chapter-4-design.md#47-software-object-oriented-design)
    * [4.7.1. Class Diagrams](report/40-chapter-4-design.md#471-class-diagrams)
  * [4.8. Database Design](report/40-chapter-4-design.md#48-database-design)
    * [4.8.1. Database Diagrams](report/40-chapter-4-design.md#481-database-diagrams)
* [Chapter V: Product Implementation, Validation & Deployment](report/50-chapter-5-implementation.md)
  * [5.1. Software Configuration Management](report/50-chapter-5-implementation.md#51-software-configuration-management)
    * [5.1.1. Software Development Environment Configuration](report/50-chapter-5-implementation.md#511-software-development-environment-configuration)
    * [5.1.2. Source Code Management](report/50-chapter-5-implementation.md#512-source-code-management)
    * [5.1.3. Source Code Style Guide & Conventions](report/50-chapter-5-implementation.md#513-source-code-style-guide--conventions)
    * [5.1.4. Software Deployment Configuration](report/50-chapter-5-implementation.md#514-software-deployment-configuration)
  * [5.2. Landing Page, Services & Applications Implementation](report/50-chapter-5-implementation.md#52-landing-page-services--applications-implementation)
    * [5.2.1. Sprint 1](report/50-chapter-5-implementation.md#521-sprint-1)
      * [5.2.1.1. Sprint Planning 1](report/50-chapter-5-implementation.md#5211-sprint-planning-1)
      * [5.2.1.2. Aspect Leaders and Collaborators](report/50-chapter-5-implementation.md#5212-aspect-leaders-and-collaborators)
      * [5.2.1.3. Sprint Backlog 1](report/50-chapter-5-implementation.md#5213-sprint-backlog-1)
      * [5.2.1.4. Development Evidence for Sprint Review](report/50-chapter-5-implementation.md#5214-development-evidence-for-sprint-review)
      * [5.2.1.5. Execution Evidence for Sprint Review](report/50-chapter-5-implementation.md#5215-execution-evidence-for-sprint-review)
      * [5.2.1.6. Services Documentation Evidence for Sprint Review](report/50-chapter-5-implementation.md#5216-services-documentation-evidence-for-sprint-review)
      * [5.2.1.7. Software Deployment Evidence for Sprint Review](report/50-chapter-5-implementation.md#5217-software-deployment-evidence-for-sprint-review)
      * [5.2.1.8. Team Collaboration Insights during Sprint](report/50-chapter-5-implementation.md#5218-team-collaboration-insights-during-sprint)
    * [5.2.2. Sprint 2](report/50-chapter-5-implementation.md#522-sprint-2)
      * [5.2.2.1. Sprint Planning 2](report/50-chapter-5-implementation.md#5221-sprint-planning-2)
      * [5.2.2.2. Aspect Leaders and Collaborators](report/50-chapter-5-implementation.md#5222-aspect-leaders-and-collaborators)
      * [5.2.2.3. Sprint Backlog 2](report/50-chapter-5-implementation.md#5223-sprint-backlog-2)
      * [5.2.2.4. Development Evidence for Sprint Review](report/50-chapter-5-implementation.md#5224-development-evidence-for-sprint-review)
      * [5.2.2.5. Execution Evidence for Sprint Review](report/50-chapter-5-implementation.md#5225-execution-evidence-for-sprint-review)
      * [5.2.2.6. Services Documentation Evidence for Sprint Review](report/50-chapter-5-implementation.md#5226-services-documentation-evidence-for-sprint-review)
      * [5.2.2.7. Software Deployment Evidence for Sprint Review](report/50-chapter-5-implementation.md#5227-software-deployment-evidence-for-sprint-review)
      * [5.2.2.8. Team Collaboration Insights during Sprint](report/50-chapter-5-implementation.md#5228-team-collaboration-insights-during-sprint)
* [Conclusions](report/60-conclusions.md)
* [Bibliography](report/99-bibliography.md)
* [Annexes](report/annexes/annex-c-videos.md)
  * [Annex A: Student Outcome 3](report/annexes/annex-a-student-outcome.md)
  * [Annex B: Performance Report (Team Leader)](report/annexes/annex-b-performance-report.md)
  * [Annex C: About-the-Product Video & Project Defense](report/annexes/annex-c-videos.md)

---

## Directory Architecture and Naming Conventions

The repository uses a modular directory structure for compilation with Pandoc and XeLaTeX:

```text
sumaqAgro-report/
├── pandoc/                              # PDF export pipeline
│   ├── build.yaml                       # Pandoc / XeLaTeX configuration (chapter order)
│   ├── metadata.yaml                    # PDF properties (fonts, margins, language)
│   ├── Makefile                         # make -C pandoc pdf MILESTONE=tb1
│   ├── build.ps1                        # .\pandoc\build.ps1 -Milestone tb1 (Windows)
│   ├── filters/
│   │   └── pdf.lua                      # HTML images and tables → PDF
│   ├── pdf/
│   │   ├── preamble.tex                 # LaTeX settings
│   │   └── toc.md                       # Table of contents placement
│   └── build/                           # PDF output (ignored by Git)
├── report/                              # Report content
│   ├── front-matter/                    # Prefixes 01-09
│   │   ├── 01-caratula.md
│   │   ├── 02-version-history.md
│   │   ├── 03-collaboration.md
│   │   └── 04-student-outcome.md
│   ├── 10-chapter-1-intro.md            # Prefixes 10-89: chapters
│   ├── 20-chapter-2-requirements.md
│   ├── 30-chapter-3-specification.md
│   ├── 40-chapter-4-design.md
│   ├── 50-chapter-5-implementation.md
│   ├── 60-conclusions.md
│   ├── 99-bibliography.md               # Prefix 99: APA references
│   ├── annexes/
│   │   ├── annex-a-student-outcome.md
│   │   ├── annex-b-performance-report.md
│   │   └── annex-c-videos.md
│   └── assets/img/                      # Images grouped by chapter
│       ├── chapter-1/                   # team/, lean-ux-canvas.png
│       ├── chapter-2/                   # interviews/, personas, empathy and journey maps
│       ├── chapter-3/                   # impact map, backlog
│       ├── chapter-4/                   # c4/, class-diagrams/, database/, event-storming/,
│       │                                # domain-driven-design/, applications-design/, landing-page/, wireflows/
│       ├── chapter-5/                   # deployment-configuration/, landing-page/, sprint-1/
│       ├── lean-ux-canvas.png
│       └── upc-logo.png
├── CHANGELOG.md                         # Changes by version
├── CONTRIBUTING.md                      # GitFlow, Conventional Commits, and compilation
├── LICENSE.md                           # MIT
└── README.md                            # Digital cover page and navigable index
```

## PDF Compilation

Requirements: **Pandoc 3.x** and **XeLaTeX** (MiKTeX or TeX Live / MacTeX). Run all commands from the repository root.

### Windows (PowerShell)

Installation (one time only):

```powershell
winget install --id JohnMacFarlane.Pandoc
winget install --id MiKTeX.MiKTeX
```

In **MiKTeX Console → Settings**, enable *Install missing packages on-the-fly: Always*.

Compilation:

```powershell
.\pandoc\build.ps1 -Milestone tb1
```