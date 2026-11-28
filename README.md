# SumaqAgro — Project Documentation Report

[![Build Status](https://img.shields.io/badge/Docs--as--Code-Pandoc%20%7C%20XeLaTeX-blue.svg)](pandoc/Makefile)
[![Course](https://img.shields.io/badge/UPC-1ASI0729%20Open%20Source-red.svg)](https://www.upc.edu.pe/)
[![Milestone](https://img.shields.io/badge/Delivery-TB2%20Release%20Review-brightgreen.svg)](#table-of-contents)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE.md)

Official repository for managing, collaboratively writing, and sequentially compiling the **Final Project Report** for the startup **Dymbia** and its SaaS platform **SumaqAgro**, developed using **Docs-as-Code**, GitFlow, and Conventional Commits for the course *1ASI0729 Open Source Applications Development* (Academic Term 2026-20).

---

## Project Quick Links

### Source Code Repositories

- **Project Report:** [sumaq-agro-report](https://github.com/dymbia-opensource/sumaq-agro-report)
- **Landing Page:** [sumaqAgro-landing-page](https://github.com/dymbia-opensource/sumaqAgro-landing-page)
- **Web Application:** [sumaq-agro-web-app](https://github.com/dymbia-opensource/sumaq-agro-web-app)
- **RESTful Web Services:** [sumaq-agro-platform](https://github.com/dymbia-opensource/sumaq-agro-platform)

### Deployed Products

- **Landing Page (Cloudflare Pages):** [sumaqagro-landing-page.pages.dev](https://sumaqagro-landing-page.pages.dev/)
- **Web Application (Firebase Hosting):** [sumaqagro-appweb.web.app](https://sumaqagro-appweb.web.app)
- **RESTful API Documentation (Swagger UI on Render):** [sumaq-agro-platform.onrender.com/swagger-ui](https://sumaq-agro-platform.onrender.com/swagger-ui/index.html)

### Project Management and Design

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

1. **Satellite Monitoring without Hardware:** NDVI (vegetation vigor) and NDWI (water balance) indices and a 5-day weather forecast for each plot, obtained from the AgroMonitoring API, with agroclimatic alerts emailed to the growers of the region.
2. **Campaign Cost Ledger and Break-Even Analysis:** Input, labor, and freight expenses per crop campaign, the unit production cost, and the minimum selling price that protects the investment. Expenses recorded without connection are queued and sent when the connection returns.
3. **Digital Certification with QR Codes:** Harvest batch grading (potato calibers and SCA coffee cupping) and PDF quality certificates with a QR code that anyone can verify publicly.
4. **Cooperative Management:** Member registry linked to the growers' accounts, a technical team of invited agronomists, and the assignment of an agronomist to each plot.
5. **Subscription Plans:** *Semilla*, *Cooperativa Pro*, and *Asesor Técnico* plans paid through Mercado Pago Checkout Pro.

---

## Solution Architecture and Technology Stack

* **Domain-Driven Design (DDD):** Strategic decomposition into six Bounded Contexts (IAM, Profiles, Subscriptions and Payments, Farming, Crop Health, and Harvest Certification) plus a Shared Kernel, and tactical modeling with Aggregates, Entities, Value Objects, Commands, Queries, and Domain Events.
* **RESTful Web Services (Spring Boot 4.1 / Java 27):** Layered architecture per bounded context (Interfaces, Application, Domain, Infrastructure) with CQRS, Anti-Corruption Layers between contexts, Spring Data JPA persistence on MySQL, Spring Security with JWT, RFC 9457 Problem Details, and OpenAPI documentation. Deployed on Render.
* **Web Application (Angular 22 SPA):** Organized by bounded context with Angular Material, signal-based stores, ngx-translate (English and Spanish), and ARIA attributes for accessibility. Deployed on Firebase Hosting.
* **Landing Page:** Static website built with HTML5, CSS3, and vanilla JavaScript, deployed on Cloudflare Pages.
* **Third-Party Services:** AgroMonitoring (satellite imagery, plot polygons, and weather), Mercado Pago (payments), and Brevo (transactional email).
* **Diagrams-as-Code:** C4 Model (Context, Containers, and Components) with Structurizr DSL, and class diagrams with PlantUML.

> **Scope Note:** The project covers cloud software exclusively; it does not include physical sensors or field IoT devices.

---

## Table of Contents

* [Cover Page](report/front-matter/01-caratula.md)
* [Report Version History](report/front-matter/02-version-history.md)
* [Project Report Collaboration Insights](report/front-matter/03-collaboration.md)
* [Student Outcome](report/front-matter/04-student-outcome.md)
* [Chapter I: Introduction](report/10-chapter-1-intro.md)
  * [1.1. Startup Profile](report/10-chapter-1-intro.md#11-startup-profile)
    * [1.1.1. Startup Description](report/10-chapter-1-intro.md#111-descripción-de-la-startup)
    * [1.1.2. Team Member Profiles](report/10-chapter-1-intro.md#112-perfiles-de-integrantes-del-equipo)
  * [1.2. Solution Profile](report/10-chapter-1-intro.md#12-solution-profile)
    * [1.2.1. Background and Problem Statement](report/10-chapter-1-intro.md#121-antecedentes-y-problemática)
    * [1.2.2. Lean UX Process](report/10-chapter-1-intro.md#122-lean-ux-process)
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
    * [5.2.3. Sprint 3](report/50-chapter-5-implementation.md#523-sprint-3)
      * [5.2.3.1. Sprint Planning 3](report/50-chapter-5-implementation.md#5231-sprint-planning-3)
      * [5.2.3.2. Aspect Leaders and Collaborators](report/50-chapter-5-implementation.md#5232-aspect-leaders-and-collaborators)
      * [5.2.3.3. Sprint Backlog 3](report/50-chapter-5-implementation.md#5233-sprint-backlog-3)
      * [5.2.3.4. Development Evidence for Sprint Review](report/50-chapter-5-implementation.md#5234-development-evidence-for-sprint-review)
      * [5.2.3.5. Execution Evidence for Sprint Review](report/50-chapter-5-implementation.md#5235-execution-evidence-for-sprint-review)
      * [5.2.3.6. Services Documentation Evidence for Sprint Review](report/50-chapter-5-implementation.md#5236-services-documentation-evidence-for-sprint-review)
      * [5.2.3.7. Software Deployment Evidence for Sprint Review](report/50-chapter-5-implementation.md#5237-software-deployment-evidence-for-sprint-review)
      * [5.2.3.8. Team Collaboration Insights during Sprint](report/50-chapter-5-implementation.md#5238-team-collaboration-insights-during-sprint)
    * [5.2.4. Sprint 4](report/50-chapter-5-implementation.md#524-sprint-4)
      * [5.2.4.1. Sprint Planning 4](report/50-chapter-5-implementation.md#5241-sprint-planning-4)
      * [5.2.4.2. Aspect Leaders and Collaborators](report/50-chapter-5-implementation.md#5242-aspect-leaders-and-collaborators)
      * [5.2.4.3. Sprint Backlog 4](report/50-chapter-5-implementation.md#5243-sprint-backlog-4)
      * [5.2.4.4. Development Evidence for Sprint Review](report/50-chapter-5-implementation.md#5244-development-evidence-for-sprint-review)
      * [5.2.4.5. Execution Evidence for Sprint Review](report/50-chapter-5-implementation.md#5245-execution-evidence-for-sprint-review)
      * [5.2.4.6. Services Documentation Evidence for Sprint Review](report/50-chapter-5-implementation.md#5246-services-documentation-evidence-for-sprint-review)
      * [5.2.4.7. Software Deployment Evidence for Sprint Review](report/50-chapter-5-implementation.md#5247-software-deployment-evidence-for-sprint-review)
      * [5.2.4.8. Team Collaboration Insights during Sprint](report/50-chapter-5-implementation.md#5248-team-collaboration-insights-during-sprint)
  * [5.3. Validation Interviews](report/50-chapter-5-implementation.md#53-validation-interviews)
    * [5.3.1. Interview Design](report/50-chapter-5-implementation.md#531-diseño-de-entrevistas)
    * [5.3.2. Interview Records](report/50-chapter-5-implementation.md#532-registro-de-entrevistas)
    * [5.3.3. Heuristic Evaluations](report/50-chapter-5-implementation.md#533-evaluaciones-según-heurísticas)
  * [5.4. Video About-the-Product](report/50-chapter-5-implementation.md#54-video-about-the-product)
* [Conclusions](report/60-conclusions.md#conclusiones)
  * [Conclusions and Recommendations](report/60-conclusions.md#conclusiones-y-recomendaciones)
  * [Video About-the-Team](report/60-conclusions.md#video-about-the-team)
* [Bibliography](report/99-bibliography.md)
* [Annexes](report/annexes/annex-c-videos.md#anexos)
  * [Annex A: Presentation Videos](report/annexes/annex-c-videos.md#anexo-a-videos-de-exposiciones)

---

## Directory Architecture and Naming Conventions

The repository uses a modular directory structure for compilation with Pandoc and XeLaTeX:

```text
sumaq-agro-report/
├── pandoc/                              # PDF export pipeline
│   ├── build.yaml                       # Pandoc / XeLaTeX configuration (chapter order)
│   ├── metadata.yaml                    # PDF properties (fonts, margins, language)
│   ├── Makefile                         # make -C pandoc pdf MILESTONE=tb2
│   ├── build.ps1                        # .\pandoc\build.ps1 -Milestone tb2 (Windows)
│   ├── filters/
│   │   ├── mermaid.lua                  # Renders Mermaid diagrams with mmdc
│   │   └── pdf.lua                      # Adapts HTML images and tables for PDF
│   ├── csl/apa-7.csl                    # Citation and bibliography style
│   ├── template/eisvogel.tex            # LaTeX template
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
│   ├── 60-conclusions.md                # Conclusions, recommendations, and About-the-Team
│   ├── 99-bibliography.md               # Location of the generated bibliography
│   ├── bibliography/references.json    # Citation data for citeproc
│   ├── annexes/
│   │   └── annex-c-videos.md            # Annex A: Presentation Videos (AV1, TB1, AV2, TB2)
│   └── assets/img/                      # Images grouped by chapter
│       ├── chapter-1/                   # team/, lean-ux-canvas.png
│       ├── chapter-2/                   # interviews/, personas, empathy and journey maps
│       ├── chapter-3/                   # impact map, backlog
│       ├── chapter-4/                   # c4/, class-diagrams/, database/, domain-driven-design/,
│       │                                # applications-design/, landing-page/, wireflows/
│       ├── chapter-5/                   # deployment-configuration/, landing-page/, app-angular/,
│       │                                # sprint-1/ to sprint-4/, validation-interviews/
│       ├── lean-ux-canvas.png
│       └── upc-logo.png
├── CHANGELOG.md                         # Changes by version
├── CONTRIBUTING.md                      # GitFlow, Conventional Commits, and compilation
├── LICENSE.md                           # MIT
└── README.md                            # Digital cover page and navigable index
```

## PDF Compilation

Run the commands from the repository root. The [Pandoc build configuration](pandoc/build.yaml) sets the report order for course 1ASI0729 (2026-20).

In **WebStorm** or **IntelliJ IDEA**, use **File > Open** and select `sumaq-agro-report`. If you need a checkout, use **Get from VCS** with the [repository URL](https://github.com/dymbia-opensource/sumaq-agro-report.git), or run this with Git installed:

```text
git clone https://github.com/dymbia-opensource/sumaq-agro-report.git
cd sumaq-agro-report
```

Open the IDE's **Terminal** and check that it is in the directory containing `README.md` and `pandoc/`. Use PowerShell on Windows and Bash on Linux.

### Prerequisites

- **Pandoc 3.x and XeLaTeX** on your PATH. Use MiKTeX or TeX Live on Windows, TeX Live on Linux, or MacTeX on macOS. The distribution must provide the LaTeX packages used by Eisvogel and the report preamble.
- **Node.js and npm** to install **Mermaid CLI**. Install it once per checkout with the commands below. The build commands load the local launcher and browser cache automatically. Keep the browser download enabled when installing Mermaid CLI. The Windows filter uses `mmdc.cmd`.
- **Arial and Consolas** for the default fonts. If those fonts are unavailable on Linux or macOS, install **Liberation Sans and Liberation Mono** and use the font override below.
- **Make** for the Makefile commands. The repository includes the Lua filters, Eisvogel template, and APA 7 CSL style. Pandoc provides `citeproc` for citations and the bibliography.

### Windows (PowerShell)

**1. Install the tools once.** Open the integrated terminal in WebStorm or IntelliJ IDEA and select PowerShell. If the repository is already open, run:

```powershell
winget install --exact --id JohnMacFarlane.Pandoc
winget install --exact --id MiKTeX.MiKTeX
winget install --exact --id OpenJS.NodeJS.LTS
```

Complete MiKTeX's first-run setup in MiKTeX Console and enable automatic installation of missing packages. The Windows build uses Arial and Consolas. Restart the IDE so its terminal picks up the installed tools.

**2. Install Mermaid CLI and its browser once per checkout.** From the repository root:

```powershell
$env:PUPPETEER_CACHE_DIR = Join-Path $PWD.Path 'pandoc\build\mermaid-browser'
npm.cmd install --prefix pandoc/build/mermaid-tools @mermaid-js/mermaid-cli@12.2.0
& .\pandoc\build\mermaid-tools\node_modules\.bin\puppeteer.cmd browsers install
```

The explicit browser command also works when npm skips dependency install scripts. [Puppeteer installation guide](https://pptr.dev/guides/installation)

**3. Generate the PDF.** From the repository root, run this command each time you want to build:

```powershell
.\pandoc\build.ps1 -Milestone tb2
```

Use `-Milestone av2` for the AV2 filename.

### Linux (Ubuntu 24.04, Bash)

**1. Install the tools once.** These package names are for Ubuntu 24.04 on x86-64. Open the integrated Bash terminal in WebStorm or IntelliJ IDEA.

```bash
sudo apt update
sudo apt install -y git curl unzip make pandoc fonts-liberation \
  texlive-xetex texlive-latex-extra texlive-fonts-recommended texlive-lang-spanish \
  libasound2t64 libatk1.0-0t64 libatk-bridge2.0-0t64 libcups2t64 libdrm2 \
  libgbm1 libglib2.0-0t64 libgtk-3-0t64 libnspr4 libnss3 libx11-xcb1 \
  libxcomposite1 libxdamage1 libxfixes3 libxkbcommon0 libxrandr2
```

If Node.js 24 with npm is already installed, skip this block. Otherwise, install it with nvm:

```bash
export NVM_DIR="$HOME/.nvm"
if [ ! -s "$NVM_DIR/nvm.sh" ]; then
  git clone --depth 1 --branch v0.40.3 https://github.com/nvm-sh/nvm.git "$NVM_DIR"
fi
. "$NVM_DIR/nvm.sh"
nvm install 24
if ! grep -Fq '# Load nvm for Node.js' "$HOME/.bashrc" 2>/dev/null; then
  cat >> "$HOME/.bashrc" <<'EOF'

# Load nvm for Node.js
export NVM_DIR="$HOME/.nvm"
[ ! -s "$NVM_DIR/nvm.sh" ] || . "$NVM_DIR/nvm.sh"
EOF
fi
```

[nvm installation and usage](https://github.com/nvm-sh/nvm/tree/v0.40.3)

**2. Install Mermaid CLI and its browser once per checkout.** From the repository root:

```bash
export PUPPETEER_CACHE_DIR="$PWD/pandoc/build/mermaid-browser"
npm install --prefix pandoc/build/mermaid-tools @mermaid-js/mermaid-cli@12.2.0
./pandoc/build/mermaid-tools/node_modules/.bin/puppeteer browsers install
```

**3. Generate the PDF.** From the repository root, run this command each time you want to build:

```bash
make -C pandoc pdf MILESTONE=tb2 FONTS=linux
```

### macOS (Bash or Zsh)

With Homebrew and Apple Command Line Tools available, install the host tools, then use steps 2 and 3 from Linux to install Mermaid CLI locally and compile.

```bash
brew install pandoc node@24
brew install --cask mactex font-liberation
export PATH="$(brew --prefix node@24)/bin:/Library/TeX/texbin:$PATH"
```

Add the PATH line to your shell profile or run it in each new terminal before building.

### Direct Pandoc commands (optional)

The PowerShell and Make commands above are the shortest path. If you need to call Pandoc directly, set the local Mermaid paths in the same terminal first. The checkout setup already creates the output directory.

```powershell
$env:PATH = "$(Join-Path $PWD.Path 'pandoc\build\mermaid-tools\node_modules\.bin');$env:PATH"
$env:PUPPETEER_CACHE_DIR = Join-Path $PWD.Path 'pandoc\build\mermaid-browser'
pandoc --defaults=pandoc/build.yaml -o pandoc/build/upc-pre-202620-1asi0729-7742-dymbia-report-tb2.pdf
```

```bash
export PATH="$PWD/pandoc/build/mermaid-tools/node_modules/.bin:$PATH"
export PUPPETEER_CACHE_DIR="$PWD/pandoc/build/mermaid-browser"
pandoc --defaults=pandoc/build.yaml \
  -V mainfont="Liberation Sans" -V monofont="Liberation Mono" \
  -o pandoc/build/upc-pre-202620-1asi0729-7742-dymbia-report-tb2.pdf
```

### Output

All TB2 commands above generate `pandoc/build/upc-pre-202620-1asi0729-7742-dymbia-report-tb2.pdf`. Git ignores the output directory.
