# Conclusiones

## Conclusiones y recomendaciones

### Conclusiones

* **Validación de la problemática y pertinencia de una solución sin hardware:** A partir de la investigación de campo y las entrevistas realizadas a agricultores independientes, directivos de cooperativas e ingenieros agrónomos, se comprobó que la falta de registro estructurado de costos operativos y la detección tardía de estrés hídrico o plagas generan mermas recurrentes en los cultivos de papa andina y café de especialidad. La propuesta *software-only* de **SumaqAgro**, apoyada en información satelital (NDVI/NDWI), cálculo unitario de costos y certificación digital, responde directamente a estas necesidades sin exigir inversiones en sensores IoT en tierra.

* **Coherencia arquitectónica y delimitación clara del alcance funcional:** La aplicación de los principios de *Domain-Driven Design* (DDD) y la definición de un Lenguaje Ubicuo permitieron estructurar la solución en contextos delimitados claros (*Profiles*, *Field Management*, *Crop Health* y *Harvest Certification*). Asimismo, la delimitación del alcance mantiene el foco del producto en el monitoreo agronómico, la asistencia técnica, el cálculo del punto de equilibrio y la trazabilidad de cosechas, estableciendo explícitamente que la publicación de ofertas y la liquidación comercial ocurren fuera de la plataforma.

* **Diseño centrado en el usuario para entornos rurales y múltiples perfiles:** La construcción de *User Personas*, *Journey Maps*, *Wireflows* y prototipos de alta fidelidad permitió adaptar la experiencia de usuario a las capacidades tecnológicas y condiciones de conectividad de los tres segmentos objetivo. La organización visual jerárquica, la simplificación de etiquetas y el diseño responsivo facilitan tanto el uso operativo en campo por parte del agricultor como la supervisión técnica y administrativa de asesores y cooperativas.

* **Estandarización del desarrollo y entrega continua en el Sprint 1:** La configuración de un entorno de ingeniería integrado (Jira, GitHub, Figma, Structurizr) junto con el uso de **GitFlow**, *Semantic Versioning* y *Conventional Commits* aseguró la trazabilidad del código fuente y la colaboración equitativa del equipo **Dymbia**. Esto permitió completar y desplegar satisfactoriamente la versión `v1.0.0` de la **Landing Page** bilingüe en **Cloudflare Pages** (con respaldo en **GitHub Pages**), validando la propuesta de valor y los planes de suscripción ante los usuarios potenciales.

* **Implementación funcional del MVP Frontend y validación temprana en el Sprint 2:** Durante el segundo sprint se concretó la transición hacia el MVP de la aplicación web en **Angular 22** con arquitectura por capas, *Angular Signals*, **Angular Material** y visualización cartográfica mediante **Leaflet.js**, desplegada en **Firebase Hosting** e integrada con una **Fake REST API** en **Render**. Se verificaron los flujos principales del agricultor independiente (gestión y delimitación de parcelas, consulta de índices NDVI/NDWI, registro de gastos de campaña, cálculo del punto de equilibrio, consulta de certificados con QR y reporte de plagas), dejando sentadas las bases estructurales y de contratos de servicio para completar las vistas de cooperativas, agrónomos y la futura integración con el backend definitivo en **Spring Boot**.

### Recomendaciones

* **Implementar capacidades *Offline-First* mediante Progressive Web App (PWA):** Dado que los productores agrícolas operan en zonas rurales con conectividad intermitente o nula, se recomienda incorporar *Service Workers* y almacenamiento local (`IndexedDB`) en Angular para permitir el registro de gastos de campaña, reportes de plagas y consulta de datos cacheados sin conexión, sincronizando automáticamente al recuperar señal.

* **Migrar la capa de persistencia hacia un Backend robusto en Spring Boot con integración satelital real:** Reemplazar la *Fake REST API* desplegada en Render por una arquitectura de microservicios o monolito modular en **Spring Boot** con base de datos relacional (**PostgreSQL / PostGIS** para datos geoespaciales) e integrar APIs de observación terrestre reales (como *Sentinel Hub* o *Google Earth Engine*) para automatizar el cálculo periódico de índices NDVI y NDWI sobre los polígonos registrados.

* **Completar los flujos funcionales para los roles de Cooperativa e Ingeniero Agrónomo:** Priorizar en los siguientes sprints el desarrollo de los paneles de supervisión agregada para directivos de cooperativas (monitoreo consolidado de socios, calidad de lotes y alertas territoriales) y el módulo de atención de consultas, diagnósticos y recomendaciones técnicas para los asesores agronómicos.

* **Fortalecer la autenticidad y seguridad de los certificados digitales con QR:** Incorporar firmas digitales o *hashes* verificables en el backend para los certificados de cosecha generados por la plataforma, de modo que cualquier comprador o auditor externo pueda validar mediante el código QR la integridad de los datos agronómicos y de trazabilidad sin posibilidad de alteración.

* **Ejecutar pruebas piloto en campo durante una campaña agrícola completa:** Realizar un piloto controlado con un grupo de productores de papa andina y café de especialidad a lo largo de un ciclo productivo real para medir el impacto cuantitativo en la reducción de pérdidas por estrés hídrico o plagas, calibrar la usabilidad en condiciones reales de trabajo y refinar el modelo de suscripción antes del lanzamiento comercial.

## Video About-the-Team
