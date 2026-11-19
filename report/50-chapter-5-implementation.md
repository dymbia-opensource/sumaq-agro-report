# Capítulo V: Product Implementation, Validation & Deployment

**Alcance de implementación y validación:** Las entregas documentadas se interpretan según el alcance actualizado de SumaqAgro: gestión de parcelas y campañas, monitoreo y asistencia agronómica, costos y punto de equilibrio, y calificación, certificación y trazabilidad de cosechas. La publicación de ofertas, el catálogo comercial, las propuestas de compra, la aceptación de ofertas, el registro de ventas y la liquidación comercial quedan fuera del producto. Los certificados y los reportes de costos respaldan decisiones y negociaciones externas. Las suscripciones y los pagos por el uso del servicio permanecen en el alcance del diseño; esta delimitación no modifica los estados de avance ni acredita funcionalidades adicionales a las evidencias presentadas.

## 5.1. Software Configuration Management

### 5.1.1. Software Development Environment Configuration

Para garantizar una colaboración fluida y estandarizada a lo largo del ciclo de vida del producto digital **SumaqAgro**, el equipo ha definido y configurado un entorno de desarrollo integrado. Este conjunto de herramientas abarca las seis categorías fundamentales exigidas por la metodología del proyecto: *Project Management*, *Requirements Management*, *Product UX/UI Design*, *Software Development*, *Software Deployment* y *Software Documentation*. A continuación, se detalla la caracterización técnica de cada herramienta utilizada, su propósito específico en el proyecto y las rutas oficiales de acceso o descarga.

---

#### 1. Project Management

##### **Jira Software**

* **Propósito en el proyecto:** Gestión centralizada del Product Backlog, planificación y seguimiento de los Sprints, asignación de tareas (*work-items*), control de velocidad del equipo y visualización del flujo de trabajo en tableros Kanban/Scrum.
* **Ruta de Referencia:** [https://www.atlassian.com/software/jira](https://www.atlassian.com/software/jira)

![Jira Software](assets/img/chapter-5/img-jira.png)

---

#### 2. Requirements Management

##### **UXPressia**

* **Propósito en el proyecto:** Modelado y documentación visual de los artefactos de investigación del usuario. Se utiliza para la elaboración de los *User Personas* (productores agrícolas, directivos de cooperativa y asesores agrónomos), *Empathy Maps*, *User Journey Maps* e *Impact Mapping*.
* **Ruta de Referencia:** [https://uxpressia.com](https://uxpressia.com)

![UXPressia](assets/img/chapter-5/img-uxpressia.png)

##### **Miro**

* **Propósito en el proyecto:** Facilitar las sesiones de modelado colaborativo de dominio en tiempo real. Permite la construcción del *Big Picture Event Storming* y el *Design-Level Event Storming*, mapeando eventos de dominio, comandos, agregados y *Bounded Contexts*.
* **Ruta de Referencia:** [https://miro.com](https://miro.com)

![Miro](assets/img/chapter-5/img-miro.png)

---

#### 3. Product UX/UI Design

##### **Figma**

* **Propósito en el proyecto:** Diseño de la arquitectura de información y experiencia de usuario. Permite la creación de la guía de estilos visuales (*Style Guide*), los *wireframes* de baja fidelidad, los *mockups* de alta fidelidad, los *wireflows* navegables y el prototipo interactivo de la Landing Page y la aplicación web.
* **Ruta de Referencia:** [https://www.figma.com](https://www.figma.com)

![Figma](assets/img/chapter-5/img-figma.png)

---

#### 4. Software Development

##### **GitHub**

* **Propósito en el proyecto:** Gestión de control de versiones distribuido (SCM), alojamiento del repositorio central del proyecto, revisión colaborativa de código mediante *Pull Requests*, integración del modelo de ramificación GitFlow y auditoría de *commits*.
* **Ruta de Referencia:** [https://github.com](https://github.com)

![GitHub](assets/img/chapter-5/img-github.png)

##### **IntelliJ IDEA**

* **Propósito en el proyecto:** Entorno de Desarrollo Integrado (IDE) principal para la programación del backend. Se utiliza para la construcción de los servicios Web RESTful utilizando Java 21, Spring Boot Framework, Spring Data JPA y Spring Security.
* **Ruta de Descarga:** [https://www.jetbrains.com/idea/download](https://www.jetbrains.com/idea/download)

![IntelliJ IDEA](assets/img/chapter-5/img-intellij-idea.png)

##### **WebStorm**

* **Propósito en el proyecto:** IDE especializado para la implementación del frontend de la plataforma web. Proporciona soporte avanzado para TypeScript, Angular Framework, HTML5, CSS3/SASS y herramientas de depuración de código en el navegador.
* **Ruta de Descarga:** [https://www.jetbrains.com/webstorm](https://www.jetbrains.com/webstorm)

![WebStorm](assets/img/chapter-5/img-webstorm.png)

##### **DataGrip**

* **Propósito en el proyecto:** Entorno de desarrollo para bases de datos relacionales utilizado para la administración, modelado Entidad-Relación, gestión de esquemas y ejecución de consultas sobre el motor de base de datos MySQL.
* **Ruta de Descarga:** [https://www.jetbrains.com/datagrip](https://www.jetbrains.com/datagrip)

![DataGrip](assets/img/chapter-5/img-datagrip.png)

##### **Postman**

* **Propósito en el proyecto:** Cliente API HTTP para la prueba, validación y documentación de las peticiones (`GET`, `POST`, `PUT`, `DELETE`) hacia los endpoints RESTful del backend, permitiendo verificar los códigos de estado HTTP y los objetos JSON de respuesta.
* **Ruta de Descarga:** [https://www.postman.com/downloads](https://www.postman.com/downloads)

![Postman](assets/img/chapter-5/img-postman.png)

#### 5. Software Deployment


##### **Cloudflare Pages / GitHub Pages**
* **Propósito en el proyecto:** Plataformas de alojamiento en la nube para el despliegue continuo (*Continuous Deployment*) automatizado del frontend estático de la Landing Page, garantizando alta disponibilidad a través de la red Edge global de servidores, certificado SSL/TLS (HTTPS) de renovación automática y tiempos de respuesta optimizados.
* **Ruta de Referencia:** [https://pages.cloudflare.com](https://pages.cloudflare.com) / [https://pages.github.com](https://pages.github.com)

![Cloudflare Pages](assets/img/chapter-5/img-cloudflare.png)

![GitHub Pages](assets/img/chapter-5/img-github-pages.png)

##### **Firebase**
- **Propósito en el proyecto:** Plataforma de alojamiento en la nube de Google utilizada para el despliegue continuo (*Continuous Deployment*) y hosting de la aplicación web desarrollada con Angular, garantizando un despliegue rápido, seguro y escalable.
- **Ruta de Referencia:** [https://firebase.google.com](https://firebase.google.com)

![Firebase](assets/img/chapter-5/img-firebase.png)

##### **Render**
- **Propósito en el proyecto:** Infraestructura Cloud PaaS utilizada para el despliegue continuo y alojamiento del backend RESTful desarrollado en Spring Boot, así como el aprovisionamiento del servidor de base de datos relacional MySQL en entorno de producción.
- **Ruta de Referencia:** [https://render.com](https://render.com)

![Render](assets/img/chapter-5/img-render.png)

---

#### 6. Software Documentation

##### **Swagger UI**

* **Propósito en el proyecto:** Generación automática de la documentación interactiva de la API RESTful. Permite a los desarrolladores explorar los endpoints, probar llamadas HTTP directamente desde el navegador y consultar los esquemas de petición y respuesta JSON.
* **Ruta de Referencia:** [https://swagger.io/tools/swagger-ui](https://swagger.io/tools/swagger-ui)

![Swagger UI](assets/img/chapter-5/img-swagger.png)

##### **Structurizr**

* **Propósito en el proyecto:** Herramienta para el diagramado y documentación de la arquitectura de software bajo el estándar **C4 Model** (Contexto, Contenedores y Componentes), utilizando Structurizr DSL para mantener la arquitectura como código (*Architecture as Code*).
* **Ruta de Referencia:** [https://structurizr.com](https://structurizr.com)

![Structurizr](assets/img/chapter-5/img-structurizr.png)

### 5.1.2. Source Code Management

Para garantizar la integridad del código fuente, el trabajo colaborativo eficiente y la trazabilidad inmutable del desarrollo de **SumaqAgro**, el equipo utiliza **Git** como sistema de control de versiones distribuido, alojado de forma centralizada en la plataforma **GitHub**.

A continuación, se especifican la estructura de la organización en GitHub, las URLs de los repositorios de cada producto digital, el flujo de trabajo con **GitFlow**, el esquema de versionado semántico (**Semantic Versioning**) y el estándar de mensajes mediante **Conventional Commits**.

![GitFlow](assets/img/chapter-5/img-git-flow.png)

---

#### 1. Organización y Repositorios en GitHub

Todos los componentes de software y la documentación del proyecto están agrupados bajo una organización pública en GitHub. Se ha asignado un repositorio independiente para cada producto digital de la solución, incluyendo las suites de pruebas unitarias e integración en el caso de los servicios web:

* **Organización Oficial en GitHub:** https://github.com/dymbia-opensource


* **Repositorio del Landing Page (Sitio Web Estático):** https://github.com/dymbia-opensource/sumaqAgro-landing-page


* **Repositorio de Web Services (RESTful API backend):**  *Próximamente*


* **Repositorio de Frontend Web Application:**  *Próximamente*


* **Repositorio del Informe del Proyecto (Project Report):**  https://github.com/dymbia-opensource/sumaqAgro-report


---

#### 2. Estrategia de Ramificación - GitFlow Workflow

El equipo ha adoptado **GitFlow** como modelo y flujo de trabajo estructurado para la gestión de ramas (*branches*). Este enfoque garantiza la separación entre el código estable listo para producción y el desarrollo activo de nuevas funcionalidades.

#### Ramas Principales (*Main Branches*)
1. `main` **(Producción):**  
   Contiene exclusivamente código de producción estable y libre de errores. Cada confirmación en esta rama representa un despliegue oficial (*release*) firmado con una etiqueta de versión semántica (*tag*).
2. `develop` **(Integración / Staging):**  
   Sirve como la rama principal de integración continua. Agrupa los avances terminados y revisados de las distintas funcionalidades antes de ser empaquetados para una nueva versión de producción.

#### Ramas de Soporte (*Supporting Branches*)
* **Ramas de Funcionalidad (`feature/*`):**  
  Se crean exclusivamente a partir de `develop` para construir un módulo, historia de usuario o componente específico. Una vez completada y revisada la funcionalidad, se integra de regreso a `develop` mediante un *Pull Request*.
* **Ramas de Preparación de Lanzamiento (`release/*`):**  
  Se derivan de `develop` cuando las historias de un Sprint están listas para producción. Permiten realizar ajustes menores de configuración, documentación y pruebas finales sin congelar el desarrollo activo en `develop`. Al finalizar, se fusiona hacia `main` y `develop`.
* **Ramas de Corrección Urgente (`hotfix/*`):**  
  Se crean directamente a partir de `main` para solucionar fallos críticos detectados en el entorno de producción en vivo. Una vez corregido el problema, la rama se integra tanto a `main` como a `develop` para mantener la sincronización.

---

#### 3. Convenciones para el Nombrado de Ramas

Para mantener una nomenclatura consistente y trazable entre los tableros de gestión y los repositorios de GitHub, se han definido las siguientes reglas estandarizadas:

* **Feature branches:** `feature/<numero-tarea>-<descripcion-corta>`  
  *Ejemplo:* `feature/10-satellite-ndvi-map`
* **Release branches:** `release/v<version-semantica>`  
  *Ejemplo:* `release/v1.0.0`
* **Hotfix branches:** `hotfix/<numero-incidencia>-<descripcion-corta>`  
  *Ejemplo:* `hotfix/401-jwt-expired-token`

---

#### 4. Versionado Semántico (Semantic Versioning 2.0.0)

Para el etiquetado (*tagging*) de lanzamientos oficiales en la rama `main`, el proyecto adopta la norma **Semantic Versioning 2.0.0**, utilizando el formato estructurado **`MAJOR.MINOR.PATCH`**:

* **MAJOR (Incremento de versión mayor):** Cambios incompatibles en la API RESTful o reestructuraciones arquitectónicas mayores. *(Ejemplo: `v1.0.0` → `v2.0.0`)*
* **MINOR (Incremento de versión menor):** Adición de nuevas historias de usuario o módulos funcionales compatibles con las versiones anteriores. *(Ejemplo: `v1.0.0` → `v1.1.0`)*
* **PATCH (Incremento de parche):** Correcciones de errores (*bug fixes*) o parches de seguridad menores retrocompatibles. *(Ejemplo: `v1.0.1` → `v1.0.2`)*

---

#### 5. Estándar de Mensajes de Commit - Conventional Commits

El equipo aplica estrictamente la especificación **Conventional Commits** para la redacción de mensajes de confirmación de cambios (*commits*). La sintaxis adoptada sigue la estructura:

`tipo(alcance): descripción corta en presente e imperativo`

#### Tipos de Commits Permitidos (`type`):
* `feat`: Nueva funcionalidad implementada para el usuario final.
* `fix`: Corrección de un fallo o error en el código.
* `docs`: Modificaciones exclusivas en documentación (archivos Markdown, comentarios, Swagger).
* `style`: Cambios de formato, identación o reglas de estilo CSS/HTML sin alterar la lógica.
* `refactor`: Reestructuración de código que no corrige errores ni añade características.
* `test`: Adición o corrección de pruebas unitarias o de integración.
* `chore`: Tareas de mantenimiento, actualización de dependencias o scripts de compilación.


### 5.1.3. Source Code Style Guide & Conventions

Para mantener un código fuente legible, mantenible, uniforme y alineado con los estándares internacionales de ingeniería de software, el equipo de desarrollo ha adoptado guías oficiales de estilo y convenciones de codificación para cada lenguaje y tecnología utilizada en la solución **SumaqAgro** (HTML5, CSS3, JavaScript, TypeScript, Angular, Java y Spring Boot), así como las especificaciones de comportamiento en Gherkin.

#### Regla General de Nomenclatura en Inglés
En cumplimiento estricto de las normas del proyecto y los estándares globales de software, **todas las identificaciones de elementos de código** (nombres de archivos, clases, interfaces, métodos, funciones, variables, constantes, parámetros, llaves de objetos JSON, rutas de endpoints REST y comentarios técnicos) **se redactan obligatoriamente en idioma inglés**. Los textos explicativos y la documentación del informe se mantienen en español.

A continuación, se detallan las guías de estilo adoptadas y sus reglas específicas:

---

#### 1. Guía de Estilo para HTML5, CSS3 / SASS y JavaScript (Landing Page & Web App)

#### Normas de Referencia
Se adoptan la **HTML Style Guide and Coding Conventions**, la **Google HTML/CSS Style Guide** y la **Google JavaScript Style Guide** (ES6+).

#### Convenciones HTML5
* **Etiquetas y Atributos:** Todas las etiquetas, elementos y atributos HTML deben escribirse estrictamente en minúsculas (`lowercase`).  
  *Ejemplo correcto:* `<input type="email" id="user-email" class="form-control" name="userEmail" />`
* **HTML5 Semántico:** Es obligatorio el uso de etiquetas semánticas (`<header>`, `<nav>`, `<main>`, `<section>`, `<article>`, `<aside>`, `<footer>`) en lugar de contenedores genéricos `<div>` para estructurar la maquetación, garantizando la accesibilidad y optimización SEO.
* **Comillas en Atributos:** Todos los valores de los atributos deben delimitarse mediante comillas dobles (`"`).
* **Accesibilidad (WCAG 2.1):** Todas las imágenes y elementos multimedia deben incluir obligatoriamente el atributo `alt` declarativo en inglés (ej. `alt="Satellite NDVI spectral map"`).
* **Indentación:** Se establece una indentación consistente de 2 espacios por cada nivel jerárquico de anidamiento HTML, evitando el uso de tabuladores.

#### Convenciones CSS3 / SASS
* **Nomenclatura BEM (Block Element Modifier):** Para la organización de clases CSS y evitar colisiones de estilos, se aplica la convención BEM con identificadores en inglés:
  * `Block`: Representa la entidad principal independiente (ej. `.card`, `.navbar`).
  * `Element`: Componente dependiente del bloque (ej. `.card__title`, `.navbar__item`).
  * `Modifier`: Variante de estado o apariencia (ej. `.card__button--accent`, `.navbar__link--active`).
* **Propiedades CSS Ordenadas:** Las declaraciones dentro de una regla CSS deben ordenarse siguiendo la estructura:
  1. Posicionamiento (`position`, `top`, `z-index`).
  2. Modelo de Caja (`display`, `flex`, `grid`, `width`, `padding`, `margin`).
  3. Tipografía (`font-family`, `font-size`, `color`, `text-align`).
  4. Visuales y Efectos (`background-color`, `border`, `box-shadow`, `opacity`).
* **Uso de Variables:** Se centralizan los colores corporativos, tipografías y espaciados mediante variables CSS/SASS (`:root` o `_variables.scss`), prohibiendo el uso de colores en formato hexadecimal directamente en las hojas de estilo de los componentes.

#### Convenciones JavaScript (Vanilla JS para scripts dinámicos en la Landing Page)
* **Variables y Funciones:** Se redactan en `camelCase` e idioma inglés. Se exige el uso de `const` para valores inmutables y `let` para variables mutables, quedando estrictamente prohibido el uso de `var`.
* **Manipulación de DOM:** Se promueve el uso de métodos modernos de la API DOM (`document.querySelector`, `addEventListener`) con nombres de handlers descriptivos en inglés (ej. `handleLanguageToggle`, `initHeroSlider`).

---

#### 2. Guía de Estilo para TypeScript y Angular Framework (Frontend Web Application)

#### Normas de Referencia
Se adopta la **Official Angular Coding Style Guide** en conjunto con la **Google TypeScript Style Guide**.

#### Convenciones para el Nombrado de Archivos
Todos los nombres de archivos en el proyecto Angular deben utilizar `kebab-case` en inglés y especificar el tipo de artefacto como sufijo antes de la extensión:
* **Componentes:** `name.component.ts` *(Ejemplo: `parcel-monitoring.component.ts`)*
* **Servicios:** `name.service.ts` *(Ejemplo: `satellite-data.service.ts`)*
* **Modelos / Interfaces:** `name.model.ts` *(Ejemplo: `crop-evaluation.model.ts`)*
* **Módulos / Rutas:** `name.routes.ts` *(Ejemplo: `app.routes.ts`)*

#### Convenciones de Nombres en Código
* **Clases, Interfaces y Decoradores:** Se redactan en `PascalCase` e inglés.  
  *Ejemplo:* `export class ParcelDetailComponent implements OnInit`
* **Variables, Métodos y Propiedades:** Se redactan en `camelCase` e inglés.  
  *Ejemplo:* `currentNdviScore: number = 0.78;`
* **Constantes Globales:** Se redactan en `UPPER_SNAKE_CASE` e inglés.  
  *Ejemplo:* `export const DEFAULT_LANGUAGE = 'en';`

#### Reglas de Calidad TypeScript
* **Tipado Estricto (Strict Mode):** Se habilita la propiedad `"strict": true` en el archivo `tsconfig.json`. Queda expresamente prohibido el uso del tipo implícito o explícito `any`; todo dato debe contar con un tipo explícito o una interfaz bien definida.
* **Inyección de Dependencias:** Se promueve el uso de la función `inject()` de Angular en lugar de la inyección por constructor para mantener la concisión.
* **Manejo de Reactividad (RxJS):** La desuscripción de `Observables` debe manejarse mediante la tubería `async` en las plantillas HTML o mediante el operador `takeUntilDestroyed()` para prevenir fugas de memoria (*memory leaks*).

---

#### 3. Guía de Estilo para Java 21 y Spring Boot (Backend RESTful API)

#### Normas de Referencia
Se adopta la **Google Java Style Guide** complementada con las convenciones oficiales del **Spring Boot Features / Standards**.

#### Estructura de Paquetes
La estructura del paquete base sigue la nomenclatura de dominio inverso en minúsculas y sin guiones, con identificadores en inglés:  
`com.dymbia.sumaqagro.<bounded-context>.<layer>`

*Ejemplo de capas:*
* `com.dymbia.sumaqagro.monitoring.domain.model`
* `com.dymbia.sumaqagro.monitoring.infrastructure.persistence`
* `com.dymbia.sumaqagro.monitoring.interfaces.rest`

#### Convenciones de Nombres
* **Clases e Interfaces:** Se redactan en `PascalCase` e inglés utilizando sustantivos claros y descriptivos.  
  *Ejemplos:* `CropParcel`, `ParcelRepository`, `CalculateBreakEvenUseCase`.
* **Métodos y Variables de Instancia:** Se redactan en `camelCase` e inglés utilizando verbos o frases verbales para los métodos.  
  *Ejemplos:* `calculateNdviAverage()`, `totalCostPerHectare`.
* **Constantes:** Se definen como `public static final` y se redactan en `UPPER_SNAKE_CASE` e inglés.  
  *Ejemplo:* `public static final int MAX_PARCEL_HECTARES = 500;`

#### Estándares de Ingeniería Backend y REST API
* **Formato de Código:** Indentación obligatoria de 4 espacios (configurada en IntelliJ IDEA). No se permiten comodines (`*`) en las sentencias `import` (ej. importar `java.util.List` explícitamente en lugar de `java.util.*`).
* **Uso de DTOs (Data Transfer Objects):** La capa REST no debe exponer directamente entidades `@Entity` de JPA. Se exige el uso de patrones DTO (`Record` en Java 21) para las peticiones (`RequestDTO`) y respuestas (`ResponseDTO`).
* **Anotaciones Lombok:** Se requiere el uso de `@Getter`, `@Setter`, `@Builder` y `@RequiredArgsConstructor` para reducir la verbosidad de métodos accesores y constructores.
* **Diseño de Endpoints RESTful:**
  * URIs en minúsculas, plurales, en idioma inglés y versionadas: `/api/v1/parcels`, `/api/v1/certificates`.
  * Verbos HTTP adecuados: `GET` (lectura), `POST` (creación), `PUT` (actualización completa), `DELETE` (eliminación).
* **Manejo Global de Excepciones:** Se implementa la anotación `@RestControllerAdvice` para capturar excepciones de negocio y retornar respuestas estructuradas bajo el estándar RFC 7807 (*Problem Details for HTTP APIs*) con el código de estado HTTP correspondiente.

---

#### 4. Convenciones Gherkin para Especificaciones Legibles (BDD Acceptance Criteria)

#### Norma de Referencia
Se adopta la convención **Gherkin Conventions for Readable Specifications** para la especificación de los Criterios de Aceptación de las Historias de Usuario bajo el enfoque BDD (*Behavior-Driven Development*).

#### Reglas de Redacción de Escenarios
* **Estructura Declarativa:** Los escenarios deben redactarse con una sintaxis orientada al comportamiento del usuario (*behavior-driven*) y no a los detalles técnicos de la interfaz gráfica (evitar expresiones como "hacer clic en el botón X").
* **Palabras Clave Estándar:** Cada escenario debe articularse estrictamente con los conectores BDD en español:
  * **`Dado que` (`Given`):** Establece las precondiciones y el contexto inicial del sistema.
  * **`Cuando` (`When`):** Describe la acción o evento desencadenante ejecutado por el actor.
  * **`Entonces` (`Then`):** Especifica el resultado esperado, la respuesta del sistema o el cambio de estado observable.
* **Atomicidad y Claridad:** Cada escenario debe probar una única regla de negocio o flujo alternativo (un escenario por cada caso de éxito o fallo principal).

---

### 5.1.4. Software Deployment Configuration

En esta sección se especifica la arquitectura y los procedimientos de despliegue continuo (*Continuous Deployment - CD*) e integración desde GitHub para los productos digitales que integran la solución **SumaqAgro**.



#### 5.1.4.1\. Landing Page — Cloudflare Pages

El Landing Page funciona como el portal público de presentación e ingreso a la solución. Su código fuente es un sitio web estático responsivo alojado en el repositorio público de GitHub y publicado en entorno de producción mediante la plataforma **Cloudflare Pages** (contando con **GitHub Pages** como entorno de respaldo y redundancia).

#### Guía Paso a Paso del Despliegue

##### Paso 1: Acceso al panel de administración de Workers & Pages

Se ingresa a la consola de administración de Cloudflare en la sección *Workers & Pages*, donde se visualiza el panel principal de control del proyecto, junto con las métricas de solicitudes y estado del servicio.

![Paso 1](assets/img/chapter-5/deployment-configuration/step-1.png)

##### Paso 2: Inicio del asistente de creación de aplicación

En la cabecera superior del panel de *Workers & Pages*, se selecciona el botón principal **"Create application"** para iniciar el flujo de aprovisionamiento de un nuevo sitio o servicio estático en la nube.

![Paso 2](assets/img/chapter-5/deployment-configuration/step-2.png)

##### Paso 3: Selección del método de integración con repositorio (GitHub)

Dentro de la pantalla de opciones *Make something new*, se elige el método **"Continue with GitHub"**. Esto permite establecer una conexión directa mediante *webhooks* con el repositorio de control de versiones para habilitar la compilación e integración continua (CI/CD).

![Paso 3](assets/img/chapter-5/deployment-configuration/step-3.png)

##### Paso 4: Autenticación y autorización de la organización en GitHub

Se autoriza a la plataforma Cloudflare Pages para acceder a la organización pública de GitHub, otorgando permisos de lectura sobre el código fuente para sincronizar las confirmaciones de cambios (*commits*).

![Paso 4](assets/img/chapter-5/deployment-configuration/step-4.png)

##### Paso 5: Selección del repositorio del Landing Page

En el listado de repositorios vinculados de la organización, se selecciona el proyecto correspondiente al sitio estático: `sumaqAgro-landing-page`. Se confirma la elección presionando el botón **"Begin setup"**.

![Paso 5](assets/img/chapter-5/deployment-configuration/step-5.png)

##### Paso 6: Configuración de parámetros de build y rama de producción

Se configuran los ajustes fundamentales del despliegue:

* **Project name:** `sumaqagro-landing-page`
* **Production branch:** `main` *(rama protegida de producción bajo GitFlow)*
* **Framework preset:** `None` / `Static HTML`
* **Build command:** *(Vacío para sitio estático directo)*
* **Build output directory:** `/` *(directorio raíz)*

Se finaliza la configuración haciendo clic en **"Save and Deploy"**.

![Paso 6](assets/img/chapter-5/deployment-configuration/step-6.png)

##### Paso 7: Ejecución del pipeline de compilación y distribución Edge

Cloudflare Pages inicia automáticamente el pipeline de entrega continua: clona el código fuente desde GitHub, valida la estructura de archivos estáticos (HTML/CSS/JS/Assets) y distribuye los artefactos en los más de 300 centros de datos de su red Edge global.

![Paso 7](assets/img/chapter-5/deployment-configuration/step-7.png)

##### Paso 8: Confirmación de despliegue exitoso y dominio público HTTPS

Finalmente, se completa el proceso de publicación en producción de forma satisfactoria. Cloudflare genera la URL pública de acceso (`sumaqagro-landing-page.pages.dev`) con certificado SSL/TLS de encriptación automático, forzando la navegación segura mediante `HTTPS://`.

![Paso 8](assets/img/chapter-5/deployment-configuration/step-8.png)

* **URL Oficial de Producción:** [https://sumaqagro-landing-page.pages.dev](https://sumaqagro-landing-page.pages.dev)






## 5.2. Landing Page, Services & Applications Implementation

En esta sección se detalla el proceso de planificación, desarrollo, pruebas, documentación, despliegue y colaboración en equipo para los productos digitales de la plataforma **SumaqAgro**, organizados modularmente por Sprints.

### 5.2.1. Sprint 1

El **Sprint 1** constituye la primera iteración de desarrollo del proyecto, teniendo como objetivo central la construcción, maquetación, optimización y despliegue en entorno de producción de la primera versión del **Landing Page** de **SumaqAgro**, sirviendo como portal público de presentación e ingreso a la solución.
#### 5.2.1.1. Sprint Planning 1

En esta sección se especifican los aspectos principales de la reunión de planificación del **Sprint 1** (*Sprint Planning Meeting*) realizada por el equipo de la startup **Dymbia** para la plataforma **SumaqAgro**. El objetivo central de esta primera iteración es la maquetación, desarrollo, internacionalización y despliegue en entorno de producción de la primera versión del **Landing Page** de SumaqAgro en **Cloudflare Pages**.

| Sprint # | Sprint 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| :--- |:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Sprint Planning Background** |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Date | 2026-09-02                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| Time | 11:30 AM                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Location | Discord                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| Prepared By | Tejada Pumacayo, Yamil Jared                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Attendees (to planning meeting) | Tejada Pumacayo, Yamil Jared / Duarte Ruffner, Drago Derick / Sanca Condori, Miguel / Solorzano Sullca, Benjamin / Vargas Enriquez, Jose Carlos                                                                                                                                                                                                                                                                                                                                                                                                            |
| Sprint 0 Review Summary | N/A (Primer Sprint de implementación del proyecto. No existen iteraciones ni entregables previos).                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Sprint 0 Retrospective Summary | N/A (Primer Sprint de implementación del proyecto. No existen retrospectivas previas).                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| **Sprint Goal & User Stories** |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Sprint 1 Goal | Our focus is on delivering an accessible, responsive, and deployed Landing Page for SumaqAgro to present our value proposition, subscription plans, team profiles, and legal policies to Peruvian agricultural producers and cooperative managers. We believe it delivers brand clarity, trust, and early user interest to our target audience. This will be confirmed when visitors can smoothly navigate all portal sections, select language preferences (Spanish/English), view our product solutions, and access the live portal on Cloudflare Pages. |
| Sprint 1 Velocity | 16 Story Points                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Sum of Story Points | 16 Story Points

#### 5.2.1.2. Aspect Leaders and Collaborators

En esta sección se presenta el artefacto **Leadership-and-Collaboration Matrix (LACX)** de acuerdo con las especificaciones de la metodología del curso y la rúbrica del proyecto para el **Sprint 1**.

El objetivo de esta matriz es brindar mayor claridad, responsabilidad directa y efectividad en la comunicación interna del equipo de la startup **Dymbia** durante el desarrollo del **Landing Page** de la solución **SumaqAgro**. En este Sprint 1, los aspectos considerados corresponden a los subconjuntos del alcance funcional y técnico necesarios para la maquetación, internacionalización, estilizado, estructuración de contenido y despliegue automatizado del portal estático.

Bajo este modelo, cada integrante del equipo asume el rol de **Aspect Leader (L)** sobre un aspecto técnico o funcional específico, siendo responsable de coordinar la calidad, arquitectura y cumplimiento del componente, mientras actúa como **Collaborator (C)** en los demás aspectos desarrollados por sus compañeros.

---

##### Leadership-and-Collaboration Matrix (LACX) — Sprint 1

| Team Member (Last Name, First Name) | GitHub Username | Aspect 1: Semántica HTML5 & SEO (US-01, US-04) | Aspect 2: Módulos & Políticas Legales (US-06, US-09) | Aspect 3: Internacionalización i18n & JS (US-03, US-08) | Aspect 4: Componentes UI & CSS3/SASS (US-01, US-07) | Aspect 5: Despliegue CI/CD Cloudflare (US-02, Deploy) |
| :--- |:---------------:|:----------------------------------------------:| :---: | :---: |:---------------------------------------------------:|:-----------------------------------------------------:|
| **Duarte Ruffner, Drago Derick** |   `Drago0724`   |                     **C**                      | **C** | **C** |                        **L**                        |                         **C**                         |
| **Sanca Condori, Miguel** |  `MiguelSanca`  |                     **C**                      | **L** | **C** |                        **C**                        |                         **C**                         |
| **Solorzano Sullca, Benjamin** |   `benjass2`    |                     **C**                      | **C** | **L** |                        **C**                        |                         **C**                         |
| **Vargas Enriquez, Jose Carlos** | `JoseAngelKyo`  |                     **C**                      | **C** | **C** |                        **C**                        |                         **L**                         |
| **Tejada Pumacayo, Yamil Jared** |  `YamilTejada`  |                     **L**                      | **C** | **C** |                        **C**                        |                         **C**                         |

*Leyenda: **L** = Leader (Líder del Aspecto Técnico) | **C** = Collaborator (Colaborador en el Desarrollo)*


#### 5.2.1.3. Sprint Backlog 1

En esta sección se detalla el **Sprint Backlog** correspondiente al **Sprint 1**. El objetivo principal de esta iteración fue la maquetación, desarrollo, internacionalización y despliegue del Landing Page de SumaqAgro. A continuación, se presenta la evidencia del tablero de control utilizado para el seguimiento de las historias de usuario y tareas técnicas durante el sprint.

**Tablero de Control del Sprint (Jira Software):**

![Enlace al tablero de Jira de Dymbia](assets/img/chapter-5/sprint-1/sprint-11.png)
![Enlace al tablero de Jira de Dymbia](assets/img/chapter-5/sprint-1/sprint-1.png)


**URL Público del Tablero:**
[Tablero Jira - SumaqAgro](https://sumaq-agro.atlassian.net/jira/software/c/projects/DSB/boards/2/backlog?epics=visible)

##### Tabla de Descomposición de Historias de Usuario y Tareas Técnicas (Sprint Backlog 1)

| User Story ID | User Story Title | Task ID | Task Title                                    | Task Description                                                                                                           | Estimation (Hours) | Assigned To | Status |
| :---: | :--- | :---: |:----------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------| :---: | :--- | :---: |
| **US-01** | Presentación de la propuesta de valor | **TSK-01** | Maquetación HTML5 de la Hero Section          | Crear la estructura semántica `<header>` y `<main>` con los titulares principales de propuesta de valor.                   | 4 h | Tejada Pumacayo, Yamil Jared | **Done** |
| **US-01** | Presentación de la propuesta de valor | **TSK-02** | Estilizado CSS3/SASS de botones CTA           | Diseñar e implementar los estilos responsivos BEM para los botones de llamada a la acción hacia registro.                  | 4 h | Duarte Ruffner, Drago Derick | **Done** |
| **US-01** | Presentación de la propuesta de valor | **TSK-03** | Optimización de assets visuales               | Comprimir y adaptar a formato WebP las imágenes de fondo y elementos gráficos de la Hero Section para mejorar rendimiento. | 2 h | Tejada Pumacayo, Yamil Jared | **Done** |
| **US-02** | Navegación por secciones del sitio | **TSK-04** | Menú de navegación responsivo                 | Implementar la barra de navegación fija `<nav>` y el menú hamburguesa adaptativo para dispositivos móviles.                | 4 h | Vargas Enriquez, Jose Carlos | **Done** |
| **US-02** | Navegación por secciones del sitio | **TSK-05** | Desplazamiento suave (Smooth Scroll)          | Programar en JavaScript vanilla la navegación fluida con desplazamiento suave hacia las anclas de cada sección.            | 3 h | Vargas Enriquez, Jose Carlos | **Done** |
| **US-03** | Selección e intercambio de idioma | **TSK-06** | Diccionarios i18n JSON                        | Crear los archivos `es.json` y `en.json` con las claves de traducción para todos los textos del portal.                    | 4 h | Solorzano Sullca, Benjamin | **Done** |
| **US-03** | Selección e intercambio de idioma | **TSK-07** | Lógica JS de alternancia de idioma            | Desarrollar el selector dinámico de idioma y almacenar la preferencia del usuario en el `localStorage`.                    | 4 h | Solorzano Sullca, Benjamin | **Done** |
| **US-04** | Presentación de la startup y equipo fundador | **TSK-08** | Sección "About Us" y tarjetas de equipo       | Maquetar la sección institucional con las tarjetas de presentación de los 5 fundadores de la startup Dymbia.               | 4 h | Tejada Pumacayo, Yamil Jared | **Done** |
| **US-04** | Presentación de la startup y equipo fundador | **TSK-09** | Enlaces sociales e iconografía                | Integrar hipervínculos hacia perfiles profesionales (LinkedIn, GitHub) y optimizar avatares gráficos.                      | 3 h | Tejada Pumacayo, Yamil Jared | **Done** |
| **US-06** | Consulta de módulos y soluciones tecnológicas | **TSK-10** | Grid responsivo de soluciones                 | Estructurar el catálogo de los 4 módulos funcionales principales (Satélites, Costos, Calidad, Prescripciones).             | 5 h | Sanca Condori, Miguel | **Done** |
| **US-06** | Consulta de módulos y soluciones tecnológicas | **TSK-11** | Iconografía SVG y valor agronómico            | Insertar íconos vectoriales SVG y redactar las fichas técnicas del beneficio agronómico de cada solución.                  | 3 h | Sanca Condori, Miguel | **Done** |
| **US-07** | Consulta de planes de suscripción y facturación | **TSK-12** | Tabla comparativa de precios                  | Diseñar e implementar la tabla de planes comerciales (Semilla, Cooperativa Pro, Asesor Técnico).                           | 6 h | Duarte Ruffner, Drago Derick | **Done** |
| **US-07** | Consulta de planes de suscripción y facturación | **TSK-13** | Destacado de plan y captura de leads          | Maquetar la tarjeta destacada del plan recomendado y configurar el formulario de contacto para clientes.                   | 4 h | Duarte Ruffner, Drago Derick | **Done** |
| **US-08** | Visualización de métricas de impacto y testimonios | **TSK-14** | Contadores de impacto dinámicos               | Diseñar la sección de métricas proyectadas (hectáreas monitoreadas, retención MAU y reducción de mermas).                  | 4 h | Solorzano Sullca, Benjamin | **Done** |
| **US-08** | Visualización de métricas de impacto y testimonios | **TSK-15** | Testimonios agrícolas                         | Implementar el componente interactivo de testimonios de productores y líderes de cooperativas.                             | 4 h | Solorzano Sullca, Benjamin | **Done** |
| **US-09** | Consulta de términos de servicio y políticas legales | **TSK-16** | Maquetación de Términos de Servicio           | Estructurar la vista legal detallando las cláusulas de uso de la plataforma vinculadas desde el pie de página (Footer).    | 3 h | Sanca Condori, Miguel | **Done** |
| **US-09** | Consulta de términos de servicio y políticas legales | **TSK-17** | Política de Privacidad y Tratamiento de Datos | Maquetar el documento legal específico sobre la confidencialidad y protección de datos agrícolas.                          | 2 h | Sanca Condori, Miguel | **Done** |
| **US-09** | Consulta de términos de servicio y políticas legales | **TSK-18** | Banner interactivo de Cookies                 | Implementar una página de consentimiento de cookies para cumplir con los estándares de navegación.                         | 2 h | Sanca Condori, Miguel | **Done** |


#### 5.2.1.4. Development Evidence for Sprint Review

En esta sección se explican y presentan los avances en la implementación con relación a los productos de la solución según el alcance del **Sprint 1**. Durante esta iteración, el esfuerzo del equipo Dymbia se centró exclusivamente en el desarrollo de la interfaz web estática y el despliegue a producción del **Landing Page** de SumaqAgro.

Para garantizar la trazabilidad y la calidad del código, el equipo ha seguido un flujo de trabajo colaborativo basado en **GitFlow**, empleando ramas `feature/*` para el desarrollo de cada historia de usuario y consolidando las entregas hacia la rama `develop` y finalmente a `main`. Asimismo, todos los registros de control de versiones cumplen estrictamente con el estándar **Conventional Commits** y han sido documentados en inglés.

A continuación, se detalla la evidencia de los commits integrados en el repositorio correspondiente a la Landing Page durante el Sprint 1:

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Commited on (Date) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `Dymbia/sumaqagro-landing` | `feature/us-02-site-navigation` | `16753b7` | `chore(repo): initialize landing page repository` | `---` | 14/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/us-02-site-navigation` | `0ab8382` | `feat(us-02): implement header navigation markup and layout styling` | `---` | 15/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/landing-skeleton` | `8e9b238` | `feat(landing): update navigation header and add content sections` | `---` | 18/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/assets-images` | `ec2e8e7` | `feat(images): add landing page images and media resources` | `---` | 18/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/assets-icons` | `a0033bb` | `feat(icons): add various SVG icons for navigation and UI elements` | `---` | 18/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/legal-pages` | `5e66c8e` | `feat(terms): add terms of service and conditions page` | `---` | 18/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/legal-pages` | `4b4a947` | `feat(privacy): add privacy policy and data compliance page` | `---` | 18/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/legal-pages` | `5a250cd` | `feat(cookies): add cookie policy and preference settings page` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/update-team-info` | `c1cd51a` | `feat(team): update team member details and images` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/i18n-interactivity` | `1907e04` | `feat(i18n): add Spanish translation dictionary` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/i18n-interactivity` | `b1baced` | `feat(i18n): add English translation dictionary` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/i18n-interactivity` | `c795b6d` | `feat(i18n): implement language switching and persistence` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/i18n-interactivity` | `e397a88` | `feat(i18n): add language toggle interaction` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/i18n-interactivity` | `caafd1e` | `feat(pricing): implement billing period switch` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/landing-styles` | `a4f0ef3` | `refactor(styles): remove unused header and navigation styles` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/landing-styles` | `8f70567` | `feat(styles): add new header, navigation, hero, about, and team styles` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/landing-styles` | `80f233e` | `feat(styles): add audience and solutions sections with responsive grid layouts` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/landing-styles` | `f8091bc` | `feat(styles): add pricing and impact sections` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/landing-styles` | `98a05ac` | `feat(styles): add testimonials, CTA, footer, and responsive design` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/landing-styles` | `9dcf91f` | `feat(styles): add billing toggle switcher and legal header styles` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/update-team-info` | `8c80a65` | `feat(team): update team member names and change language to Spanish` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/update-footer-and-photo` | `5bb1380` | `style(footer): update footer colors` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/update-footer-and-photo` | `b4749ab` | `feat(branding): add favicon to landing page` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/update-footer-and-photo` | `083f106` | `feat(landing): update head element with seo meta tags and og properties` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `feature/update-footer-and-photo` | `99d7b88` | `fix(i18n): fix pricing period translation logic and sync with billing toggle` | `---` | 19/09/2026 |
| `Dymbia/sumaqagro-landing` | `release/v1.0.0` | `f9fb74d` | `Merge branch 'release/v1.0.0' into main` | `---` | 19/09/2026 |



#### 5.2.1.5. Execution Evidence for Sprint Review

En esta sección se presenta la evidencia visual y funcional de los productos de software desarrollados y desplegados durante el **Sprint 1**. El equipo Dymbia logró construir exitosamente la primera versión del **Landing Page** de SumaqAgro, cumpliendo con los criterios de aceptación establecidos, aplicando un diseño responsivo adaptable a múltiples dispositivos (Desktop y Mobile), e integrando soporte de internacionalización (i18n) para los idiomas español e inglés.

A continuación, se adjuntan las capturas de pantalla de las vistas principales implementadas, demostrando la alta fidelidad de la interfaz construida respecto a los *mock-ups* originales definidos en la etapa de diseño:

**Evidencia Visual: Capturas de Pantalla (Desktop y Mobile)**

**Desktop View:**

![landinpage-1](assets/img/chapter-5/landing-page/landingpage-1.png)
![landinpage-2](assets/img/chapter-5/landing-page/landingpage-2.png)
![landinpage-4](assets/img/chapter-5/landing-page/landingpage-4.png)
![landinpage-5](assets/img/chapter-5/landing-page/landingpage-5.png)
![landinpage-6](assets/img/chapter-5/landing-page/landingpage-6.png)
![landinpage-7](assets/img/chapter-5/landing-page/landingpage-7.png)
![landinpage-8](assets/img/chapter-5/landing-page/landingpage-8.png)
![landinpage-3](assets/img/chapter-5/landing-page/landingpage-3.png)
![landinpage-9](assets/img/chapter-5/landing-page/landingpage-9.png)

**Mobile View:**

![mobile-1](assets/img/chapter-5/landing-page/mobile-1.png)
![mobile-2](assets/img/chapter-5/landing-page/mobile-2.png)
![mobile-3](assets/img/chapter-5/landing-page/mobile-3.png)
![mobile-4](assets/img/chapter-5/landing-page/mobile-4.png)
![mobile-5](assets/img/chapter-5/landing-page/mobile-5.png)
![mobile-6](assets/img/chapter-5/landing-page/mobile-6.png)
![mobile-7](assets/img/chapter-5/landing-page/mobile-7.png)
![mobile-8](assets/img/chapter-5/landing-page/mobile-8.png)
![mobile-9](assets/img/chapter-5/landing-page/mobile-9.png)


**Evidencia Funcional: Video Demostrativo de Navegación**
Para evidenciar el correcto comportamiento de los componentes interactivos, el menú de navegación fijo (*sticky navbar*), el desplazamiento suave (*smooth scroll*) hacia las anclas de las secciones y el intercambio dinámico de idioma, se ha registrado la navegación real del producto operando en su entorno de producción.

* **Vista Previa del Video:**
  ![Captura del Video Demostrativo de Navegación](assets/img/chapter-5/video-preview-landing-page.png)

* **Enlace de Reproducción (Microsoft Stream):**
  [Video "Video de Exposición AV1"](https://goo.su/pK90M9)

---

#### 5.2.1.6. Services Documentation Evidence for Sprint Review

Durante el presente Sprint no se elaboró documentación de servicios web específicos, debido a que el alcance y los esfuerzos del equipo se concentraron de manera exclusiva en el diseño, desarrollo y despliegue continuo del Landing Page institucional.

---

#### 5.2.1.7. Software Deployment Evidence for Sprint Review

Para este sprint se realizó el despliegue de la **Landing Page**.

**1. Despliegue en Producción mediante Cloudflare Pages (Landing Pages)**

Tal como se detalló anteriormente en la sección **5.1.4. Software Deployment Configuration**, el despliegue principal de la Landing Page se ejecutó a través de **Cloudflare Pages**, garantizando una canalización de entrega continua automatizada (*Continuous Deployment*).

A través de la integración mediante *webhooks* con el repositorio en GitHub, cada actualización o *commit* verificado en la rama principal (`main`) dispara de forma automática la compilación y distribución del portal en la red global *Edge* de Cloudflare. Este proceso asegura un entorno de despliegue ágil, con alta disponibilidad y acceso inmediato bajo protocolo seguro `HTTPS`.

![Cloudflare Pages](assets/img/chapter-5/deployment-configuration/step-8.png)



**2. Despliegue mediante GitHub Pages (Landing Page)**

A pesar de que el despliegue principal se gestionó a través de Cloudflare Pages, se configuró adicionalmente el despliegue de la landing page en GitHub Pages con el propósito de contar con un entorno alternativo de respaldo y validación continua. La evidencia del proceso es la siguiente:

*   **Paso 1 (Preparación):** Se accedió a la configuración del repositorio (`Settings` > `Pages`) para establecer la fuente de publicación.

![Paso 1](assets/img/chapter-5/deployment-configuration/gitpages-1.png)

*   **Paso 2 (Configuración):** En la sección *Build and deployment*, se seleccionó la rama `main` y la carpeta raíz `/ (root)` como origen del código.

![Paso 2](assets/img/chapter-5/deployment-configuration/gitpages-2.png)

*   **Paso 3 (Publicación):** El sistema finalizó el proceso de compilación con éxito, confirmando el despliegue con el mensaje *"Your site is live"* y otorgando la URL pública.

![Paso 3](assets/img/chapter-5/deployment-configuration/gitpages-3.png)




---

##### Enlaces Oficiales del Landing Page

| Recurso / Plataforma | Descripción | Dirección / Enlace Oficial                                                                                                                                                                               |
| :--- | :--- |:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Repositorio GitHub** | Código fuente del sitio estático (HTML5, CSS3, JavaScript) | [https://dymbia-opensource.github.io/sumaqAgro-landing-page](https://dymbia-opensource.github.io/sumaqAgro-landing-page)                                                                                 |
| **Cloudflare Pages** | Portal oficial publicado y activo en producción | [https://sumaqagro-landing-page.pages.dev](https://sumaqagro-landing-page.pages.dev)                                                                                                                     |


---

#### 5.2.1.8. Team Collaboration Insights during Sprint

Durante la ejecución de este Sprint, se emplearon las analíticas de **GitHub Insights** para auditar y monitorear la dinámica colaborativa del equipo **Dymbia**. Se registró una participación equitativa y constante de todos los integrantes en sus roles asignados, destacando un enfoque ágil basado en la revisión cruzada de código. Aunque las modificaciones en la Landing Page se concentraron en ajustes menores de contenido, diseño e internacionalización, la comunicación fluida, el alineamiento en las ceremonias y la retroalimentación constructiva permitieron mantener un flujo de trabajo altamente eficiente, garantizando la integración continua y el cumplimiento oportuno de los entregables del Sprint.

![Insights](assets/img/chapter-5/sprint-1/insigths.png)

---

### 5.2.2. Sprint 2

El **Sprint 2** representa la transición de la Landing Page hacia el MVP frontend de **SumaqAgro**, implementado en **Angular 22** (Angular 18+), con **Angular Material**, **Leaflet.js**, **Angular Signals** y una API de prueba con **json-server**. Se mantiene la organización en cuatro capas: *domain/model*, *application*, *infrastructure* y *presentation*. El alcance revisado comprende consulta de parcelas e índices registrados, alertas regionales almacenadas, reportes textuales, bandeja, inspecciones y recetas consultables. 


#### 5.2.2.1. Sprint Planning 2

En esta sección se conserva la planificación original del **Sprint 2**, realizada el 2 de octubre de 2026, y se ajusta su contenido a las seis Historias de Usuario revisadas del **EPIC-06 (Salud del Cultivo)**: US-44, US-45, US-48, US-49, US-50 y US-51. 

| Sprint # | Sprint 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ------ |-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Sprint Planning Background** |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Date | 2026-10-02                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Time | 10:00 AM                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Location | Discord / GitHub                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Prepared By | Tejada Pumacayo, Yamil Jared                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Attendees (to planning meeting) | Tejada Pumacayo, Yamil Jared / Duarte Ruffner, Drago Derick / Sanca Condori, Miguel / Solorzano Sullca, Benjamin / Vargas Enriquez, Jose Carlos                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Sprint 1 Review Summary | Se completó y desplegó exitosamente la versión v1.0.0 del Landing Page en Cloudflare Pages (16 SP), validando la propuesta de valor, planes comerciales, perfiles de los fundadores y políticas legales.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Sprint 1 Retrospective Summary | Se identificó la necesidad de definir anticipadamente las entidades TypeScript de dominio (DDD) y los contratos mock en `json-server` para acelerar la construcción paralela de componentes Standalone en Angular.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| **Sprint Goal & User Stories** |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Sprint 2 Goal | Our focus is on delivering a demonstrable Crop Health frontend MVP for SumaqAgro using Angular 22, Leaflet.js, Angular Signals and a fake REST API. Producers and agricultural engineers will consult plot boundaries and recorded NDVI/NDWI values, view stored regional alerts, submit textual pest reports, manage a simple inbox, schedule and complete field inspections, and issue and consult agronomic prescriptions. This will be confirmed through verified user flows, clear loading, empty and error states, and consistent demo data. Public deployment requires separate evidence; live satellite processing, weather forecasts, photo uploads, external messaging and signed prescription PDFs remain future work. |
| Sprint 2 Velocity | 32 Story Points                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Sum of Story Points | 32 Story Points                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |

---


#### 5.2.2.2. Aspect Leaders and Collaborators

En esta sección se presenta la matriz **Leadership-and-Collaboration Matrix (LACX)** correspondiente al **Sprint 2**, conservando la asignación de líderes y colaboradores proporcionada por el equipo y ajustando los cinco aspectos técnicos al alcance frontend revisado.

Bajo este modelo, cada integrante tiene una responsabilidad prevista como **Aspect Leader (L)** y participa como **Collaborator (C)** en los demás aspectos. La matriz representa la distribución de planificación; la contribución efectiva debe respaldarse con commits, revisiones y acuerdos del equipo.

##### Leadership-and-Collaboration Matrix (LACX) — Sprint 2

| Team Member (Last Name, First Name) | GitHub Username | Aspect 1: Domain Models & Validation (US-48, US-50, US-51) | Aspect 2: Leaflet Plot Viewer & PNG Report (US-44) | Aspect 3: Signal Store & Fake REST API Integration (US-45, US-49) | Aspect 4: Reports, Inspections & Prescription Forms UI (US-48, US-50, US-51) | Aspect 5: i18n & Angular Standalone Routing (US-44, US-45, US-49) |
| ------ |---------------| ------ | ------ | ------ | ------ | ------ |
| **Duarte Ruffner, Drago Derick** | `Drago0724`     | **L** | **C** | **C** | **C** | **C** |
| **Sanca Condori, Miguel** | `MiguelSanca`   | **C** | **C** | **L** | **C** | **C** |
| **Solorzano Sullca, Benjamin** | `benjass2`      | **C** | **C** | **C** | **L** | **C** |
| **Vargas Enriquez, Jose Carlos** | `JoseAngelKyo`  | **C** | **C** | **C** | **C** | **L** |
| **Tejada Pumacayo, Yamil Jared** | `YamilTejada`   | **C** | **L** | **C** | **C** | **C** |

***Leyenda: L = Leader (Líder del Aspecto Técnico) | C = Collaborator (Colaborador en el Desarrollo)***

---


#### 5.2.2.3. Sprint Backlog 2

En esta sección se detalla la descomposición técnica de las seis historias revisadas del **EPIC-06** en **23 tareas**. Se conservan los IDs, responsables y estimaciones del documento original: **88 horas históricas**, sujetas a revisión para el alcance ajustado. Los títulos y descripciones se actualizaron el 9 de octubre de 2026; no se presentan como acuerdos retrospectivos de la reunión original. El estado **Implementado** indica soporte existente en el código y no equivale automáticamente a **Done** ni a aceptación de la historia; **Parcial**, **Pendiente** y **Pendiente de validación** identifican el trabajo restante. Antes del cierre deben prepararse alertas demo, corregirse las relaciones de parcelas y socios y documentarse el circuito productor–ingeniero–productor. US-16 queda fuera de esta revisión.

| User Story ID | User Story Title                                          | Task ID    | Task Title                                     | Task Description                                                                                                  | Estimation (Hours) | Assigned To                  | Status   |
| ------------- | --------------------------------------------------------- | ---------- | ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ------------------ | ---------------------------- | -------- |
| **US-44** | Consulta geográfica de parcelas e índices NDVI y NDWI | **TSK-01** | Inicialización del visor Leaflet | Integrar Leaflet y sus tipados; inicializar y destruir el mapa en el ciclo de vida del componente. | 4 h | Tejada Pumacayo, Yamil Jared | Implementado |
| **US-44** | Consulta geográfica de parcelas e índices NDVI y NDWI | **TSK-02** | Polígono registrado y selección de parcela | Dibujar los límites existentes, ajustar el encuadre y mantener la selección compartida sin crear geometrías ficticias. | 4 h | Tejada Pumacayo, Yamil Jared | Implementado |
| **US-44** | Consulta geográfica de parcelas e índices NDVI y NDWI | **TSK-03** | Selector de índice y fondo del mapa | Alternar NDVI/NDWI para el color del contorno y Satélite híbrido/Mapa para el fondo, sin afirmar que son mapas de calor. | 4 h | Tejada Pumacayo, Yamil Jared | Implementado |
| **US-44** | Consulta geográfica de parcelas e índices NDVI y NDWI | **TSK-04** | Panel de observación y ficha PNG | Mostrar fecha, índices, área de estrés y recomendación; gestionar ausencia/error y descargar una ficha PNG solo con datos válidos. | 3 h | Tejada Pumacayo, Yamil Jared | Implementado |
| **US-45** | Consulta de alertas agroclimáticas registradas por región | **TSK-05** | Modelo de alerta agroclimática | Definir AgroclimaticAlert con región, severidad, fecha, fuente, título y descripción; validar sus datos. | 3 h | Duarte Ruffner, Drago Derick | Implementado |
| **US-45** | Consulta de alertas agroclimáticas registradas por región | **TSK-06** | Endpoint, assembler y consulta por región | Consultar agroclimatic-alerts mediante HttpClient y transformar las respuestas para la parcela seleccionada. | 3 h | Sanca Condori, Miguel | Implementado |
| **US-45** | Consulta de alertas agroclimáticas registradas por región | **TSK-07** | Tarjetas regionales y estados de consulta | Mostrar alertas con distinción de severidad y separar carga, lista vacía y fallo de consulta. | 4 h | Sanca Condori, Miguel | Implementado |
| **US-45** | Consulta de alertas agroclimáticas registradas por región | **TSK-08** | Datos y demostración de alertas regionales | Preparar alertas simuladas para regiones de parcelas demo y documentar cambio de región, lista vacía y error. | 3 h | Sanca Condori, Miguel | Pendiente |
| **US-48** | Registro de reportes textuales de plagas o enfermedades | **TSK-09** | Modelo y comando de reporte textual | Definir PestReport y RecordPestReportCommand para parcela, productor, descripción y severidad; estado inicial Pendiente. | 4 h | Duarte Ruffner, Drago Derick | Implementado |
| **US-48** | Registro de reportes textuales de plagas o enfermedades | **TSK-10** | Formulario reactivo de reporte | Seleccionar parcela propia e ingresar descripción y severidad; validar longitud mínima y bloquear envíos inválidos o repetidos. | 5 h | Solorzano Sullca, Benjamin | Implementado |
| **US-48** | Registro de reportes textuales de plagas o enfermedades | **TSK-11** | Confirmación y reinicio del formulario | Mostrar confirmación tras el POST exitoso, ofrecer acceso a la bandeja y reiniciar el estado de envío sin errores rojos residuales. | 4 h | Solorzano Sullca, Benjamin | Implementado |
| **US-48** | Registro de reportes textuales de plagas o enfermedades | **TSK-12** | Conservación de datos tras error | Conservar los campos si falla el guardado y permitir reintentar, sin anunciar persistencia offline ni sincronización automática. | 4 h | Solorzano Sullca, Benjamin | Implementado |
| **US-49** | Consulta y gestión básica de la Bandeja de Plagas | **TSK-13** | Estado reactivo y ámbito de reportes | Gestionar la bandeja con Signals y limitar registros a parcelas disponibles para la sesión demo; cancelar lecturas obsoletas. | 4 h | Sanca Condori, Miguel | Implementado |
| **US-49** | Consulta y gestión básica de la Bandeja de Plagas | **TSK-14** | Bandeja sencilla con tarjetas | Mostrar parcela, descripción, severidad y estado; ordenar por ID descendente y ofrecer navegación a reportes, inspecciones y recetas. | 4 h | Sanca Condori, Miguel | Implementado |
| **US-49** | Consulta y gestión básica de la Bandeja de Plagas | **TSK-15** | Eliminación confirmada y retroalimentación | Permitir al productor eliminar reportes propios pendientes sin visitas ni recetas; conservar registros si cancela o falla la API. | 4 h | Vargas Enriquez, Jose Carlos | Implementado |
| **US-50** | Programación y registro de inspecciones de campo | **TSK-16** | Modelo y validaciones de inspección | Definir FieldInspection con estados Programada/Completada, fecha, notas e identidad del inspector; controlar fecha y duplicados. | 3 h | Duarte Ruffner, Drago Derick | Implementado |
| **US-50** | Programación y registro de inspecciones de campo | **TSK-17** | Formulario y listado de visitas | Programar una visita con fecha y hora futuras mediante datetime-local; mostrar las visitas y acceso a la bandeja. | 4 h | Solorzano Sullca, Benjamin | Implementado |
| **US-50** | Programación y registro de inspecciones de campo | **TSK-18** | Finalización y sincronización de inspección | Guardar resultados, marcar visita Completada y reporte Inspeccionado; ofrecer reintento de sincronización si falla el segundo guardado. | 3 h | Vargas Enriquez, Jose Carlos | Implementado |
| **US-51** | Emisión y consulta de recetas agronómicas | **TSK-19** | Modelo de receta agronómica | Definir TechnicalPrescription e IssueTechnicalPrescriptionCommand con reporte, emisor, producto, instrucciones y fecha. | 4 h | Duarte Ruffner, Drago Derick | Implementado |
| **US-51** | Emisión y consulta de recetas agronómicas | **TSK-20** | Formulario y guardado de receta | Registrar producto, dosis, instrucciones y fecha válida únicamente para reportes inspeccionados y el emisor disponible en sesión. | 5 h | Solorzano Sullca, Benjamin | Implementado |
| **US-51** | Emisión y consulta de recetas agronómicas | **TSK-21** | Consulta del historial de recetas | Mostrar las recetas del ámbito disponible con producto, reporte, emisor, fecha e instrucciones y retorno a la bandeja. | 3 h | Solorzano Sullca, Benjamin | Implementado |
| **US-51** | Emisión y consulta de recetas agronómicas | **TSK-22** | Demostración integrada de asistencia técnica | Verificar con datos coherentes el circuito productor–ingeniero: reporte, visita, resultados y receta visible para el productor. | 4 h | Solorzano Sullca, Benjamin | Pendiente de validación |
| **US-51** | Emisión y consulta de recetas agronómicas | **TSK-23** | Rutas, traducciones y datos relacionados | Mantener rutas y diccionarios ES/EN; preparar relaciones consistentes entre parcelas, socios, ingeniero, reportes, visitas y recetas. | 5 h | Vargas Enriquez, Jose Carlos | Parcial |

#### 5.2.2.4. Development Evidence for Sprint Review

En esta sección se explican y presentan los avances en la implementación con relación a los productos de la solución según el alcance del **Sprint 2**. Durante esta iteración, el esfuerzo del equipo Dymbia se centró en el desarrollo de la **Web Application** de SumaqAgro en Angular, sus contextos funcionales y la integración con una API de prueba.

Para garantizar la trazabilidad y la calidad del código, el equipo ha seguido un flujo de trabajo colaborativo basado en **GitFlow**, empleando ramas `feature/*` para el desarrollo de cada historia de usuario y consolidando las entregas hacia la rama `develop` y finalmente a `main`. Asimismo, los mensajes de los commits se conservan literalmente como están registrados en Git, incluyendo los commits de integración de ramas.

A continuación, se detalla la evidencia de los commits integrados en el repositorio de la Web Application durante el Sprint 2, seleccionando 50 de los 165 commits ordenándolos desde la fecha más antigua hasta la más reciente:

Repository | Branch | Commit Id | Commit Message | Commit Message Body | Commited on (Date) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `dymbia-opensource/sumaqAgro-appweb` | `develop` | `2ba53bf` | chore: initial project setup with angular cli | --- | 05/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/add-angular-material` | `3c0ff51` | chore: add angular material dependency and global theme | --- | 05/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/configure-environments` | `99e867e` | chore: add environment files for api configuration | --- | 05/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/configure-i18n-http` | `3db6099` | feat(i18n): configure http client and ngx-translate with en/es resources | --- | 05/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/fake-api` | `335cd2a` | chore: add json-server fake api with field management data | --- | 05/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/shared-base` | `87573c0` | feat(shared): add base resource, response and assembler contracts | --- | 05/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/shared-base` | `7988165` | feat(shared): add generic crud base api endpoint | --- | 05/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/shared-presentation` | `2c246ff` | feat(shared): use layout as app shell and add root routes | --- | 05/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/field-management-domain` | `fbdbfdb` | feat(field-management): add field plot, crop campaign, campaign ledger and expense entry entities | --- | 06/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/field-management-application` | `069824d` | feat(field-management): add field management store with plot, campaign and ledger state | --- | 06/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/field-management-presentation` | `e6e224d` | feat(field-management): add my plot dashboard with spend and breakeven cards and cost chart | --- | 06/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-domain` | `fd8d1df` | feat(entities): add domain entities for agroclimatic alerts, climate forecasts, field inspections, pest reports, and satellite observations | --- | 06/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-domain` | `77522fd` | feat(entities): add TechnicalPrescription entity for agronomist's pest treatment prescriptions | --- | 06/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-domain` | `3bfabee` | feat(commands): add RecordPestReportCommand to handle pest report submissions | --- | 06/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-domain` | `15525d5` | feat(commands): add ScheduleFieldInspectionCommand to schedule agronomist visits for pest issues | --- | 06/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-domain` | `7112c03` | feat(commands): add IssueTechnicalPrescriptionCommand and RecordClimateForecastCommand for pest treatment prescriptions and climate predictions | --- | 06/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-infrastructure` | `4824b8a` | feat(responses): add response interfaces for agroclimatic alerts, climate forecasts, field inspections, pest reports, satellite observations, and technical prescriptions | --- | 07/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-infrastructure` | `67fe690` | feat(assemblers): add assemblers for agroclimatic alerts, climate forecasts, field inspections, pest reports, satellite observations, and technical prescriptions | --- | 07/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-infrastructure` | `d4b8f8e` | feat(endpoints): add HTTP endpoints for agroclimatic alerts, climate forecasts, field inspections, pest reports, satellite observations, and technical prescriptions | --- | 07/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-application` | `90a387a` | feat(application): implement CropHealthStore and CropHealthApi for managing crop health data | --- | 07/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-presentation` | `fe4ef72` | feat(view): add Crop Health monitoring view with satellite observations and diagnostics | --- | 07/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-presentation` | `329a634` | feat(view): add Agroclimatic Alerts view for displaying active weather and environmental alerts | --- | 07/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-presentation` | `d272ef4` | feat(view): add Pest Report Form for submitting pest and disease observations | --- | 07/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-presentation` | `8ff9dd1` | feat(view): add Diagnosis Inbox view for managing pest and disease reports | --- | 07/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-presentation` | `e06d364` | feat(view): add Prescription Form for issuing agrochemical prescriptions | --- | 07/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-presentation` | `d40b79b` | feat(view): add Prescriptions View for displaying issued agrochemical prescriptions | --- | 07/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-presentation` | `1729451` | feat(view): integrate Leaflet map for crop health visualization | --- | 07/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/profiles-context` | `dfe32bd` | feat(profiles): configure routes, fake api, and i18n support | --- | 07/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/deployment-firebase` | `089c425` | chore: point production environment to the fake api on render | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/deployment-firebase` | `0959f0b` | chore: add firebase hosting configuration and deployment guide | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/harvest-certification-domain-infrastructure` | `6cd5e07` | feat(harvest): add command interfaces and entities for managing harvest batches and quality certificates | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/harvest-certification-application` | `4162ed1` | feat(harvest): implement HarvestCertificationStore for managing batches and certificates | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/harvest-certification-presentation` | `3e2c19b` | feat(harvest): add harvest certificates view component with template and styles | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/harvest-certification-presentation` | `745c890` | feat(harvest): add public traceability view component with template, styles, and logic | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/update-field-management` | `9861be8` | feat(field-management): add registered plots, plot registration and boundary map views | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/update-shared` | `5549584` | refactor(shared): split translations by bounded context, translate the paginator and default to english | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/demo-user-session` | `0e081f1` | fix: use the demo access user instead of a fixed environment user | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-improvements` | `cbd2a34` | "fix(crop-health): correct map initialization" | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-improvements` | `47d379d` | fix(crop-health): replace fabricated fallback data with explicit states | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-improvements` | `5424302` | fix(server): reconcile demo data and add crop health collections | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-improvements` | `97975de` | feat(crop-health): connect reports inspections and prescriptions to API | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-improvements` | `ed1b66e` | feat(crop-health): enhance demo user roles and add field inspection features | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-improvements` | `8533b6f` | feat(crop-health): enhance plot dashboard with satellite observation data and NDVI chart | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-improvements` | `ffe9936` | feat(crop-health): add plot boundary features and enhance map display options | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-improvements` | `ea59d1f` | feat(crop-health): add report deletion functionality and enhance image download feature | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-improvements` | `84a9bde` | feat(crop-health): remove report download functionality and update README for image download changes | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/default-language-en` | `6703ec1` | feat(crop-health): update report label logic and simplify language switcher functionality | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/demo-access-set-english` | `1c240ec` | feat(demo-access): update text to English for demo access page | --- | 08/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/field-management-components` | `d661d15` | feat(field-management): add campaign finances and field expense views with their routes | --- | 09/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `main` | `277ea58` | Merge branch 'release/v1.0.0' into main | --- | 09/10/2026


#### 5.2.2.5. Execution Evidence for Sprint Review


En esta sección se presentan las evidencias de ejecución de la Web Application de SumaqAgro desarrollada durante el Sprint 2. Las capturas muestran las interfaces y los flujos de uso de la aplicación en un entorno local, utilizando datos de demostración.

Las evidencias se organizan en tres segmentos según el perfil del usuario: agricultor independiente, director de cooperativa e ingeniero agrónomo. A continuación, se documenta el primer segmento, correspondiente al agricultor independiente.

---

##### 1. Agricultor independiente

El perfil del agricultor independiente, representado por Guillermo, reúne las interfaces para consultar el estado de sus cultivos, revisar los gastos de campaña, gestionar sus parcelas y acceder a la asistencia agronómica. Las capturas presentan la navegación de la aplicación con el idioma inglés seleccionado.

###### 1.1. Dashboard principal — Mi parcela

La pantalla My Plot presenta un resumen de la parcela seleccionada y de su campaña agrícola. Se muestran el índice NDVI registrado, la inversión acumulada y el precio de equilibrio por saco. Además, incluye un gráfico de evolución del vigor vegetal y la distribución de costos entre insumos, mano de obra y transporte.

En la evidencia se observa la parcela de demostración de Ayacucho, con un NDVI de 0.76, una inversión de S/ 4,870.00 y un punto de equilibrio de S/ 16.23 por saco.

![Dashboard principal — Mi parcela](assets/img/chapter-5/app-angular/img-1.1.png)

###### 1.2. Salud del cultivo — Parcela de Apurímac

La pantalla Crop Health muestra los límites de la parcela de Apurímac sobre un mapa con fondo satelital. El usuario dispone de un selector de parcela, controles de zoom y opciones para alternar entre NDVI y NDWI, así como entre las vistas de satélite híbrido y mapa.

El panel lateral presenta la fecha de captura y los valores de demostración: NDVI de 0.58, NDWI de 0.18 y 0.9 hectáreas de estrés registrado. También se muestran una recomendación y los botones para consultar al asesor y descargar una ficha en formato PNG. El texto de la interfaz aclara que el color del polígono identifica el índice seleccionado y no representa un mapa de calor calculado.

![Salud del cultivo — Parcela de Apurímac](assets/img/chapter-5/app-angular/img-1.2.png)

###### 1.3. Gastos de campaña y precio de equilibrio

La pantalla My Expenses and Earnings organiza los gastos de la campaña por categorías y presenta una tabla con la fecha, el tipo de gasto, la descripción, la cantidad, el precio unitario y el total de cada registro. El nombre de la pantalla se conserva para identificar la evidencia; el alcance documentado comprende gastos y punto de equilibrio, sin registro de ventas ni cálculo de ganancias netas por liquidación comercial.

Para la parcela de Apurímac se muestra una inversión de S/ 4,670.00, distribuida en S/ 3,000.00 de insumos, S/ 1,320.00 de mano de obra y S/ 350.00 de transporte. El panel de equilibrio presenta un rendimiento esperado de 280 sacos y un precio mínimo calculado de S/ 16.68 por saco. La interfaz incluye las acciones para registrar gastos y actualizar el rendimiento esperado.

![Gastos de campaña y precio de equilibrio](assets/img/chapter-5/app-angular/img-1.3.png)

###### 1.4. Bandeja de reportes de plagas

La pantalla Diagnosis Inbox presenta los reportes asociados a las parcelas del agricultor. Cada tarjeta identifica la parcela, el número del reporte, su estado, la descripción de los síntomas y la severidad.

La captura muestra el reporte #1 de la parcela de Apurímac, con estado Pending y severidad Low. También se observan las acciones para agregar un reporte, eliminar el registro y acceder a las inspecciones de campo o al historial de recetas.

![Bandeja de reportes de plagas](assets/img/chapter-5/app-angular/img-1.4.png)

###### 1.5. Consulta de certificados de cosecha

La pantalla Official Quality and Origin Certificates presenta un certificado asociado al lote BATCH-2026-08. La tarjeta muestra el cultivo, el predio de origen, la fecha de emisión y la distribución de la clasificación técnica de la cosecha.

La interfaz ofrece las opciones para mostrar el código QR al comprador, descargar el certificado en PDF y consultar su registro web. Esta captura documenta la presentación del certificado y sus acciones disponibles. La consulta pública respalda la verificación de calidad y origen; la negociación y la compraventa se realizan fuera de SumaqAgro.

![Consulta de certificados de cosecha](assets/img/chapter-5/app-angular/img-1.5.png)

###### 1.6. Consulta de alertas agrícolas

La pantalla Agricultural Alerts permite seleccionar una parcela y consultar las alertas correspondientes a su región. En la captura se encuentra seleccionada la parcela de Ayacucho y se presenta el mensaje “No alerts are recorded for this region”.

Esta evidencia muestra el estado de la interfaz cuando no existen alertas registradas para la región consultada.

![Consulta de alertas agrícolas](assets/img/chapter-5/app-angular/img-1.6.png)

###### 1.7. Configuración de la cuenta

La pantalla Account Settings and Farmer Support presenta los datos de contacto del agricultor, mediante campos de teléfono y correo electrónico, junto con el botón Save.

La sección de seguridad muestra los campos de contraseña deshabilitados y un mensaje que indica que el cambio de contraseña estará disponible cuando se incorpore la autenticación de la plataforma.

![Configuración de la cuenta](assets/img/chapter-5/app-angular/img-1.7.png)

###### 1.8. Consulta de parcelas registradas

La pantalla My Registered Plots presenta las parcelas del agricultor mediante tarjetas con su nombre, cultivo, superficie, ubicación y acceso al monitoreo.

En la evidencia se muestran las parcelas de demostración de Ayacucho y Apurímac, además de Parcela San Jerónimo – Lote 1, con superficies de 4.83, 4.82 y 2.81 hectáreas, respectivamente. La interfaz también informa cuántos espacios de la cuota del Plan Semilla se han utilizado.

![Consulta de parcelas registradas](assets/img/chapter-5/app-angular/img-1.8.png)

###### 1.9. Registro de una nueva parcela — Datos del cultivo

El primer paso del registro presenta un formulario para ingresar el nombre de la parcela, el tipo y la variedad del cultivo, la región o valle, la fecha estimada de siembra, el rendimiento esperado y el área declarada.

La captura muestra el registro de Parcela San Jerónimo – Lote 1, con cultivo Papa Canchán, ubicación en Apurímac – Valle de Chumbao, rendimiento esperado de 450 sacos y área declarada de 1.5 hectáreas. El botón Next permite continuar hacia la delimitación del terreno.

![Registro de una nueva parcela — Datos del cultivo](assets/img/chapter-5/app-angular/img-1.9.png)

###### 1.10. Delimitación geográfica y cálculo de superficie

El segundo paso presenta un mapa para marcar los vértices del terreno. El panel lateral muestra las coordenadas registradas, el estado del polígono y la superficie calculada.

En la captura se observa un perímetro cerrado de cuatro vértices y un área calculada de 2.81 hectáreas, diferenciada del área declarada de 1.5 hectáreas. La interfaz incluye controles para deshacer el último punto, limpiar el mapa y guardar la parcela, además de opciones para ingresar coordenadas o solicitar la ubicación GPS del dispositivo.

![Delimitación geográfica y cálculo de superficie](assets/img/chapter-5/app-angular/img-1.10.png)

###### 1.11. Confirmación del registro de parcela

Tras guardar la delimitación, la aplicación presenta el cuadro de confirmación “Plot Saved Successfully!”. Este resume el nombre de la parcela, el cultivo, el área calculada y los espacios utilizados del plan.

La evidencia muestra la parcela San Jerónimo – Lote 1, con cultivo Papa Canchán y superficie de 2.81 hectáreas. El diálogo ofrece accesos para consultar la salud del cultivo o regresar a la gestión de parcelas. El indicador de sincronización satelital forma parte de la presentación de la demo.

![Confirmación del registro de parcela](assets/img/chapter-5/app-angular/img-1.11.png)

###### 1.12. Salud del cultivo — Selección de NDWI

La última captura muestra la parcela de Ayacucho con la opción NDWI seleccionada. El límite de la parcela se presenta en azul sobre el fondo satelital, mientras el panel lateral conserva los valores registrados: NDVI de 0.76, NDWI de 0.42 y 0.3 hectáreas de estrés registrado.

Esta evidencia documenta la selección del índice NDWI y la consulta de los datos simulados de la parcela, junto con las acciones de consulta al asesor y descarga de la ficha PNG.

![Salud del cultivo — Selección de NDWI](assets/img/chapter-5/app-angular/img-1.12.png)


---

##### 2. Director de cooperativa

El perfil del director de cooperativa, representado por Cristian Santana, presenta una interfaz orientada a la supervisión de socios, parcelas, costos y calidad de la producción. Este segmento continúa en desarrollo; la evidencia documenta el avance de su panel y las opciones de navegación disponibles.

###### 2.1. Panel de control de la cooperativa

La pantalla Panel de Control – Cooperativa Agraria Valle del Mantaro muestra un resumen de 3 socios activos y 7.8 hectáreas bajo monitoreo. Incluye tarjetas de acopio total, estado vegetativo y costo promedio por hectárea, junto con accesos al padrón de socios, mapa de riesgo y matriz de costos.

En la captura se presenta un acopio de 19.4 toneladas, frente a una meta de 210 toneladas, y un costo promedio de S/ 2,432.05 por hectárea. También se observa un espacio para la tendencia temporal del NDVI, todavía sin una serie dibujada, y un resumen de calidad de 4 lotes evaluados.

El menú lateral organiza los accesos a padrón, salud de parcelas, costos, certificados, alertas y reportes de plagas. Los indicadores corresponden al entorno de demostración; la integración y validación de los flujos de este perfil siguen en desarrollo.

![Panel de control de la cooperativa](assets/img/chapter-5/app-angular/img-2.1.png)

---

##### 3. Ingeniero agrónomo

El perfil del ingeniero agrónomo, representado por Ing. Juan A. Morales, presenta una interfaz orientada a la atención de reportes de plagas, inspecciones de campo y prescripciones técnicas. Este segmento continúa en desarrollo; la captura muestra su navegación y el estado inicial de la bandeja de atención.

###### 3.1. Bandeja de diagnóstico

La pantalla Diagnosis Inbox presenta la bandeja de reportes del ingeniero agrónomo. En la evidencia se muestra el mensaje “No reports”, correspondiente al estado de la interfaz cuando no hay reportes disponibles para mostrar.

La pantalla incluye accesos a Field Inspections y Prescription History. El menú lateral reúne las opciones de reportes de plagas, inspecciones, prescripciones técnicas, salud del cultivo y alertas agrícolas.

Esta captura documenta la estructura del perfil y su estado vacío. La evidencia de atención de casos, registro de inspecciones y emisión de prescripciones se incorporará conforme avance el desarrollo.

![Bandeja de diagnóstico](assets/img/chapter-5/app-angular/img-3.1.png)

##### Evidencia Funcional: Video Demostrativo de Navegación

Para evidenciar el funcionamiento de la Web Application de SumaqAgro, se presenta un video demostrativo de la navegación entre las vistas de Angular y la interacción con los componentes de la aplicación. El recorrido muestra el dashboard del agricultor independiente, la gestión y delimitación de parcelas, la consulta de indicadores NDVI/NDWI, los gastos de campaña y la bandeja de reportes de plagas. También presenta el cambio de idioma y los avances de las interfaces del director de cooperativa y del ingeniero agrónomo.

* **Vista Previa del Video:**

![Vista Previa del Video Demostrativo](assets/img/chapter-5/img-about-the-product-app.png)

* **Enlace de Reproducción (Microsoft Stream):** [Video "Video de Exposición AV1"](https://upcedupe-my.sharepoint.com/personal/u202422128_upc_edu_pe/_layouts/15/stream.aspx?id=%2Fpersonal%2Fu202422128%5Fupc%5Fedu%5Fpe%2FDocuments%2FRecording%2D20261009%5F092557%2Ewebm&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0&ga=1&referrer=StreamWebApp%2EWeb&referrerScenario=AddressBarCopied%2Eview%2E418bacb5%2D22ff%2D4d75%2Daa54%2Db24e02149c8b)


#### 5.2.2.6. Services Documentation Evidence for Sprint Review

En esta sección se presenta la documentación de los servicios utilizados por la Web Application de **SumaqAgro** durante el **Sprint 2**. Para esta iteración se empleó una **Fake REST API implementada con `json-server`**, que administra los datos de demostración almacenados en `server/db.json`.

La aplicación Angular consume estos servicios mediante `HttpClient` y las clases de la capa **infrastructure** de cada Bounded Context. Esta integración permite desarrollar las operaciones de consulta, registro, actualización y eliminación de información mientras se prepara el backend definitivo en **Spring Boot**.

##### Configuración y ejecución del servicio

La Fake REST API se inicia mediante el comando definido en `package.json`:

```bash
npm run api
```

Este comando ejecuta:

```bash
json-server --watch server/db.json --routes server/routes.json --port 3000
```

El archivo `server/routes.json` establece el prefijo de acceso a los recursos:

```json
{
  "/api/v1/*": "/$1"
}
```

Las direcciones de conexión configuradas en el proyecto son:

| Entorno | URL base | Archivo de configuración |
| :--- | :--- | :--- |
| Desarrollo local | `http://localhost:3000/api/v1` | `src/environments/environment.development.ts` |
| Producción | `https://sumaqagro-fake-api.onrender.com/api/v1` | `src/environments/environment.ts` |

La aplicación Angular se ejecuta en una terminal independiente mediante `npm start`.

##### Documentación de endpoints

Los endpoints se organizan según los Bounded Contexts del proyecto. Las rutas indicadas son relativas a la URL base y los métodos corresponden a las operaciones expuestas por las fachadas de infraestructura del frontend.

| Bounded Context | Endpoint | Métodos HTTP | Descripción |
| :--- | :--- | :--- | :--- |
| Profiles | `/profiles` | GET, PUT | Consulta y actualización del perfil del agricultor. |
| Profiles | `/cooperatives` | GET, PUT | Consulta y actualización de la cooperativa. |
| Profiles | `/cooperative-members` | GET | Consulta de socios de una cooperativa. |
| Profiles | `/cooperative-dashboards` | GET | Consulta de los datos del panel institucional. |
| Profiles | `/agronomist-assignments` | GET, POST, PUT, DELETE | Consulta y gestión de asignaciones de ingenieros agrónomos. |
| Field Management | `/field-plots` | GET, POST, PUT, DELETE | Consulta, registro, actualización y eliminación de parcelas. |
| Field Management | `/crop-campaigns` | GET, POST, PUT | Consulta, registro y actualización de campañas agrícolas. |
| Field Management | `/campaign-ledgers` | GET, POST, PUT | Consulta, registro y actualización del libro de gastos de una campaña. |
| Crop Health | `/satellite-observations` | GET | Consulta de observaciones e indicadores registrados por parcela. |
| Crop Health | `/agroclimatic-alerts` | GET | Consulta de alertas agroclimáticas por región. |
| Crop Health | `/climate-forecasts` | GET | Consulta de pronósticos climáticos por región. |
| Crop Health | `/pest-reports` | GET, POST, PUT, DELETE | Consulta, registro, actualización y eliminación de reportes de plagas. |
| Crop Health | `/field-inspections` | GET, POST, PUT | Consulta, programación y actualización de inspecciones de campo. |
| Crop Health | `/technical-prescriptions` | GET, POST | Consulta y emisión de prescripciones técnicas. |
| Harvest Certification | `/harvest-batches` | GET, POST, PUT | Consulta, registro y actualización de lotes de cosecha. |
| Harvest Certification | `/quality-certificates` | GET, POST | Consulta y emisión de certificados de calidad, incluyendo búsqueda por token. |

Las operaciones sobre registros individuales utilizan el identificador del recurso en la ruta, por ejemplo, `PUT /api/v1/pest-reports/{id}` y `DELETE /api/v1/pest-reports/{id}`.

La trazabilidad pública se construye en Angular mediante la consulta del certificado por su token y del lote de cosecha asociado. En la implementación actual no se utiliza una colección independiente `/public-traceability` en `server/db.json`.

##### Consultas mediante parámetros

El frontend utiliza parámetros de consulta para recuperar los registros asociados a un propietario, parcela, campaña, región o reporte.

| Petición | Descripción |
| :--- | :--- |
| `GET /api/v1/field-plots?ownerUserId=1` | Consulta las parcelas de un propietario. |
| `GET /api/v1/crop-campaigns?plotId=1` | Consulta las campañas de una parcela. |
| `GET /api/v1/campaign-ledgers?campaignId=1` | Consulta el libro de gastos de una campaña. |
| `GET /api/v1/satellite-observations?plotId=1` | Consulta las observaciones registradas de una parcela. |
| `GET /api/v1/pest-reports?plotId=1` | Consulta los reportes de plagas de una parcela. |
| `GET /api/v1/agroclimatic-alerts?region=Ayacucho` | Consulta las alertas registradas para Ayacucho. |
| `GET /api/v1/field-inspections?reportId=1` | Consulta las inspecciones asociadas a un reporte. |
| `GET /api/v1/technical-prescriptions?reportId=1` | Consulta las prescripciones asociadas a un reporte. |

##### Estructura de los datos intercambiados

Los recursos se intercambian en formato **JSON**. Las consultas a colecciones retornan arreglos, mientras que la consulta mediante `/{id}` retorna un objeto individual. Cuando una consulta no contiene registros, la API retorna un arreglo vacío `[]`.

El siguiente objeto corresponde a un registro de demostración existente en la colección `satellite-observations` de `server/db.json`:

```json
{
  "id": 1,
  "plotId": 1,
  "date": "2026-09-12T10:00:00Z",
  "ndviMean": 0.74,
  "ndwiMean": 0.65,
  "surfaceTempKelvin": 295.15,
  "cloudCoveragePercent": 5,
  "stressAreaHectares": 0.4,
  "recommendation": "Check the area for signs of the onset of wilting."
}
```

Este registro relaciona una observación con una parcela e incluye la fecha de captura, los indicadores NDVI y NDWI, la temperatura superficial, la cobertura nubosa, el área de estrés y una recomendación.

Los valores son datos simulados para la demostración. En el archivo revisado, las colecciones `agroclimatic-alerts`, `climate-forecasts`, `field-inspections` y `technical-prescriptions` se encuentran vacías.

##### Integración con el frontend Angular

El archivo `app.config.ts` habilita la comunicación HTTP mediante `provideHttpClient(withFetch())`. Las fachadas `ProfilesApi`, `FieldManagementApi`, `CropHealthApi` y `HarvestCertificationApi` agrupan las operaciones de acceso a datos de sus respectivos contextos.

La clase compartida `BaseApiEndpoint` implementa las operaciones generales de consulta, creación, actualización y eliminación. Los **assemblers** convierten los recursos JSON recibidos en entidades de dominio y transforman las entidades en recursos para enviarlos a la API.

Por ejemplo, el método `CropHealthApi.getObservationsByPlot(plotId)` delega la consulta al endpoint de observaciones satelitales. Este envía una petición GET con el parámetro `plotId` y transforma los registros recibidos en entidades `SatelliteObservation`.

La documentación presentada corresponde a la configuración y los contratos implementados en el proyecto para la Fake REST API del Sprint 2.

---

#### 5.2.2.7. Software Deployment Evidence for Sprint Review

Durante el **Sprint 2**, el equipo **Dymbia** realizó la configuración y publicación de la **Web Application de SumaqAgro** en **Firebase Hosting** y de la **Fake REST API** en **Render**. Estas actividades permitieron disponer de un entorno publicado para presentar las funcionalidades desarrolladas y consumir los datos de demostración.

El proceso incluyó la configuración de los recursos en ambos proveedores, la vinculación del proyecto con GitHub, la definición de los comandos de compilación y ejecución, y la configuración de la conexión entre el frontend y la API.

El alcance de despliegue de esta iteración comprende la **Web Application** y la **Fake REST API**. La Landing Page corresponde al Sprint 1, mientras que el backend definitivo en Spring Boot se desarrollará en una iteración posterior.

##### Despliegue de la Web Application en Firebase Hosting

Se configuró el proyecto **`sumaqagro-appweb`** en Firebase y se habilitó **Firebase Hosting** para publicar los archivos generados por Angular.

La vinculación del proyecto local se encuentra definida en `.firebaserc`. Por su parte, `firebase.json` establece el directorio de publicación `dist/sumaqAgro-appweb/browser` y una redirección hacia `index.html`, necesaria para que Angular gestione sus rutas internas al ingresar directamente a una vista o recargar la página.

El procedimiento de despliegue documentado en el repositorio utiliza **Firebase CLI**. La preparación del entorno requiere instalar la herramienta y autenticar una cuenta con acceso al proyecto:

```bash
npm install -g firebase-tools
firebase login
```

Posteriormente, la aplicación se compila y publica mediante:

```bash
npm run build
firebase deploy --only hosting
```

La Web Application dispone de los siguientes dominios:

| Tipo | Dirección |
| :--- | :--- |
| Dominio principal | https://sumaqagro-appweb.web.app |
| Dominio alternativo | https://sumaqagro-appweb.firebaseapp.com |

###### Evidencia de publicación en Firebase Hosting

La captura del panel de Firebase Hosting muestra el proyecto `sumaqagro-appweb`, sus dominios y el historial de versiones publicadas. Se observan publicaciones realizadas el **8 y 9 de octubre de 2026**, con la versión **`4e43fc`** identificada como la versión actual en la evidencia.

![Firebase](assets/img/chapter-5/sprint-2/firebase-angular.jpeg)

##### Despliegue de la Fake REST API en Render

Se configuró un **Web Service** denominado **`sumaqAgro-fake-api`** en Render, utilizando el entorno de ejecución **Node** y una instancia gratuita.

El servicio se vinculó con el repositorio **`dymbia-opensource/sumaqAgro-appweb`** y la rama **`develop`**. La configuración documentada en el proyecto es la siguiente:

| Parámetro | Configuración |
| :--- | :--- |
| Tipo de servicio | Web Service |
| Nombre | `sumaqAgro-fake-api` |
| Repositorio | `dymbia-opensource/sumaqAgro-appweb` |
| Rama | `develop` |
| Entorno de ejecución | Node |
| Comando de instalación | `npm install --include=dev` |
| Comando de inicio | `npx json-server server/db.json --routes server/routes.json --host 0.0.0.0 --port $PORT` |
| Tipo de instancia | Free |
| Actualización | Auto-Deploy |

El comando de inicio utiliza el puerto asignado por Render y permite atender peticiones externas. La Fake REST API administra los datos de `server/db.json` y utiliza `server/routes.json` para exponer los recursos bajo el prefijo `/api/v1`.

La URL base configurada para el servicio es:

**https://sumaqagro-fake-api.onrender.com/api/v1/db**

![fake-api](assets/img/chapter-5/sprint-2/img-fake-api.png)

###### Evidencia de publicación en Render

La captura presenta el servicio en estado **Live**, vinculado a la rama `develop` y al commit **`227c66d`**. El historial muestra despliegues activados mediante **Auto-Deploy**, asociados a la integración de funcionalidades en el repositorio.

Esta evidencia permite observar la automatización del despliegue de la Fake REST API a partir de las actualizaciones de la rama configurada.

![Render](assets/img/chapter-5/sprint-2/render-angular.jpeg)

##### Integración del frontend con la API publicada

El archivo `src/environments/environment.ts` establece la dirección utilizada por Angular para consumir la Fake REST API en producción:

```typescript
platformProviderApiBaseUrl: 
  'https://sumaqagro-fake-api.onrender.com/api/v1'
``` 

Esta configuración conecta la Web Application alojada en **Firebase Hosting** con el servicio publicado en **Render**. Para el desarrollo local, `environment.development.ts` utiliza la dirección `http://localhost:3000/api/v1`.

La publicación del frontend se realiza mediante Firebase CLI, mientras que la actualización de la Fake REST API se automatiza mediante la integración de Render con GitHub.

---


#### 5.2.2.8. Team Collaboration Insights during Sprint

En esta sección se describe la colaboración del equipo **Dymbia** durante la implementación de la **Web Application de SumaqAgro** correspondiente al **Sprint 2**. Se presentan las evidencias de participación mediante el historial de commits y los analíticos de contribución disponibles en GitHub.

Las actividades se distribuyeron entre la configuración de Angular, los componentes compartidos, el modelado de entidades, la integración con la Fake REST API y el desarrollo de las interfaces de los Bounded Contexts **Profiles**, **Field Management**, **Crop Health** y **Harvest Certification**.

El trabajo se organizó mediante ramas `feature/*`, cuyas implementaciones se integraron en `develop`. Posteriormente, la versión del producto se consolidó en `main` mediante la integración de la rama `release/v1.0.0`. Este flujo permitió desarrollar funcionalidades en paralelo y mantener la trazabilidad de las entregas.

##### Analíticos de participación del equipo

En la imagen se evidencia las contribuciones registradas por cada integrante. Esta evidencia se utiliza para identificar la participación del equipo en la implementación y complementar la distribución de responsabilidades definida en la matriz Leadership-and-Collaboration Matrix del sprint.

![Insights → Contributors](assets/img/chapter-5/sprint-2/img-collaboration.png)


### 5.2.3. Sprint 3

El **Sprint 3** marca el inicio del desarrollo de los **RESTful Web Services** de **SumaqAgro**, construidos con **Java 21**, **Spring Boot**, **Spring Data JPA**, **MySQL** y documentados con **SpringDoc OpenAPI / Swagger UI**. El backend se organiza por *Bounded Contexts* (**IAM**, **Profiles**, **Subscriptions**, **Farming**, **Crop** y **Certification**) y, dentro de cada uno, en las capas *domain*, *application*, *infrastructure* e *interfaces*, siguiendo los patrones tácticos de Domain-Driven Design: agregados, *value objects*, comandos, consultas, eventos de dominio, puertos de repositorio y fachadas de contexto (ACL). En paralelo, la **Web Application** en Angular evolucionó hacia su segunda versión con los flujos de autenticación, suscripción, perfil y cooperativa, y la **Landing Page** se reestructuró en su tercera versión. El sprint abarca las semanas 9 a 12 del ciclo y culmina con la entrega AV2.

#### 5.2.3.1. Sprint Planning 3

En esta sección se especifican los aspectos principales de la reunión de planificación del **Sprint 3** (*Sprint Planning Meeting*) del equipo **Dymbia**. La reunión se realizó al inicio de la iteración registrada en Jira (19 de octubre al 13 de noviembre de 2026) y en ella se incorporaron al equipo **Salcedo Muñoz, Andy Alfredo Hipolito** y **Yarleque Ruiz, Cristina Marcela**. El equipo revisó los resultados del Sprint 2, acordó las mejoras de su forma de trabajo y seleccionó del Product Backlog las historias de usuario y técnicas necesarias para reemplazar la Fake REST API por un backend propio con persistencia real.

| Sprint # | Sprint 3 |
| :--- | :--- |
| **Sprint Planning Background** | |
| Date | 2026-10-19 |
| Time | 10:00 AM |
| Location | Discord / GitHub / Jira Software |
| Prepared By | Sanca Condori, Miguel |
| Attendees (to planning meeting) | Salcedo Muñoz, Andy Alfredo Hipolito / Sanca Condori, Miguel / Solorzano Sullca, Benjamin / Tejada Pumacayo, Yamil Jared / Yarleque Ruiz, Cristina Marcela |
| Sprint 2 Review Summary | Se publicó la primera versión de la Web Application en Angular (`v1.0.0`, y su *patch* `v1.0.1` con el CHANGELOG y la guía de contribución) en Firebase Hosting, conectada a una Fake REST API (`json-server`) desplegada en Render. Asimismo, se publicó la nueva versión de la Landing Page (`v2.0.0` y `v2.0.1`) con las secciones reorganizadas, contenido i18n en español e inglés y la sección del video About-the-Team. Se demostraron los flujos de Crop Health (visor Leaflet con NDVI/NDWI, alertas regionales, reportes de plagas, bandeja, inspecciones y recetas agronómicas) y las vistas iniciales de Field Management, Profiles y Harvest Certification. Quedaron pendientes la preparación de alertas demo por región (TSK-08), la validación integrada del circuito productor–ingeniero (TSK-22) y la consistencia de los datos relacionados (TSK-23). |
| Sprint 2 Retrospective Summary | El equipo valoró la organización por Bounded Contexts y el uso de GitFlow con Conventional Commits. Como oportunidades de mejora se identificó que la Fake REST API no permite validar reglas de negocio ni seguridad, que los datos demo entre contextos eran inconsistentes y que la integración de ramas se concentró al final del sprint. Se acordó: (1) modelar primero el dominio de cada contexto en el backend antes de exponer endpoints, (2) separar el modelo de dominio de las entidades de persistencia JPA mediante puertos de repositorio, (3) integrar a `develop` cada funcionalidad terminada sin esperar al cierre y (4) asignar a cada nuevo integrante un Bounded Context completo para acelerar su incorporación. |
| **Sprint Goal & User Stories** | |
| Sprint 3 Goal | Our focus is on delivering the first deployed version of the SumaqAgro RESTful Web Services, built with Spring Boot, Spring Data JPA and MySQL and documented with OpenAPI/Swagger, and connecting it to a new version of the Angular Web Application. Users will sign up, sign in and sign out with JWT-based authentication, producers will register plots with validated GPS boundaries and open crop campaigns, farmers will report pests and consult regional agroclimatic alerts, users will update their profiles and register cooperatives, and collection centers will register harvest batches, all stored in a real database instead of the fake API. We believe it delivers a secure and persistent foundation for the platform. This will be confirmed when the Web Services v1.0.0 and the Web App v2.0.0 are publicly deployed, every endpoint is documented in Swagger UI, and these flows work end to end. |
| Sprint 3 Velocity | 111 Story Points |
| Sum of Story Points | 111 Story Points |

A continuación, se detallan las historias de usuario y técnicas comprometidas en el Sprint 3, tal como fueron registradas en el tablero de Jira, agrupadas por el Bounded Context que las implementa:

| Bounded Context | Story ID | Título | Story Points |
| :--- | :---: | :--- | :---: |
| IAM | **US-10** | Registro de usuario en la plataforma (Sign Up) | 3 |
| IAM | **US-11** | Inicio de sesión seguro (Sign In) | 3 |
| IAM | **US-14** | Cierre de sesión seguro (Sign Out) | 2 |
| IAM | **TS-02** | Servicio de autenticación JWT y Spring Security | 8 |
| Subscriptions | **US-12** | Consulta de catálogo de planes durante Onboarding | 2 |
| Subscriptions | **US-22** | Control de cuota de parcelas según el plan | 2 |
| Profiles | **US-16** | Actualización de perfil y datos de contacto | 3 |
| Profiles | **US-17** | Registro e institucionalización de Cooperativa | 5 |
| Profiles | **US-18** | Adición de socios al padrón de la cooperativa | 5 |
| Profiles | **US-21** | Directorio consolidado de miembros y predios | 3 |
| Farming | **US-29** | Delimitación de polígono mediante coordenadas GPS | 8 |
| Farming | **US-32** | Apertura de nueva campaña agrícola | 3 |
| Farming | **US-33** | Seleccionar tipo de cultivo (Papa / Café) | 3 |
| Farming | **US-34** | Especificación de variedad de semilla utilizada | 3 |
| Farming | **US-37** | Registro de egresos en insumos y fertilizantes | 3 |
| Farming | **US-38** | Registro de egresos en jornales y mano de obra | 3 |
| Farming | **US-39** | Registro de egresos en transporte y flete rural | 3 |
| Crop | **TS-01** | Integración con API externa de AgroMonitoring | 8 |
| Crop | **US-42** | Programación de consulta de telemetría satelital | 5 |
| Crop | **US-43** | Ingesta de imágenes satelitales y descarte por nubes | 5 |
| Crop | **US-45** | Consulta de alertas agroclimáticas registradas por región | 5 |
| Crop | **US-48** | Registro de reportes textuales de plagas o enfermedades | 5 |
| Crop | **US-52** | Confirmación de aplicación de tratamiento fitosanitario | 3 |
| Certification | **US-54** | Registro de lote de cosecha ingresado a acopio | 3 |
| Certification | **US-56** | Extracción y registro de muestra representativa | 3 |
| Certification | **US-59** | Asignación de score de calidad global del lote | 5 |
| Transversal | **TS-06** | Documentación de API RESTful con OpenAPI y Swagger UI | 5 |
| Transversal | **US-05** | Demostración del producto mediante video | 2 |
| **Total** | | | **111** |

Asimismo, el equipo acordó las versiones que cada producto debe alcanzar al cierre del Sprint 3, aplicando **Semantic Versioning 2.0.0** y publicándolas mediante ramas `release/*` integradas en `main`:

| Producto | Repositorio | Versión al cierre del Sprint 2 | Versión objetivo del Sprint 3 |
| :--- | :--- | :---: | :---: |
| Report | `dymbia-opensource/sumaqAgro-report` | 2.0.0 | 3.0.0 |
| Landing Page (Website) | `dymbia-opensource/sumaqAgro-landing-page` | 2.0.1 | 3.0.0 |
| Web Application | `dymbia-opensource/sumaqAgro-appweb` | 1.0.1 | 2.0.0 |
| RESTful Web Services | `dymbia-opensource/sumaqAgro-backend` | — | 1.0.0 |

---

#### 5.2.3.2. Aspect Leaders and Collaborators

En esta sección se presenta la matriz **Leadership-and-Collaboration Matrix (LACX)** correspondiente al **Sprint 3**. Dado que el alcance de esta iteración se centra en los RESTful Web Services, los aspectos considerados corresponden a los **Bounded Contexts** del backend, junto con su contraparte en la Web Application. Esta organización permite que cada integrante asuma la responsabilidad completa de un contexto (dominio, persistencia, servicios de aplicación, endpoints REST y documentación OpenAPI), lo cual también facilitó la incorporación de los dos nuevos integrantes del equipo.

Los aspectos considerados en el Sprint 3 son los siguientes:

* **Aspect 1 — IAM & Subscriptions:** registro e inicio de sesión con JWT, protección de rutas con Spring Security, catálogo de planes y suscripción (US-10, US-11, US-14, US-12, TS-02).
* **Aspect 2 — Farming & Shared Kernel:** parcelas, linderos GPS, cuota de parcelas, campañas agrícolas y egresos, además del *shared kernel* (manejo de errores, patrón `Result`, auditoría JPA, configuración e internacionalización de mensajes) (US-22, US-29, US-32, US-33, US-34, US-37, US-38, US-39).
* **Aspect 3 — Crop & AgroMonitoring:** observaciones satelitales, integración con AgroMonitoring, alertas agroclimáticas, reportes de plagas, inspecciones y recetas técnicas (TS-01, US-42, US-43, US-45, US-48, US-52).
* **Aspect 4 — Profiles & Cooperatives:** perfiles de usuario, cooperativas, padrón de socios, asignación de agrónomos y fachada del contexto para otros Bounded Contexts (US-16, US-17, US-18, US-21).
* **Aspect 5 — Certification:** lotes de cosecha, pesaje, muestreo, calificación de calidad, certificados y trazabilidad pública (US-54, US-56, US-59).

La documentación OpenAPI (TS-06) y el video demostrativo (US-05) son responsabilidad compartida: cada líder documenta en Swagger UI los endpoints de su aspecto.

##### Leadership-and-Collaboration Matrix (LACX) — Sprint 3

| Team Member (Last Name, First Name) | GitHub Username | Aspect 1: IAM & Subscriptions | Aspect 2: Farming & Shared Kernel | Aspect 3: Crop & AgroMonitoring | Aspect 4: Profiles & Cooperatives | Aspect 5: Certification |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: |
| **Salcedo Muñoz, Andy Alfredo Hipolito** | `Andy777sdw` | **C** | **C** | **C** | **C** | **L** |
| **Sanca Condori, Miguel** | `MiguelSanca` | **C** | **L** | **C** | **C** | **C** |
| **Solorzano Sullca, Benjamin** | `benjass2` | **L** | **C** | **C** | **C** | **C** |
| **Tejada Pumacayo, Yamil Jared** | `YamilTejada` | **C** | **C** | **L** | **C** | **C** |
| **Yarleque Ruiz, Cristina Marcela** | `Cris06luna` | **C** | **C** | **C** | **L** | **C** |

*Leyenda: **L** = Leader (Líder del Aspecto Técnico) | **C** = Collaborator (Colaborador en el Desarrollo)*

---

#### 5.2.3.3. Sprint Backlog 3

El objetivo principal del **Sprint 3** es construir y documentar la primera versión de los RESTful Web Services de SumaqAgro con persistencia en MySQL y autenticación JWT, y adaptar la Web Application a los nuevos flujos de autenticación, suscripción, perfil y cooperativa. Las historias seleccionadas se descompusieron en **52 tareas** (201 horas), complementadas con **3 tareas transversales** (12 horas), sumando una estimación total de **213 horas**. El seguimiento se realizó en el tablero de Jira Software del proyecto.

**URL Público del Tablero:**
[Tablero Jira - SumaqAgro (Sprint 3)](https://sumaq-agro.atlassian.net/jira/software/c/projects/DSB/boards/2)

El estado de cada tarea refleja el avance registrado en los repositorios al cierre del sprint: **Done** indica que la funcionalidad está integrada en la rama `develop`; **To-Review** indica que la funcionalidad está publicada en su rama `feature/*` y pendiente de revisión e integración; **In-Process** indica trabajo iniciado sin rama publicada completa; y **To-do** indica trabajo aún no iniciado.

| Sprint # | Sprint 3 | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :---: | :--- | :---: |
| **Story Id** | **Story Title** | **Task Id** | **Task Title** | **Task Description** | **Estimation (Hours)** | **Assigned To** | **Status** |
| **TS-02** | Servicio de autenticación JWT y Spring Security | **TSK-01** | Configuración base del backend | Crear el proyecto Spring Boot, organizar las dependencias Maven y centralizar las versiones. | 3 h | Solorzano Sullca, Benjamin | Done |
| **TS-02** | Servicio de autenticación JWT y Spring Security | **TSK-02** | Modelo de usuario y roles | Modelar el agregado `User`, la entidad `Role` y sus repositorios; sembrar los roles soportados al iniciar. | 5 h | Solorzano Sullca, Benjamin | Done |
| **TS-02** | Servicio de autenticación JWT y Spring Security | **TSK-03** | Protección de rutas con JWT | Implementar el servicio de tokens JWT y el filtro *bearer* de Spring Security para proteger los endpoints. | 5 h | Solorzano Sullca, Benjamin | Done |
| **US-10** | Registro de usuario en la plataforma (Sign Up) | **TSK-04** | Endpoint de registro | Implementar el comando de registro con contraseña cifrada (BCrypt), crear el perfil inicial y exponer `POST /api/v1/users`. | 4 h | Solorzano Sullca, Benjamin | Done |
| **US-10** | Registro de usuario en la plataforma (Sign Up) | **TSK-05** | Vista de registro en la Web App | Construir el formulario de registro con nombres del perfil, confirmación de contraseña y traducciones. | 4 h | Solorzano Sullca, Benjamin | Done |
| **US-11** | Inicio de sesión seguro (Sign In) | **TSK-06** | Endpoint de inicio de sesión | Implementar el comando de inicio de sesión y exponer `POST /api/v1/tokens` que devuelve el token JWT. | 3 h | Solorzano Sullca, Benjamin | Done |
| **US-11** | Inicio de sesión seguro (Sign In) | **TSK-07** | Sesión y guards en la Web App | Implementar el store de autenticación, el interceptor HTTP, los *guards* de sesión y rol y la vista de inicio de sesión. | 5 h | Solorzano Sullca, Benjamin | Done |
| **US-14** | Cierre de sesión seguro (Sign Out) | **TSK-08** | Cierre de sesión | Separar el cierre de sesión del estado del layout, invalidar sesiones expiradas o rechazadas y limpiar el almacenamiento local. | 2 h | Solorzano Sullca, Benjamin | Done |
| **US-12** | Consulta de catálogo de planes durante Onboarding | **TSK-09** | Modelo de suscripciones en la Web App | Definir las entidades `Plan`, `Subscription` y `Payment`, sus comandos, *assemblers*, endpoints y el store de suscripciones. | 6 h | Yarleque Ruiz, Cristina Marcela | Done |
| **US-12** | Consulta de catálogo de planes durante Onboarding | **TSK-10** | Vistas de catálogo y checkout | Construir el catálogo de planes, el flujo de selección y pago y el historial de facturación. | 5 h | Salcedo Muñoz, Andy Alfredo Hipolito | Done |
| **US-12** | Consulta de catálogo de planes durante Onboarding | **TSK-11** | Catálogo de planes en el backend | Modelar `Plan`, `Subscription` y `SubscriptionPeriod`, sembrar los planes y exponer el catálogo, la suscripción vigente y el checkout. | 5 h | Solorzano Sullca, Benjamin | To-Review |
| **US-22** | Control de cuota de parcelas según el plan | **TSK-12** | Validación de cuota en el backend | Rechazar el registro de parcelas cuando el propietario alcanza la cuota de su plan. | 2 h | Sanca Condori, Miguel | Done |
| **US-22** | Control de cuota de parcelas según el plan | **TSK-13** | Cuota activa en la Web App | Usar la cuota de la suscripción activa al registrar parcelas y restringir el acceso sin suscripción vigente. | 3 h | Solorzano Sullca, Benjamin | Done |
| **US-16** | Actualización de perfil y datos de contacto | **TSK-14** | Agregado y persistencia de perfiles | Definir los *value objects* y el agregado `Profile` con su repositorio y persistencia JPA. | 5 h | Yarleque Ruiz, Cristina Marcela | Done |
| **US-16** | Actualización de perfil y datos de contacto | **TSK-15** | Endpoints de perfil | Exponer `GET` y `PUT /api/v1/profiles/user/{userId}` con sus recursos y *assemblers*. | 3 h | Yarleque Ruiz, Cristina Marcela | Done |
| **US-16** | Actualización de perfil y datos de contacto | **TSK-16** | Edición de cuenta en la Web App | Permitir la edición en línea de los datos personales y de contacto del productor, con pruebas unitarias. | 3 h | Solorzano Sullca, Benjamin | Done |
| **US-17** | Registro e institucionalización de Cooperativa | **TSK-17** | Agregado Cooperative | Modelar el agregado `Cooperative` con socios e invitaciones y su repositorio. | 4 h | Yarleque Ruiz, Cristina Marcela | Done |
| **US-17** | Registro e institucionalización de Cooperativa | **TSK-18** | Endpoint de cooperativas | Exponer `POST /api/v1/cooperatives` con sus recursos de solicitud y respuesta. | 3 h | Yarleque Ruiz, Cristina Marcela | Done |
| **US-17** | Registro e institucionalización de Cooperativa | **TSK-19** | Flujo de registro de cooperativa | Construir en la Web App el flujo de registro de la cooperativa con validaciones. | 3 h | Solorzano Sullca, Benjamin | Done |
| **US-18** | Adición de socios al padrón de la cooperativa | **TSK-20** | Endpoints de socios e invitaciones | Exponer `POST /api/v1/cooperatives/{cooperativeId}/members` y `/invitations`. | 4 h | Yarleque Ruiz, Cristina Marcela | Done |
| **US-18** | Adición de socios al padrón de la cooperativa | **TSK-21** | Registro de socios en la Web App | Registrar socios, editar sus datos y vincular cuentas demo de productores. | 4 h | Solorzano Sullca, Benjamin | Done |
| **US-21** | Directorio consolidado de miembros y predios | **TSK-22** | Asignación de agrónomos y fachada | Implementar `AgronomistAssignment`, sus endpoints y la fachada `ProfilesContextFacade` para otros contextos. | 5 h | Yarleque Ruiz, Cristina Marcela | Done |
| **US-21** | Directorio consolidado de miembros y predios | **TSK-23** | Expedientes de socios | Mostrar expedientes navegables de socios con parcelas vinculadas, certificados e historial de acopio. | 4 h | Solorzano Sullca, Benjamin | Done |
| **US-21** | Directorio consolidado de miembros y predios | **TSK-24** | Consulta del directorio en el backend | Exponer la consulta del directorio consolidado de socios y parcelas de una cooperativa. | 3 h | Yarleque Ruiz, Cristina Marcela | To-do |
| **US-29** | Delimitación de polígono mediante coordenadas GPS | **TSK-25** | Agregado FieldPlot | Modelar `FieldPlot` y `PlotStatus`, sus consultas, servicios y `POST`/`GET /api/v1/field-plots`. | 5 h | Sanca Condori, Miguel | Done |
| **US-29** | Delimitación de polígono mediante coordenadas GPS | **TSK-26** | Linderos GPS | Definir `GeoCoordinate` y `PlotBoundary`, calcular el área y exponer `PUT /api/v1/field-plots/{fieldPlotId}/boundary`. | 5 h | Sanca Condori, Miguel | Done |
| **US-29** | Delimitación de polígono mediante coordenadas GPS | **TSK-27** | Línea base de suelo | Registrar textura y línea base de suelo de la parcela mediante `PUT /api/v1/field-plots/{fieldPlotId}/soil-baseline`. | 3 h | Sanca Condori, Miguel | Done |
| **US-32** | Apertura de nueva campaña agrícola | **TSK-28** | Agregado CropCampaign | Modelar `CropCampaign` con fecha de siembra y cierre, su repositorio y adaptador JPA que publica eventos. | 4 h | Sanca Condori, Miguel | Done |
| **US-32** | Apertura de nueva campaña agrícola | **TSK-29** | Endpoints de campañas | Exponer `POST /api/v1/crop-campaigns`, consultas, cierres y campañas por parcela validando una sola campaña en curso. | 4 h | Sanca Condori, Miguel | Done |
| **US-33** | Seleccionar tipo de cultivo (Papa / Café) | **TSK-30** | Tipo de cultivo | Definir `CropType` y permitir seleccionarlo mediante `PATCH /api/v1/crop-campaigns/{cropCampaignId}`. | 2 h | Sanca Condori, Miguel | Done |
| **US-34** | Especificación de variedad de semilla utilizada | **TSK-31** | Variedad de semilla | Definir `SeedVariety` con su convertidor y permitir especificarla en la campaña en curso. | 2 h | Sanca Condori, Miguel | Done |
| **US-37** | Registro de egresos en insumos y fertilizantes | **TSK-32** | Libro de campaña en el backend | Modelar `CampaignLedger` y `ExpenseEntry` con su persistencia. | 5 h | Sanca Condori, Miguel | To-do |
| **US-38** | Registro de egresos en jornales y mano de obra | **TSK-33** | Endpoint de egresos por categoría | Exponer el registro de egresos por categoría (insumos, mano de obra y transporte) en la campaña. | 4 h | Sanca Condori, Miguel | To-do |
| **US-39** | Registro de egresos en transporte y flete rural | **TSK-34** | Costos de campaña en la Web App | Calcular costos de campaña y precio de equilibrio desde las entidades y el store. | 3 h | Sanca Condori, Miguel | Done |
| **TS-01** | Integración con API externa de AgroMonitoring | **TSK-35** | Registro de polígonos en AgroMonitoring | Implementar el servicio de monitoreo que registra en AgroMonitoring el polígono delimitado y lo vincula a la parcela. | 5 h | Sanca Condori, Miguel | Done |
| **TS-01** | Integración con API externa de AgroMonitoring | **TSK-36** | Importación de imágenes satelitales | Implementar `AgroMonitoringSatelliteImagery` y el comando de importación de observaciones. | 5 h | Tejada Pumacayo, Yamil Jared | To-Review |
| **US-42** | Programación de consulta de telemetría satelital | **TSK-37** | Consulta programada | Programar la consulta periódica de nuevas imágenes para las parcelas vinculadas. | 3 h | Tejada Pumacayo, Yamil Jared | To-do |
| **US-43** | Ingesta de imágenes satelitales y descarte por nubes | **TSK-38** | Agregado SatelliteObservation | Modelar la observación con `NDVI`, `NDWI` y `Percentage`, su persistencia y `GET` de observaciones. | 5 h | Tejada Pumacayo, Yamil Jared | Done |
| **US-43** | Ingesta de imágenes satelitales y descarte por nubes | **TSK-39** | Descarte por nubosidad | Evitar importaciones duplicadas mediante clave de importación y descartar imágenes con nubosidad alta. | 3 h | Tejada Pumacayo, Yamil Jared | To-Review |
| **US-45** | Consulta de alertas agroclimáticas registradas por región | **TSK-40** | Alertas y pronósticos | Implementar `AgroclimaticAlert` y `ClimateForecast` con persistencia y consulta por región. | 5 h | Tejada Pumacayo, Yamil Jared | Done |
| **US-45** | Consulta de alertas agroclimáticas registradas por región | **TSK-41** | Boletines regionales | Publicar y consultar boletines regionales mediante `/api/v1/regional-bulletins`. | 4 h | Tejada Pumacayo, Yamil Jared | Done |
| **US-48** | Registro de reportes textuales de plagas o enfermedades | **TSK-42** | Agregado PestReport | Modelar el reporte con transiciones de estado, excepciones, evento `PestReportRecordedEvent` y persistencia. | 4 h | Tejada Pumacayo, Yamil Jared | Done |
| **US-48** | Registro de reportes textuales de plagas o enfermedades | **TSK-43** | Endpoints de reportes | Exponer `POST`, `GET` y `DELETE /api/v1/pest-reports`. | 3 h | Tejada Pumacayo, Yamil Jared | Done |
| **US-52** | Confirmación de aplicación de tratamiento fitosanitario | **TSK-44** | Inspecciones de campo | Programar y completar inspecciones mediante `/api/v1/field-inspections`. | 4 h | Tejada Pumacayo, Yamil Jared | Done |
| **US-52** | Confirmación de aplicación de tratamiento fitosanitario | **TSK-45** | Recetas y confirmación de aplicación | Emitir recetas técnicas y confirmar su aplicación con `PATCH /api/v1/technical-prescriptions/{id}/application`. | 4 h | Tejada Pumacayo, Yamil Jared | Done |
| **US-54** | Registro de lote de cosecha ingresado a acopio | **TSK-46** | Agregado HarvestBatch | Modelar el lote, su pesaje, persistencia y adaptador JPA que publica eventos. | 5 h | Salcedo Muñoz, Andy Alfredo Hipolito | To-Review |
| **US-54** | Registro de lote de cosecha ingresado a acopio | **TSK-47** | Endpoints de lotes | Exponer `HarvestBatchesController` para registrar y consultar lotes. | 3 h | Salcedo Muñoz, Andy Alfredo Hipolito | To-Review |
| **US-56** | Extracción y registro de muestra representativa | **TSK-48** | Registro de muestra | Implementar el comando de muestreo del lote y su validación. | 3 h | Salcedo Muñoz, Andy Alfredo Hipolito | To-Review |
| **US-59** | Asignación de score de calidad global del lote | **TSK-49** | Calificación de calidad | Implementar la graduación de papa y la catación de café, el evento `BatchGradedEvent` y su manejador. | 4 h | Salcedo Muñoz, Andy Alfredo Hipolito | To-Review |
| **US-59** | Asignación de score de calidad global del lote | **TSK-50** | Certificados y trazabilidad | Implementar `QualityCertificate`, la generación de PDF/QR y la consulta pública de trazabilidad. | 5 h | Salcedo Muñoz, Andy Alfredo Hipolito | To-Review |
| **TS-06** | Documentación de API RESTful con OpenAPI y Swagger UI | **TSK-51** | Documentación OpenAPI | Configurar SpringDoc OpenAPI y documentar los endpoints de cada contexto con anotaciones de Swagger. | 4 h | Tejada Pumacayo, Yamil Jared | Done |
| **US-05** | Demostración del producto mediante video | **TSK-52** | Video demostrativo | Grabar y editar el video de demostración de los flujos implementados en el sprint. | 2 h | Sanca Condori, Miguel | To-do |

Adicionalmente, se registraron tareas transversales que no dependen de una historia en particular, pero que son necesarias para satisfacer restricciones generales del backend:

| Task Id | Task Title | Task Description | Estimation (Hours) | Assigned To | Status |
| :---: | :--- | :--- | :---: | :--- | :---: |
| **TSK-T1** | Shared kernel | Implementar el patrón `Result`, el manejo estructurado de errores, el *exception handler* global, los *assemblers* de `ProblemDetail`, la auditoría JPA y la estrategia de nombres en *snake case* con tablas en plural. | 6 h | Sanca Condori, Miguel | Done |
| **TSK-T2** | Configuración por entornos e i18n | Definir las propiedades por entorno y los mensajes de error en inglés y español. | 2 h | Sanca Condori, Miguel | Done |
| **TSK-T3** | Separación dominio–persistencia | Separar los agregados de las entidades JPA mediante puertos de repositorio y publicador de eventos de dominio. | 4 h | Sanca Condori, Miguel | Done |

---

#### 5.2.3.4. Development Evidence for Sprint Review

En esta sección se presentan los avances de implementación del **Sprint 3**. El esfuerzo principal se concentró en el nuevo repositorio de **RESTful Web Services** (`sumaqAgro-backend`), que al cierre del sprint expone en `develop` los endpoints de los contextos **IAM**, **Profiles**, **Farming** y **Crop**, documentados con Swagger UI. Los contextos **Certification** y **Subscriptions** y la importación desde AgroMonitoring se encuentran en sus ramas `feature/*`, pendientes de revisión e integración. En la **Web Application** (`sumaqAgro-appweb`) se implementaron los flujos de autenticación, suscripción, cuenta de usuario y cooperativa, que aún consumen la Fake REST API y se conectarán a los Web Services en la siguiente iteración. En la **Landing Page** (`sumaqAgro-landing-page`) se publicaron los *releases* `v3.0.0`, `v3.1.0` y `v3.2.0`, que reestructuran el proyecto con *partials* reutilizables para el encabezado y el pie de página, extraen los íconos SVG a archivos dedicados e incorporan a los nuevos integrantes del equipo.

El equipo trabajó bajo **GitFlow**: cada funcionalidad se desarrolló en una rama `feature/<bounded-context>-<funcionalidad>` creada desde `develop` y se integró nuevamente en `develop` mediante *merge*. Todos los mensajes siguen el estándar **Conventional Commits** en inglés, con el *scope* del Bounded Context o agregado modificado. Los mensajes se conservan literalmente como están registrados en Git.

En el repositorio de RESTful Web Services se registraron **264 commits** durante el sprint; a continuación se presenta una selección de **58 commits** representativos de todos los integrantes, ordenados desde el más antiguo hasta el más reciente:

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Commited on (Date) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `dymbia-opensource/sumaqAgro-backend` | `main` | `f1b07d0` | `chore: initialize SumaqAgro Spring Boot backend project` | --- | 25/10/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/project-setup` | `bd5fda9` | `chore(deps): organize Maven dependencies and centralize version properties` | --- | 26/10/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/shared` | `35ac3d6` | `feat(shared): add JPA auditing support` | --- | 26/10/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/shared` | `762fe97` | `feat(shared): implement generic Result pattern` | --- | 26/10/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/shared` | `154b9fc` | `feat(shared): add centralized REST exception handling` | --- | 26/10/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/project-configurations` | `c475d53` | `feat(pom): update project version and dependencies, add license and developer info` | --- | 29/10/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/project-configurations` | `160dd16` | `feat(configuration): add environment-specific properties` | --- | 29/10/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/project-configurations` | `0342029` | `feat(configuration): add error messages for en and es` | --- | 29/10/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/crop-health-domain-value-objects` | `176fed6` | `feat(crop-health): add NDVI and NDWI value objects with validation` | --- | 29/10/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/field-management-plots` | `5e0da0c` | `feat(field-plot): add FieldPlot aggregate` | --- | 29/10/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/crop-health-domain-aggregates` | `f0d10c2` | `feat(crop-health): add PestReport aggregate with validation and status management` | --- | 29/10/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/field-management-plots` | `0343163` | `feat(field-plot): implement FieldPlotsController for managing field plots` | --- | 31/10/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/farming-context-rename` | `28662cb` | `refactor(farming): rename fieldmanagement package to farming` | --- | 03/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/farming-crop-campaigns` | `da2fc77` | `feat(farming): add CropCampaign aggregate and Start crop campaign command` | --- | 03/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/shared-persistence` | `ed3dc04` | `feat(shared): add domain aggregate root without persistence concerns` | --- | 05/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/shared-persistence` | `1f95d91` | `feat(shared): add map, flatMap, mapError and recover to Result` | --- | 05/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/shared-persistence` | `14e6848` | `feat(shared): add problem detail and response entity assemblers` | --- | 05/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/iam-authentication` | `43db509` | `feat(iam): define supported roles and role domain entity.` | --- | 05/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/iam-authentication` | `442ed25` | `feat(iam): add JPA persistence for users and role assignments` | --- | 05/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/profiles-context` | `0f7ac4c` | `feat(profiles): add value objects for Profiles context` | --- | 06/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/profiles-context` | `ee21ef0` | `feat(profiles): add Profile aggregate, command and event from domain model` | --- | 06/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/farming-persistence` | `0262429` | `refactor(field-plot): separate domain aggregate from JPA persistence` | --- | 06/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/profiles-context` | `85e93e8` | `feat(profiles): add Cooperative aggregate with members and invitations` | --- | 06/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/iam-authentication` | `de1a26a` | `feat(iam): add BCrypt password hashing` | --- | 06/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/iam-authentication` | `4c970b0` | `feat(iam): add JWT token service` | --- | 06/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/profiles-agronomist-assignment` | `a9105dd` | `feat(profiles): add queries and repository for AgronomistAssignment` | --- | 06/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/iam-authentication` | `9a92595` | `feat(iam): implement user sign-in command` | --- | 06/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/iam-authentication` | `29d88a3` | `feat(iam): expose sign-in through the tokens endpoint` | --- | 06/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/iam-authentication` | `a9f341d` | `feat(iam): expose registration through the users endpoint` | --- | 06/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/iam-authentication` | `fba225d` | `feat(iam): secure API routes with bearer JWT authentication` | --- | 06/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/farming-crop-campaign` | `362918a` | `feat(crop-campaign): add crop campaigns controller` | --- | 07/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/harvest-certification` | `ab32cc5` | `feat(certification): add HarvestBatch aggregate` | --- | 07/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/harvest-certification` | `0c16c26` | `feat(certification): add register, weigh, sample, grade potato and cup coffee commands` | --- | 07/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/crop-pest-report` | `e41ebfe` | `feat(pest-report): add PestReport aggregate with state transitions and reconstitution` | --- | 07/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/harvest-certification` | `12bf3ec` | `feat(certification): add HarvestBatchesController` | --- | 07/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/harvest-certification` | `e26d164` | `feat(certification): add PublicTraceabilityController` | --- | 07/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/profiles-agronomist-assignment` | `1527e9f` | `feat(profiles): implement REST endpoints for user profiles` | --- | 08/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/crop-pest-report` | `a7eac6b` | `feat(pest-report): implement PestReportsController for managing pest report operations` | --- | 08/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/crop-field-inspection` | `53da853` | `feat(field-inspection): implement FieldInspection aggregate for scheduling and completing inspections` | --- | 08/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/profiles-rest-endpoints` | `80fc2f5` | `feat(profiles): add REST controller for Cooperative operations` | --- | 08/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/profiles-context-facade` | `e5ccf02` | `feat(profiles): implement ProfilesContextFacadeImpl for ACL integration` | --- | 08/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/farming-plot-boundary` | `769b44e` | `feat(farming): add endpoint to delineate the plot boundary` | --- | 09/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/crop-field-inspection` | `d05320f` | `feat(field-inspection): implement REST controller for scheduling, retrieving, and completing field inspections` | --- | 09/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/farming-plot-boundary` | `0a285c5` | `feat(farming): link delineated polygons to AgroMonitoring` | --- | 09/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/crop-technical-prescription` | `5c721a5` | `feat(crop): add TechnicalPrescription aggregate to manage pest report prescriptions` | --- | 10/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/crop-technical-prescription` | `2983457` | `feat(crop): add REST controller for managing technical prescriptions` | --- | 10/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/subscription-management` | `8f3f412` | `feat(subscriptions): add PlanCode enum to represent commercial plans` | --- | 10/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/subscription-management` | `99eb238` | `feat(subscriptions): expose the plan catalog` | --- | 10/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/harvest-certification` | `49c0d02` | `refactor(certification): extract value objects from aggregates and commands` | --- | 10/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/subscription-management` | `7fce7c0` | `feat(subscriptions): add checkout and restore the plan repository port` | --- | 10/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/crop-satelite-observation` | `c1a8e9b` | `feat(satellite-observation): add REST controller and assembler for satellite observation queries` | --- | 10/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/crop-climate-forecast` | `7c71ee1` | `feat(climate-forecast): add REST controller for retrieving climate forecasts by region` | --- | 11/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/crop-agroclimatic-alert` | `29a8584` | `feat(agroclimatic-alert): add REST controller and resource for querying agroclimatic alerts` | --- | 11/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/crop-regional-bulletin` | `147733b` | `feat(regional-bulletin): add REST controller for publishing and querying regional bulletins` | --- | 11/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/crop-agromonitoring-satellite` | `f8f37d6` | `feat(agromonitoring-satellite): implement import functionality for satellite observations` | --- | 12/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/crop-agromonitoring-satellite` | `2647bfc` | `feat(agromonitoring-satellite): enhance API documentation with Swagger annotations for import and retrieval operations` | --- | 12/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/farming-endpoints-upgrade` | `9ec3139` | `refactor(crop-campaign): replace field PUT endpoints with PATCH` | --- | 13/11/2026 |
| `dymbia-opensource/sumaqAgro-backend` | `feature/farming-soil-baseline` | `b6a5139` | `feat(field-plot): add endpoint to record the soil baseline` | --- | 13/11/2026 |

En el repositorio de la Web Application se registraron **165 commits** durante el sprint; a continuación se presenta una selección de **25 commits** representativos, ordenados desde el más antiguo hasta el más reciente:

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Commited on (Date) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/seed-plan-plot-limit` | `1b0f7f8` | `feat(field-management): enhance plot registration and quota management with new UI components and improved error handling` | --- | 21/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/iam-domain` | `459f40b` | `feat(iam): define user roles and user entity` | --- | 26/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/iam-bounded-context` | `deaf27a` | `feat(iam): add authentication endpoints and API facadeb v` | --- | 27/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/iam-bounded-context` | `efae2c8` | `feat(iam): add sign-in view with validation and translations` | --- | 27/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/iam-bounded-context` | `34157f0` | `feat(iam): add sign-up view and authentication navigation` | --- | 27/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/field-management-upgrade` | `4926780` | `refactor(field-management): calculate campaign costs and breakeven price in the store` | --- | 27/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/iam-session` | `81c5d7f` | `feat(iam): add expiring mock session storage` | --- | 27/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/subscriptions-domain` | `eb1dcf3` | `feat(subscriptions): add Plan domain entity with pricing logic` | --- | 29/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/subscriptions-infrastructure` | `20bcdbd` | `feat(subscriptions): add plans and subscriptions edndpoints for HTTP requests` | --- | 30/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/subscriptions-store` | `029f938` | `feat(subscriptions): add subscriptions store` | --- | 30/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/subscriptions-paid-plans` | `c844e85` | `refactor(subscriptions): remove free plan from the domain` | --- | 30/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/iam-refactor` | `5f7d4a5` | `refactor(iam): separate sign-out from layout state` | --- | 30/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/iam-registration-ui` | `a76f986` | `feat(iam): collect profile names during registration` | --- | 30/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/profiles-account-help` | `1dfc2d9` | `feat(profiles): support updating farmer personal and contact details` | --- | 30/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/subscriptions-presentation` | `a7a432b` | `feat(subscriptions): add plans catalog with plan cards and translations` | --- | 30/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/subscriptions-presentation` | `ef74e8c` | `feat(subscriptions): add checkout view and plan selection flow` | --- | 30/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/subscriptions-presentation` | `441fa2b` | `feat(subscriptions): add billing history and cancellation view` | --- | 30/10/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/crop-health-improvements` | `75f2fa4` | `feat(advisory-directory): add AdvisoryDirectory and PlotDirectory services for managing advisor and plot data` | --- | 03/11/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/subscription-flow` | `cb09049` | `feat(subscriptions): gate workspace access on subscription validity` | --- | 10/11/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/subscription-flow` | `75402fb` | `feat(field-management): use the active subscription plot quota` | --- | 10/11/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/subscription-onboarding-flow` | `4628aa3` | `feat(iam): add language switching and refine sign-in and sign-up forms` | --- | 11/11/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/ui-improvements` | `92be170` | `feat(crop-health): reorganize the advisor consultation view` | --- | 12/11/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/ui-and-validation-issues` | `6550606` | `feat(profiles): add cooperative registration flow` | --- | 13/11/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/ui-and-validation-issues` | `26953cf` | `feat(profiles): add cooperative member registration and dossier` | --- | 13/11/2026 |
| `dymbia-opensource/sumaqAgro-appweb` | `feature/ui-and-validation-issues` | `5faa8f3` | `feat(profiles): add navigable cooperative member dossiers` | --- | 13/11/2026 |

En el repositorio de la Landing Page se registraron **17 commits** y tres *releases* durante el sprint; a continuación se presenta una selección representativa, ordenada desde el más antiguo hasta el más reciente:

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Commited on (Date) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `dymbia-opensource/sumaqAgro-landing-page` | `main` | `5d7739f` | `Merge branch 'release/v3.0.0' into main` | --- | 26/10/2026 |
| `dymbia-opensource/sumaqAgro-landing-page` | `feature/project-structure-cleanup` | `5208c8e` | `feat(partials): refactor header and footer and add them to a partials folder` | --- | 02/11/2026 |
| `dymbia-opensource/sumaqAgro-landing-page` | `feature/project-structure-cleanup` | `1bbc4a0` | `refactor(assets): extract inline SVGs into dedicated files` | --- | 02/11/2026 |
| `dymbia-opensource/sumaqAgro-landing-page` | `feature/project-structure-cleanup` | `35d2b06` | `docs(readme): translate to English and update project structure` | --- | 02/11/2026 |
| `dymbia-opensource/sumaqAgro-landing-page` | `main` | `8da070b` | `Merge branch 'release/v3.1.0' into main` | --- | 02/11/2026 |
| `dymbia-opensource/sumaqAgro-landing-page` | `feature/restructured-files` | `67e598c` | `refactor(website): update file paths for scripts and legal pages` | --- | 03/11/2026 |
| `dymbia-opensource/sumaqAgro-landing-page` | `feature/restructured-files` | `27ef427` | `feat(team): add new team members and update existing profiles` | --- | 03/11/2026 |
| `dymbia-opensource/sumaqAgro-landing-page` | `feature/restructured-files` | `8d7c6a2` | `fix(landing): center team cards and keep FAQ closed by default` | --- | 04/11/2026 |
| `dymbia-opensource/sumaqAgro-landing-page` | `feature/restructured-files` | `afb1a1e` | `fix(landing): improve subscription CTA copy` | --- | 04/11/2026 |
| `dymbia-opensource/sumaqAgro-landing-page` | `feature/update-information` | `374d350` | `chore(team): update Andy Salcedo's role to Software Developer` | --- | 10/11/2026 |
| `dymbia-opensource/sumaqAgro-landing-page` | `main` | `752c5f9` | `Merge branch 'release/v3.2.0' into main` | --- | 10/11/2026 |

---

#### 5.2.3.5. Execution Evidence for Sprint Review

Durante el Sprint 3 se actualizó la Landing Page y se desarrollaron en la Web Application los flujos de ingreso, registro por rol, suscripciones y gestión de cooperativas. En paralelo, el equipo implementó los servicios Spring Boot para sustituir la API simulada del Sprint 2. Las capturas de esta sección muestran las vistas públicas que se pudieron comprobar en Cloudflare Pages y Firebase Hosting.

##### Landing Page

La pantalla de inicio presenta la propuesta de valor de SumaqAgro para productores de papa y café. Desde **View plans** se consulta el catálogo, y **Sign In** abre el acceso a la aplicación web. La versión publicada muestra tres planes, para agricultores independientes, cooperativas y asesores técnicos. Los botones de selección de plan preparan un correo de consulta.

La portada presenta la propuesta de SumaqAgro y ofrece acceso a los planes y a la demostración.

![img-1.png](assets/img/chapter-5/sprint-3/landing/img-1.png)

La vista previa del panel acompaña una explicación de los riesgos agrícolas, los costos y la falta de trazabilidad.

![img-2.png](assets/img/chapter-5/sprint-3/landing/img-2.png)

Cuatro herramientas reúnen el monitoreo satelital, el registro de costos, la certificación y las alertas.

![img-3.png](assets/img/chapter-5/sprint-3/landing/img-3.png)

La sección explica el uso de SumaqAgro en tres pasos e incluye un video demostrativo.

![img-4.png](assets/img/chapter-5/sprint-3/landing/img-4.png)

Las pestañas presentan a los agricultores independientes, las cooperativas y los asesores técnicos.

![img-5.png](assets/img/chapter-5/sprint-3/landing/img-5.png)

El catálogo compara los tres planes y permite alternar entre facturación mensual y anual.

![img-6.png](assets/img/chapter-5/sprint-3/landing/img-6.png)

La sección reúne las metas de impacto del proyecto y los testimonios publicados.

![img-7.png](assets/img/chapter-5/sprint-3/landing/img-7.png)

La presentación de Dymbia reúne su misión, su visión y los perfiles del equipo.

![img-8.png](assets/img/chapter-5/sprint-3/landing/img-8.png)

El espacio para conocer a Dymbia aparece junto a las preguntas frecuentes sobre el producto.

![img-9.png](assets/img/chapter-5/sprint-3/landing/img-9.png)

El llamado a la acción sugiere un plan según el perfil y el pie de página reúne los enlaces de contacto y soporte.

![img-10.png](assets/img/chapter-5/sprint-3/landing/img-10.png)

##### Web Application

El enlace de acceso de la Landing Page lleva a la pantalla de **inicio de sesión**, que ofrece ingreso con correo y contraseña y acceso al registro. En **Create your account**, el visitante puede seleccionar su rol de agricultor, directivo de cooperativa o asesor técnico. Las capturas corresponden a la navegación pública hasta los formularios, antes del envío de datos.

Formulario de inicio de sesión con correo y contraseña.

![img-1.png](assets/img/chapter-5/sprint-3/app-web/img-1.png)

Bandeja de diagnóstico para consultar reportes de plagas.

![img-2.png](assets/img/chapter-5/sprint-3/app-web/img-2.png)

Formulario de registro de una cooperativa.

![img-3.png](assets/img/chapter-5/sprint-3/app-web/img-3.png)

Suscripción al plan Cooperativa Pro e historial de pagos.

![img-4.png](assets/img/chapter-5/sprint-3/app-web/img-4.png)

Vista general del mapa satelital de salud del cultivo.

![img-5.png](assets/img/chapter-5/sprint-3/app-web/img-5.png)

Panel del agricultor con indicadores del cultivo y costos de producción.

![img-6.png](assets/img/chapter-5/sprint-3/app-web/img-6.png)

Vista satelital con el lindero de la parcela seleccionada.

![img-7.png](assets/img/chapter-5/sprint-3/app-web/img-7.png)

Listado de parcelas registradas y espacios disponibles del plan.

![img-8.png](assets/img/chapter-5/sprint-3/app-web/img-8.png)

Listado de campañas agrícolas y su estado.

![img-9.png](assets/img/chapter-5/sprint-3/app-web/img-9.png)

Vista de consulta al asesor y seguimiento de reportes de plagas.

![img-10.png](assets/img/chapter-5/sprint-3/app-web/img-10.png)

Sección de certificados oficiales por lote de cosecha.

![img-11.png](assets/img/chapter-5/sprint-3/app-web/img-11.png)

Vista de alertas, pronósticos y boletines por región.

![img-12.png](assets/img/chapter-5/sprint-3/app-web/img-12.png)

Configuración de la cuenta del agricultor con datos de contacto, seguridad y preferencias.

![img-13.png](assets/img/chapter-5/sprint-3/app-web/img-13.png)

Suscripción al plan Semilla e historial de pagos.

![img-14.png](assets/img/chapter-5/sprint-3/app-web/img-14.png)


##### Video de navegación

El recorrido parte de la Landing Page, muestra el catálogo de planes y continúa en la aplicación con el ingreso y la selección de rol. Para el tramo autenticado, la grabación debe mostrar un flujo completo con una cuenta de demostración, por ejemplo, el registro y la consulta posterior de una parcela o de un socio de cooperativa.

- **Ruta del video** `videos/sprint-3/upc-pre-202620-1asi0729-7742-dymbia-productnavigation-sprint-3.mp4`
- **URL de Microsoft Stream** pendiente de agregar después de publicar el video.

---

#### 5.2.3.6. Services Documentation Evidence for Sprint Review

Los RESTful Web Services incorporan SpringDoc OpenAPI para exponer los contratos HTTP y consultarlos desde Swagger UI. La tabla recoge las operaciones principales del sprint, contrastadas con los controladores y recursos del backend. Los fragmentos JSON son ejemplos abreviados con datos ficticios. La columna de entrada identifica parámetros de ruta, filtros de consulta y campos principales del cuerpo. El esquema completo de cada recurso se consulta en OpenAPI.

![img-swagger.png](assets/img/chapter-5/sprint-3/swagger-img.png)

- **Repositorio de Web Services** [sumaq-agro-platform](https://github.com/dymbia-opensource/sumaq-agro-platform)
- **Documentación del entorno configurado** [Swagger UI en Render](https://sumaq-agro-platform.onrender.com/swagger-ui/index.html) y [OpenAPI JSON en Render](https://sumaq-agro-platform.onrender.com/v3/api-docs).
- **Documentación para ejecución local** [Swagger UI local](http://localhost:8080/swagger-ui/index.html) y [OpenAPI JSON local](http://localhost:8080/v3/api-docs).

##### Operaciones por Bounded Context

Las rutas de la tabla son relativas a `/api/v1`. Las operaciones protegidas usan el encabezado `Authorization: Bearer <token>`, obtenido mediante `POST /tokens`. Los cuerpos de las solicitudes se envían en JSON.

| Contexto y acción | Verbo y ruta | Entrada | Ejemplo de respuesta |
| :--- | :--- | :--- | :--- |
| IAM · Registrar cuenta | `POST /users` | `email`, `password`, `roles` y `profile` con nombres y apellidos | `201` con la cuenta creada, por ejemplo `{"id":10,"roles":["ROLE_FARMER"]}`. |
| IAM · Iniciar sesión | `POST /tokens` | `email` y `password` | `200` con el usuario y su JWT, por ejemplo `{"id":10,"token":"<jwt>"}`. |
| Subscriptions · Consultar catálogo | `GET /plans` | Sin parámetros | `200` con planes, por ejemplo `[{"code":"SEED","monthlyPrice":49,"currency":"PEN"}]`. |
| Subscriptions · Consultar suscripción | `GET /subscriptions/me` | Cuenta autenticada | `200` con la suscripción, por ejemplo `{"planCode":"SEED","status":"ACTIVE"}`, o `204` si no existe. |
| Subscriptions · Registrar checkout | `POST /subscriptions/me/checkout` | `planCode`, `billingCycle` y `simulatedOutcome` opcional | `201` con el pago de demostración, por ejemplo `{"status":"COMPLETED","amount":49}`. El pago es simulado. |
| Subscriptions · Consultar pagos | `GET /subscriptions/me/payments` | Cuenta autenticada | `200` con el historial, por ejemplo `[]` para una cuenta sin pagos. |
| Subscriptions · Cancelar suscripción | `POST /subscriptions/me/cancel` | Cuenta autenticada | `200` con la suscripción actualizada, por ejemplo `{"id":5,"status":"CANCELLED"}`. |
| Profiles · Buscar perfil | `GET /profiles?userId=10` | `userId` como filtro | `200` con perfiles, por ejemplo `[{"id":7,"userId":10}]`. |
| Profiles · Consultar perfil | `GET /profiles/{profileId}` | `profileId` en la ruta | `200` con el perfil, por ejemplo `{"id":7,"firstName":"Ana"}`. |
| Profiles · Actualizar perfil | `PUT /profiles/{profileId}` | `profileId` y cuerpo con datos personales o de contacto | `200` con el perfil actualizado, por ejemplo `{"id":7,"firstName":"Ana"}`. |
| Profiles · Registrar cooperativa | `POST /cooperatives` | `ruc`, `businessName`, `region`, `managerUserId` y datos institucionales | `201` con la cooperativa creada, por ejemplo `{"id":4,"businessName":"Cooperativa Demo"}`. |
| Profiles · Agregar socio | `POST /cooperatives/{cooperativeId}/members` | `cooperativeId` y datos de identificación del socio | `201` con el socio registrado, por ejemplo `{"id":9,"cooperativeId":4}`. |
| Profiles · Consultar cooperativas | `GET /cooperatives?directorUserId=10` | Filtro opcional `directorUserId` | `200` con la lista, por ejemplo `[{"id":4,"managerUserId":10}]`. |
| Profiles · Consultar padrón | `GET /cooperatives/{cooperativeId}/members` | `cooperativeId` en la ruta | `200` con los socios, por ejemplo `[]` para una cooperativa sin socios. |
| Profiles · Consultar asignaciones | `GET /agronomist-assignments?plotId=8` | Filtros opcionales `plotId`, `agronomistUserId`, `producerUserId` y `cooperativeId` | `200` con las asignaciones que coinciden, por ejemplo `[]` si la parcela todavía no tiene asesor. |
| Farming · Registrar parcela | `POST /field-plots` | `ownerUserId`, `name`, `region`, `areaHectares` y referencias cooperativas si aplican | `201` con la parcela creada, por ejemplo `{"id":8,"name":"Parcela Demo"}`. |
| Farming · Listar parcelas del titular | `GET /field-plots?ownerUserId=10` | `ownerUserId` | `200` con las parcelas, por ejemplo `[{"id":8,"ownerUserId":10}]`. |
| Farming · Consultar parcela | `GET /field-plots/{fieldPlotId}` | `fieldPlotId` en la ruta | `200` con los datos de la parcela, por ejemplo `{"id":8,"areaHectares":1.2}`. |
| Farming · Delimitar parcela | `PUT /field-plots/{fieldPlotId}/polygon` | `fieldPlotId` y lista `coordinates` | `200` con la parcela y su lindero. Cada elemento de `boundary` contiene `latitude` y `longitude`. |
| Farming · Abrir campaña | `POST /crop-campaigns` | `fieldPlotId`, `season`, `cropType`, `seedVariety`, `customSeedVariety` y `sowingDate` | `201` con la campaña creada, por ejemplo `{"id":12,"fieldPlotId":8}`. |
| Farming · Listar campañas de una parcela | `GET /field-plots/{fieldPlotId}/crop-campaigns` | `fieldPlotId` en la ruta | `200` con las campañas, por ejemplo `[{"id":12,"fieldPlotId":8}]`. |
| Crop · Consultar observaciones | `GET /satellite-observations?plotId=8` | `plotId` | `200` con observaciones registradas, por ejemplo `[{"plotId":8,"ndviMean":0.58,"ndwiMean":0.18}]`. |
| Crop · Consultar alertas | `GET /agroclimatic-alerts?region=Apurimac` | `region` | `200` con alertas de la región, por ejemplo `[]` cuando no hay registros. |
| Crop · Registrar reporte de plaga | `POST /pest-reports` | `plotId`, `reporterId`, `description` y `severity` | `201` con el reporte, por ejemplo `{"id":21,"plotId":8,"status":"PENDING"}`. |
| Crop · Consultar reportes | `GET /pest-reports?plotId=8` | `plotId` | `200` con los reportes de la parcela, por ejemplo `[{"id":21,"plotId":8}]`. |
| Crop · Eliminar reporte | `DELETE /pest-reports/{pestReportId}` | `pestReportId` en la ruta | `200` con un mensaje en el campo `message` cuando se elimina el reporte. |
| Crop · Programar inspección | `POST /field-inspections` | `pestReportId`, `agronomistId` y `scheduledAt` | `201` con la inspección creada, por ejemplo `{"id":22,"pestReportId":21}`. |
| Crop · Completar inspección | `PATCH /field-inspections/{fieldInspectionId}/completion` | `fieldInspectionId` y cuerpo con `findings` | `200` con la inspección actualizada, por ejemplo `{"id":22,"findings":"Manchas en cinco plantas"}`. |
| Crop · Emitir receta técnica | `POST /technical-prescriptions` | `pestReportId`, `agronomistId`, `product`, `dosage`, `instructions` y `applicationDate` | `201` con la receta registrada, por ejemplo `{"id":23,"pestReportId":21}`. |
| Certification · Registrar lote | `POST /harvest-batches` | `batchCode`, `cooperativeId`, `memberId`, `plotId`, `cropType` y `harvestedOn` | `201` con el lote, por ejemplo `{"id":30,"batchCode":"LOTE-DEMO","status":"PENDING"}`. |
| Certification · Registrar pesaje | `POST /harvest-batches/{harvestBatchId}/weight` | `harvestBatchId`, `grossWeightKg` y `tareKg` | `200` con el lote actualizado, por ejemplo `{"id":30,"netWeightKg":95}`. |
| Certification · Emitir certificado | `POST /quality-certificates` | Cuerpo con `certificateNumber`, `harvestBatchId` e `issuedByUserId` | `201` con el certificado y su huella, por ejemplo `{"certificateNumber":"CERT-DEMO","certificateHash":"…"}`. |
| Certification · Verificar trazabilidad | `GET /public/traceability?number=CERT-DEMO&hash=<hash>` | Número y huella del certificado | `200` con el resultado de la verificación, por ejemplo `{"certificateNumber":"CERT-DEMO","authentic":true}`. |

Los contratos se contrastaron con el código disponible para la revisión de AV2. Parte de las operaciones de Subscriptions y Certification se desarrolló en ramas del sprint y su integración en `develop` aparece después del corte del 13 de noviembre. La tabla documenta su implementación en el código y su disponibilidad pública queda por validar.

##### Interacción con Swagger UI

Para comprobar el contrato con datos de muestra, abrir **Tokens**, enviar el correo y la contraseña de una cuenta de prueba y comprobar que la respuesta sea `200` con un JWT. Después, ejecutar **Field Plots** con el `fieldPlotId` de una parcela de demostración y comprobar que la respuesta `200` incluya sus datos. Las capturas deben mostrar los parámetros, el código HTTP y el cuerpo de respuesta, con las credenciales y el token ocultos.

Durante la revisión, la URL pública de Swagger UI mostró la pantalla de arranque de Render. Quedan pendientes las capturas de interacción en `assets/img/chapter-5/sprint-3/swagger-token.jpg` y `assets/img/chapter-5/sprint-3/swagger-parcelas.jpg`.

##### Commits relacionados con la documentación de servicios

| Commit | Fecha | Evidencia |
| :--- | :--- | :--- |
| [`29d88a3`](https://github.com/dymbia-opensource/sumaq-agro-platform/commit/29d88a3) | 06/11/2026 | Incorpora el controlador REST para la emisión del token de sesión. |
| [`a9f341d`](https://github.com/dymbia-opensource/sumaq-agro-platform/commit/a9f341d) | 06/11/2026 | Incorpora el controlador REST de registro de cuentas. |
| [`1527e9f`](https://github.com/dymbia-opensource/sumaq-agro-platform/commit/1527e9f) | 08/11/2026 | Incorpora los endpoints REST de perfiles. |
| [`2647bfc`](https://github.com/dymbia-opensource/sumaq-agro-platform/commit/2647bfc) | 12/11/2026 | Añade anotaciones Swagger para las operaciones de importación y consulta satelital en la rama `feature/crop-agromonitoring-satellite`. |

---

#### 5.2.3.7. Software Deployment Evidence for Sprint Review

La entrega de AV2 comprende tres productos. Se comprobó el acceso público a la Landing Page y a la pantalla de ingreso de la Web Application. Para la API, se identificaron el contenedor preparado para Render y la configuración del frontend que apunta a ese servicio. La respuesta del backend y la conexión autenticada de extremo a extremo quedan por verificar.

##### Landing Page en Cloudflare Pages

1. Se reorganizó el sitio estático bajo el directorio `public/`, con sus páginas legales, estilos, scripts y recursos.
2. La versión [`v3.2.0`](https://github.com/dymbia-opensource/sumaq-agro-website/tree/v3.2.0) se integró en `main` mediante el commit [`752c5f9`](https://github.com/dymbia-opensource/sumaq-agro-website/commit/752c5f9).
3. Se comprobó el acceso al [sitio publicado](https://sumaqagro-landing-page.pages.dev/) y el destino de **Sign In**, que conduce a Firebase Hosting. Queda pendiente la captura del historial de Cloudflare Pages con la rama y el commit del despliegue en `assets/img/chapter-5/sprint-3/deploy-cloudflare.jpg`.
   ![img-cloudflare.png](assets/img/chapter-5/sprint-3/despliegue/img-cloudflare.png)
##### Web Application en Firebase Hosting

1. El proyecto `sumaqagro-appweb` está vinculado mediante `.firebaserc`. La compilación con `npm run build` genera el contenido en `dist/sumaqAgro-appweb/browser`, directorio indicado en `firebase.json`.
2. La publicación usa `firebase deploy --only hosting`. Firebase redirige las rutas internas a `index.html`, de modo que Angular resuelva enlaces como `/demo-access`.
3. Se comprobó la [ruta publicada de acceso](https://sumaqagro-appweb.web.app/demo-access) y su redirección al formulario de inicio de sesión. El commit [`e70e5ff`](https://github.com/dymbia-opensource/sumaq-agro-web-app/commit/e70e5ff) configura el backend de Render en la rama `feature/update-frontend` el 15 de noviembre. Se requiere el historial de Firebase Hosting para identificar qué compilación está activa y comprobar si incluye ese cambio. La captura se guarda en `assets/img/chapter-5/sprint-3/deploy-firebase.jpg`.
   ![img-firebase.png](assets/img/chapter-5/sprint-3/despliegue/img-firebase.png)


##### RESTful Web Services en Render

1. El commit [`6526e03`](https://github.com/dymbia-opensource/sumaq-agro-platform/commit/6526e03), del 14 de noviembre, incorpora el `Dockerfile` de Render. La primera etapa ejecuta Maven para generar `platform-1.0.0.jar`. La segunda ejecuta el artefacto con `SERVER_PORT=10000`.
2. Para usar la conexión MySQL de producción se debe activar el perfil con `SPRING_PROFILES_ACTIVE=prod`. Este perfil lee las variables de entorno de la base de datos, JWT, CORS y AgroMonitoring. `FRONTEND_ORIGIN` debe coincidir con el origen publicado de Firebase.
3. La [documentación de la API](https://sumaq-agro-platform.onrender.com/swagger-ui/index.html) abrió en la pantalla de arranque de Render durante la comprobación. Para acreditar el despliegue, faltan la respuesta de Swagger y una captura del panel de Render con la rama, el commit y el estado del servicio. La captura se guarda en `assets/img/chapter-5/sprint-3/deploy-render.jpg`.
   ![img-rende.png](assets/img/chapter-5/sprint-3/despliegue/img-rende.png)
---

#### 5.2.3.8. Team Collaboration Insights during Sprint

El equipo organizó la implementación de los servicios por Bounded Context, según la matriz LACX de la sección 5.2.3.2. El trabajo en la aplicación web incluyó autenticación, cambios de perfil, suscripciones, cooperativas y ajustes en los flujos de Crop. La Landing Page concentró cambios de estructura, componentes compartidos y contenido del equipo. Los historiales de GitHub permiten seguir esos cambios por producto y los gráficos de **Insights → Contributors** muestran la actividad de la rama predeterminada.

| Integrante | Landing Page | Web Application | Web Services |
| :--- | ---: | ---: | ---: |
| Benjamin Solorzano | 17 | 98 | 41 |
| Miguel Sanca | 0 | 24 | 80 |
| Yamil Tejada | 0 | 11 | 83 |
| Andy Salcedo | 0 | 5 | 23 |
| Cristina Yarleque | 0 | 27 | 55 |
| **Total** | **17** | **165** | **282** |

El cuadro cuenta los commits alcanzables desde la rama remota `develop` cuya fecha de commit está entre el 19 de octubre y el 13 de noviembre de 2026, hora de Lima. El conteo excluye los *merge commits* y puede incluir cambios integrados después del cierre. Se obtuvo con `git shortlog -sn --no-merges --since="2026-10-19 00:00 -0500" --until="2026-11-13 23:59 -0500" origin/develop`. El conteo mide aportes registrados en Git. Los gráficos públicos pueden diferir por la rama y el intervalo que muestran.

##### Landing Page


El historial registra la reorganización de las vistas y recursos compartidos y la actualización de los perfiles del equipo. La autoría de los 17 commits del periodo en `develop` figura a nombre de Benjamin Solorzano. [Historial de commits](https://github.com/dymbia-opensource/sumaq-agro-website/commits/develop/) · [Insights de colaboradores](https://github.com/dymbia-opensource/sumaq-agro-website/graphs/contributors)
![img-landing-git.png](assets/img/chapter-5/sprint-3/img-landing-git.png)
##### Web Application

Los cinco integrantes registraron commits en la rama de integración durante el sprint. El historial permite seguir el trabajo de los formularios de acceso, el catálogo de suscripciones y las vistas de cooperativa, así como la integración posterior con Spring Boot. [Historial de commits](https://github.com/dymbia-opensource/sumaq-agro-web-app/commits/develop/) · [Insights de colaboradores](https://github.com/dymbia-opensource/sumaq-agro-web-app/graphs/contributors)
![img-app-git.png](assets/img/chapter-5/sprint-3/img-app-git.png)
##### RESTful Web Services

Benjamin Solorzano trabajó en IAM y suscripciones. Miguel Sanca se encargó de Farming y el *Shared Kernel*. Yamil Tejada implementó servicios de Crop e integración satelital. Cristina Yarleque desarrolló Profiles y cooperativas, y Andy Salcedo trabajó en Certification. La evidencia de desarrollo de 5.2.3.4 identifica los commits por contexto. [Historial de commits](https://github.com/dymbia-opensource/sumaq-agro-platform/commits/develop/) · [Insights de colaboradores](https://github.com/dymbia-opensource/sumaq-agro-platform/graphs/contributors)

![img-backend-git.png](assets/img/chapter-5/sprint-3/img-backend-git.png)

## 5.3. Validation Interviews.

### 5.3.1. Diseño de Entrevistas

Las entrevistas tienen como propósito recopilar información cualitativa sobre las experiencias, necesidades y percepciones de los usuarios potenciales de SumaqAgro. Para ello, las entrevistas se estructuraron en cuatro bloques principales: perfil y contexto, orientado a conocer las características y actividades de los entrevistados; 
expectativas del producto, enfocado en identificar los beneficios esperados; evaluación del prototipo, destinado a conocer la percepción de los usuarios sobre las funcionalidades y su facilidad de uso; y cierre, que permite recoger opiniones finales y sugerencias de mejora.

### Preguntas para el Segmento: Agricultores independientes

**Perfil y contexto**

1. ¿Cuántos años lleva trabajando en la agricultura y qué cultivos produce actualmente?
2. ¿Cómo registra actualmente los gastos de fertilizantes, semillas, jornales y otros insumos?
3. ¿Qué dificultades encuentra al consultar información sobre el estado de sus cultivos cuando trabaja en sus parcelas?

**Expectativas del producto**

4. ¿Qué beneficios esperaría obtener de una plataforma que permita monitorear sus cultivos mediante imágenes satelitales?
5. ¿Qué tan útil sería para usted conocer los costos reales de producción de cada parcela antes de vender su cosecha?
6. ¿Considera importante recibir alertas sobre posibles amenazas climáticas o fitosanitarias? ¿Por qué?

**Evaluación del prototipo**

7. Después de observar el módulo de monitoreo satelital, ¿qué tan fácil le resultó interpretar la información sobre el estado de sus cultivos?
8. ¿Qué tan sencillo le resultó registrar los costos de producción y consultar los resultados por parcela?
9. ¿Qué información o funcionalidad le resultó más difícil de comprender durante la demostración?

**Cierre**

10. ¿Utilizaría SumaqAgro para gestionar sus actividades agrícolas? ¿Qué condiciones necesitaría para incorporarla a su trabajo?
11. ¿Qué cambios o funcionalidades adicionales recomendaría para mejorar la plataforma?

### Preguntas para el Segmento: Directivos de cooperativas agrícolas

**Perfil y contexto**

1. ¿Cuál es su cargo y cuántos productores o socios tiene actualmente bajo su responsabilidad?
2. ¿Cómo gestionan actualmente los registros de producción, calidad y procedencia de los productos agrícolas?
3. ¿Cuáles son las principales dificultades que enfrenta durante los procesos de control de calidad y certificación?

**Expectativas del producto**

4. ¿Qué beneficios esperaría obtener de una plataforma que centralice la información agrícola de los productores asociados?
5. ¿Qué tan importante sería disponer de registros digitales para verificar la trazabilidad y procedencia de cada lote?
6. ¿Qué información considera indispensable para evaluar la calidad de los productos antes de su comercialización?

**Evaluación del prototipo**

7. Después de observar el módulo de gestión y certificación, ¿qué tan fácil le resultó consultar la información de los productores y sus parcelas?
8. ¿Considera que los certificados digitales permitirían mejorar la organización y disponibilidad de la documentación durante las auditorías? ¿Por qué?
9. ¿Qué tan útil considera disponer de información centralizada sobre la calidad y trazabilidad de los lotes?

**Cierre**

10. ¿Consideraría implementar SumaqAgro en su cooperativa? ¿Qué factores influirían en esa decisión?
11. ¿Qué mejoras considera necesarias para que la plataforma responda a las necesidades administrativas y comerciales de su organización?

### Preguntas para el Segmento: Ingenieros agrónomos y asesores técnicos

**Perfil y contexto**

1. ¿Cuántos años de experiencia tiene como ingeniero agrónomo o asesor técnico?
2. ¿Cuántos agricultores y parcelas supervisa aproximadamente durante un mes?
3. ¿Qué herramientas utiliza actualmente para registrar sus visitas técnicas, diagnósticos y recomendaciones?

**Expectativas del producto**

4. ¿Qué beneficios esperaría obtener de una herramienta que permita monitorear parcelas mediante información satelital?
5. ¿Qué información considera necesaria para identificar oportunamente posibles afectaciones en los cultivos?
6. ¿Qué tan importante sería contar con registros digitales de las visitas técnicas y recomendaciones realizadas a cada productor?

**Evaluación del prototipo**

7. Después de observar el módulo de monitoreo, ¿qué tan útil considera la información satelital para complementar sus evaluaciones de campo?
8. ¿Qué tan sencillo le resultó localizar parcelas y consultar su información geográfica?
9. ¿Considera que los registros e informes digitales facilitan el seguimiento de sus recomendaciones técnicas? ¿Por qué?

**Cierre**

10. ¿Incorporaría SumaqAgro como herramienta de apoyo en sus actividades de asesoría agrícola? ¿Por qué?
11. ¿Qué mejoras recomendaría para facilitar el trabajo de los asesores técnicos?

### 5.3.2. Registro de Entrevistas

Las entrevistas de validación se llevaron a cabo con usuarios de ambos segmentos objetivo. A continuación se presenta el registro detallado de las entrevistas realizadas, incluyendo información del entrevistado, capturas de video y análisis de respuestas.

Link de las entrevistas: https://tinyurl.com/22wc9pys

Link completo: https://upcedupe-my.sharepoint.com/:v:/g/personal/u20241f859_upc_edu_pe/IQDdYvzFj0ESTKQL2tU1jv8GAc-WOtwj9JSusBCu7Dsft8o?e=52Rkjh&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D

### Entrevista 1 – Agricultor de papa (Segmento 1)

| Campo | Información        |
|---|--------------------|
| Nombre completo | Mateo              |
| Edad | 32                 |
| Distrito | Comas              |
| Ocupación | Agricultor de papa |
| Fecha de entrevista | 14/11/2026         |
| Duración | 09:07              |
| URL del video (Microsoft Stream) | (https://tinyurl.com/22wc9pys) |
| Minutaje | 00:00 – 09:07      |

#### Captura de la entrevista

![Mateo](assets/img/chapter-5/validation-interviews/validación-1.png)

#### Resumen de Respuestas

Mateo es un agricultor dedicado principalmente al cultivo de papa. Durante la entrevista, explicó que organiza sus actividades agrícolas de manera manual, planificando la siembra según la disponibilidad de semillas, los recursos que necesita y las personas que pueden ayudarlo en las labores del campo. Respecto al seguimiento de sus cultivos, comentó que cuando observa alguna anomalía, como manchas en las hojas, suele tomar fotografías y consultar primero con algún vecino y posteriormente con un técnico. Asimismo, señaló que lleva el control de sus gastos en un cuaderno, donde registra las fechas y los pagos realizados; sin embargo, en ocasiones olvida anotar algunos jornales y recién calcula el gasto total cuando llega el momento de vender su producción.

Al conocer SumaqAgro, identificó que la plataforma podría servirle para revisar sus parcelas y llevar un control de sus gastos. Durante la demostración, comprendió el funcionamiento general del mapa y el registro de parcelas, aunque manifestó algunas dudas respecto a los números que aparecen en la información geográfica. Indicó que necesitaría explicaciones más sencillas que le permitan interpretar estos datos y saber si es conveniente visitar una parcela, así como identificar qué aspectos debería revisar durante su recorrido. También mostró interés en conocer los costos de la plataforma, especialmente si resultan accesibles para un agricultor que trabaja de manera independiente.

Respecto al sistema de alertas agrícolas, Mateo manifestó que antes de tomar alguna decisión revisaría si el aviso corresponde a su zona y si continúa vigente. Además, consideró importante que las alertas incluyan recomendaciones sobre las acciones que debería realizar y el tiempo durante el cual debe mantenerse atento a una posible afectación del cultivo. En cuanto al módulo de gastos y ganancias, valoró la posibilidad de registrar las compras y consultar posteriormente información como el producto adquirido, el monto pagado, la fecha y el nombre de la campaña, ya que estos datos le permitirían evitar confusiones cuando administra varias campañas agrícolas.

Finalmente, manifestó que utilizaría principalmente el módulo de registro de gastos durante su próxima campaña, destacando la importancia de poder registrar los pagos realizados a los trabajadores directamente desde la parcela, incluso cuando no disponga de conexión a internet. Consideró que esta funcionalidad evitaría que olvide registrar algunos gastos al regresar a casa. Entre sus principales recomendaciones, propuso mejorar la comprensión del mapa mediante pequeñas explicaciones que permitan interpretar los números y la información presentada. 

---

### Entrevista 2 – Ingeniero agrónomo / Asesor técnico (Segmento 3)

| Campo | Información                                       |
|---|---------------------------------------------------|
| Nombre completo | Jeff                                              |
| Edad | 30                                                |
| Distrito | Ica (Santiago)                                    |
| Ocupación | Ingeniero agrónomo y asesor técnico independiente |
| Fecha de entrevista | 14/11/2026                                   |
| Duración | 05:15                                             |
| URL del video (Microsoft Stream) |(https://tinyurl.com/22wc9pys)                              |
| Minutaje | 09:07 - 14:22                                     |

#### Captura de la entrevista

![Jeff](assets/img/chapter-5/validation-interviews/validacion-2.png)

#### Resumen de Respuestas

El entrevistado cuenta con tres años de experiencia como ingeniero agrónomo. Durante su primer año trabajó en una agroexportadora en Ica y, desde 2024, se desempeña como asesor técnico independiente, brindando apoyo a pequeños productores y a una cooperativa dedicada al cultivo de papa y quinua. Actualmente, atiende aproximadamente entre 15 y 20 productores y supervisa alrededor de 25 parcelas mensualmente. Durante la entrevista, explicó que una de sus principales dificultades es la distancia entre los terrenos agrícolas, lo que limita la cantidad de visitas que puede realizar diariamente. Asimismo, señaló que utiliza un cuaderno de campo y archivos de Excel para registrar sus actividades, mientras que las fotografías y recomendaciones técnicas las comparte mediante WhatsApp. Esta distribución de información dificulta recuperar los antecedentes de las visitas y consultar recomendaciones realizadas meses atrás.

Respecto al monitoreo de las parcelas mediante información satelital, manifestó que sería beneficioso contar con herramientas que le permitan identificar cuáles presentan una disminución en sus indicadores de vegetación y, de esta manera, priorizar sus visitas técnicas. Considera importante disponer de información histórica sobre el comportamiento de los cultivos, así como datos de humedad, temperatura y etapa de desarrollo, debido a que estos factores permiten interpretar mejor las posibles afectaciones agrícolas. Sin embargo, aclaró que la información satelital debe utilizarse como complemento de las evaluaciones de campo y no como un diagnóstico definitivo, ya que la identificación de plagas y enfermedades requiere una inspección directa de los cultivos.

Asimismo, destacó que contar con un historial digital de visitas técnicas, diagnósticos y recomendaciones sería incluso más importante que el propio monitoreo satelital. Considera que centralizar los reportes de los productores, las inspecciones realizadas y las recomendaciones permitiría evaluar si las indicaciones proporcionadas han dado resultados y disponer de evidencia ante posibles pérdidas de cultivos. Durante la evaluación del prototipo, valoró positivamente la visualización de las curvas de comportamiento de los indicadores satelitales, en lugar de mostrar únicamente un dato del día. También consideró sencillo localizar las parcelas y consultar su información geográfica, aunque mencionó que inicialmente no comprendió que el productor era quien debía delimitar su parcela. Por ello, sugirió incorporar una vista general con todas las parcelas organizadas por zonas, ya que esta distribución se ajustaría mejor a su manera de planificar las visitas.

Finalmente, manifestó su disposición a incorporar SumaqAgro como herramienta de apoyo en sus actividades de asesoría agrícola, indicando que aprobaría su implementación junto con la cooperativa y que podría beneficiar inicialmente a unos 12 productores, principalmente por la posibilidad de consultar historiales y organizar las visitas técnicas. No obstante, expresó su preocupación por la adopción de la plataforma, debido a que si los agricultores no registran sus parcelas ni sus reportes, la información disponible para los asesores sería limitada.

---

### Entrevista 3 - Directivo de Cooperativa Agrícola (Segmento 2)

| **Dato** | **Información**                                        |
|---|--------------------------------------------------------|
| **Nombre Completo** | Diego                                                  |
| **Edad** | 30 años                                                |
| **Distrito** | Surco                                                  |
| **Ocupación** | Coordinador de operaciones de una cooperativa agrícola |
| **Fecha de Entrevista** | 14/11/2026                                             |
| **Duración** | 06:05                                                  |
| **URL del video** | (https://tinyurl.com/22wc9pys)                         |
| **Timing** | 14:22 - 20:25                                          |

**Screenshot del video:**

![Diego](assets/img/chapter-5/validation-interviews/validación-3.png)

**Resumen de Respuestas:**

Diego, de 30 años, se desempeña como coordinador de operaciones de una cooperativa agrícola que cuenta aproximadamente con 45 productores asociados, dedicados principalmente al cultivo de papa y café. Durante la entrevista, explicó que actualmente la gestión de los registros de producción, calidad y procedencia se realiza mediante archivos de Excel y documentos físicos. Esta forma de trabajo presenta algunas dificultades, especialmente cuando la información proporcionada por los agricultores está incompleta o cuando necesitan consultar nuevamente los datos de un productor.

Asimismo, señaló que una de sus principales dificultades se encuentra en la organización de la información durante los procesos de control de calidad y certificación. Debido a que los registros se encuentran distribuidos en diferentes archivos, resulta complicado consultar los datos de manera rápida y preparar la documentación necesaria para las auditorías. Frente a esta situación, manifestó que una plataforma como SumaqAgro sería beneficiosa para centralizar la información agrícola, facilitar el seguimiento de los productores y reducir el tiempo dedicado a las tareas administrativas.

Respecto a la trazabilidad, Diego considera fundamental disponer de registros digitales que permitan identificar la procedencia de cada lote y conocer información como el productor responsable, la parcela de origen, la fecha de cosecha, la cantidad recibida y las características de calidad. Tras observar el prototipo, valoró positivamente el módulo de gestión y certificación, destacando que la información se encuentra organizada y resulta sencilla de consultar. También consideró que los certificados digitales facilitarían la disponibilidad de documentos durante las auditorías y mejorarían el control de los productos recibidos.

Finalmente, manifestó su interés en implementar SumaqAgro en su cooperativa, siempre que la plataforma sea fácil de utilizar, funcione correctamente y tenga costos accesibles. Entre sus principales recomendaciones, propuso incorporar opciones para generar reportes de producción y calidad, exportar información a Excel y consultar rápidamente los registros de cada productor. Estas observaciones reflejan su interés en contar con una herramienta que optimice las actividades operativas y facilite la gestión de información dentro de la cooperativa.

---

### Entrevista 4 - Directiva de Cooperativa Agrícola (Segmento 2)

| **Dato** | **Información**                            |
|---|--------------------------------------------|
| **Nombre Completo** | Camila                                     |
| **Edad** | 32 años                                    |
| **Distrito** | Chorrillos                                 |
| **Ocupación** | Administradora de una cooperativa agrícola |
| **Fecha de Entrevista** | 14/11/2026                                 |
| **Duración** | 04:55                                      |
| **URL del video** | (https://tinyurl.com/22wc9pys)             |
| **Timing** | 20:25 - 25:20                              |

**Screenshot del video:**

![Camila](assets/img/chapter-5/validation-interviews/validación-4.png)

**Resumen de Respuestas:**

Camila, de 32 años, se desempeña como administradora de una cooperativa agrícola que cuenta aproximadamente con 80 productores asociados, dedicados principalmente a los cultivos de café y papa. Durante la entrevista, explicó que sus responsabilidades incluyen organizar la documentación, supervisar los registros de los productores y apoyar en los procesos de comercialización. Actualmente, la cooperativa utiliza archivos de Excel y documentos físicos para gestionar la información de producción, calidad y procedencia. Sin embargo, indicó que cada área maneja sus propios archivos, lo que dificulta encontrar información específica y mantener los registros actualizados.

En relación con los procesos de control de calidad y certificación, identificó como principal dificultad la recopilación de documentación, debido a que algunos productores entregan información fuera de tiempo o mantienen registros desactualizados. Esta situación puede generar retrasos en los procesos de certificación y en la preparación de documentos solicitados por los compradores. Por ello, considera que SumaqAgro podría contribuir a mejorar la organización de la cooperativa mediante la centralización de los datos y el acceso a información actualizada de cada productor.

Respecto a la trazabilidad, destacó la importancia de contar con registros digitales que permitan verificar la procedencia de los lotes y brindar mayor confianza a los compradores. También señaló que sería necesario disponer de información como el productor, la ubicación de la parcela, el tipo de cultivo, la fecha de cosecha, la cantidad producida y los resultados de las evaluaciones de calidad. Después de observar el módulo de gestión y certificación, manifestó que la interfaz le pareció fácil de comprender y que los certificados digitales representarían una mejora importante para acceder a la documentación durante las auditorías, evitando la pérdida de documentos físicos.

Finalmente, Camila expresó su interés en implementar SumaqAgro, ya que considera que responde a varias necesidades administrativas de su organización. No obstante, señaló que antes de adoptarla evaluaría aspectos como la facilidad de uso, el costo del servicio, la seguridad de la información y el ahorro de tiempo que podría generar. Entre sus recomendaciones, propuso incorporar reportes automáticos, opciones para descargar certificados, un historial de cada productor y notificaciones que permitan identificar registros pendientes de actualización o fechas importantes relacionadas con las certificaciones.

---

### Entrevista 5 – Ingeniero agrónomo / Asesor técnico (Segmento 3)

| Campo | Información                                       |
|---|---------------------------------------------------|
| Nombre completo | Italo Raúl Pancorro Borós                         |
| Edad | 24 años                                           |
| Distrito | Junín - Huancayo                                  |
| Ocupación | Ingeniero agrónomo y asesor técnico independiente |
| Fecha de entrevista | 14/11/2026                                        |
| Duración | 09:30                                             |
| URL del video (Microsoft Stream) | (https://tinyurl.com/22wc9pys)                    |
| Minutaje | 25:20 – 34:50                                     |

#### Captura de la entrevista

![Italo](assets/img/chapter-5/validation-interviews/validación-5.png)

#### Resumen de Respuestas

Italo cuenta con cinco años de experiencia en extensión agrícola y asistencia técnica. Supervisa entre 18 y 22 agricultores y aproximadamente 35 a 45 parcelas al mes. Actualmente registra sus visitas en cuadernos, WhatsApp y Excel, por lo que considera fundamental centralizar la información en un historial digital.

Considera que el monitoreo satelital permite detectar zonas críticas, priorizar visitas y ahorrar tiempo y combustible. Valora los indicadores de vegetación, humedad y alertas agroclimáticas como herramientas de apoyo, sin reemplazar las inspecciones en campo. Recomienda mejorar el modo offline para guardar inspecciones y recetas, adjuntar fotografías y ampliar la capacidad de parcelas del plan para asesores técnicos.

### 5.4. Video About-the-Product

<p>
  El video "About the Product" presenta la propuesta de valor de SumaqAgro, el problema que resuelve
  y cómo funciona la plataforma para sus tres segmentos objetivo: pequeños y medianos agricultores
  independientes, directivos de cooperativas agrarias e ingenieros agrónomos y asesores técnicos.
  Está dirigido a los visitantes del Landing Page, que desean conocer el modelo de negocio y las
  características del producto, y a los usuarios de la aplicación, que desean realizar tareas de
  monitoreo, costos y certificación. El tono es cercano, claro y confiable, consistente con el del
  producto.
</p>

<h4>Información General del Video</h4>

<table border="1" cellpadding="4" cellspacing="0">
  <tbody>
    <tr>
      <td><strong>Título del Video</strong></td>
      <td>[SumaqAgro: Accessible Precision Agriculture for Potato and Coffee Farmers]</td>
    </tr>
    <tr>
      <td><strong>Nombre del archivo</strong></td>
      <td>upc-pre-202620-1ASI0729-2620-7742-dymbia-about-the-product-sprint-3.mp4</td>
    </tr>
    <tr>
      <td><strong>Duración</strong></td>
      <td>[1 minuto 45 segundos]</td>
    </tr>
    <tr>
      <td><strong>Fecha de Grabación</strong></td>
      <td>[15/11/2026]</td>
    </tr>
    <tr>
      <td><strong>URL YouTube</strong></td>
      <td><a href="https://youtu.be/QbSAPVPGZsU">https://youtu.be/QbSAPVPGZsU</a></td>
    </tr>
    <tr>
      <td><strong>URL Microsoft Stream</strong></td>
      <td><a href="https://upcedupe-my.sharepoint.com/personal/u20241e417_upc_edu_pe/_layouts/15/AccessDenied.aspx?Source=https%3A%2F%2Fupcedupe-my.sharepoint.com%2Fpersonal%2Fu20241e417_upc_edu_pe%2Fdocuments%2Fvideo+project+5.mp4%3Fweb%3D1&correlation=d6324fa2-10ee-e000-3696-d4d5f11b65eb&Type=item&name=4d49010d-13d2-4a1e-99b9-1143a1033fdc&listItemId=144&listItemUniqueId=83413582-5dac-44f5-9849-855dd2146e07&allowautoredirecttosource=true">https://upcedupe-my.sharepoint.com/personal/u20241e417_upc_edu_pe/_layouts/15/AccessDenied.aspx?Source=https%3A%2F%2Fupcedupe-my.sharepoint.com%2Fpersonal%2Fu20241e417_upc_edu_pe%2Fdocuments%2Fvideo+project+5.mp4%3Fweb%3D1&correlation=d6324fa2-10ee-e000-3696-d4d5f11b65eb&Type=item&name=4d49010d-13d2-4a1e-99b9-1143a1033fdc&listItemId=144&listItemUniqueId=83413582-5dac-44f5-9849-855dd2146e07&allowautoredirecttosource=true</a></td>
    </tr>
  </tbody>
</table>

<p><strong>Screenshot del video:</strong></p>
<a href="https://youtu.be/QbSAPVPGZsU">
  <img src="assets/img/chapter-5/about-product.png" alt="Screenshot del Video About-the-Product de SumaqAgro">
</a>

<h4>Contenido del Video</h4>

<p>
  El video está estructurado en las siguientes secciones:
</p>

<ol>
  <li>
    <strong>Introducción (0:00 - 0:20):</strong> Presentación de la startup Dymbia y de la problemática
    del agro peruano: pérdidas de cosecha por heladas, sequías y plagas detectadas tarde, y costos de
    producción que no se registran.
  </li>
  <li>
    <strong>Propuesta de Solución (0:20 - 0:44):</strong> Presentación de SumaqAgro como una plataforma
    web de agricultura de precisión, basada en datos satelitales abiertos y sin sensores ni hardware
    en campo, junto con sus cuatro soluciones y los planes Semilla, Cooperativa Pro y Asesor Técnico.
  </li>
  <li>
    <strong>Funcionalidades Principales (0:44 - 1:16):</strong> Escenas de interacción con la aplicación:
    <ul>
      <li>Registro y delimitación de parcelas en el mapa</li>
      <li>Monitoreo de la salud del cultivo con los índices NDVI y NDWI</li>
      <li>Registro de gastos de campaña y cálculo del precio de equilibrio por saco</li>
      <li>Reportes de plagas, inspecciones y recetas técnicas</li>
      <li>Certificados digitales de calidad y origen con código QR</li>
    </ul>
  </li>
  <li>
    <strong>Testimonios (1:16 - 1:40):</strong> Opiniones de usuarios que participaron en las entrevistas
    de validación, una por cada segmento objetivo: [agricultor independiente], [director de cooperativa]
    e ingeniero agrónomo y asesor técnico.
  </li>
  <li>
    <strong>Llamada a la Acción (1:40 - 1:45):</strong> Invitación a visitar el Landing Page de SumaqAgro
    y conocer sus planes.
  </li>
</ol>

<h4>Inscripción en Landing Page</h4>

<p>
  El video "About the Product" está incrustado en el Landing Page, en la sección de Soluciones,
  permitiendo que los visitantes vean una introducción visual de SumaqAgro antes de consultar los
  planes de suscripción o contactarnos.
</p>

<p>
  <strong>URL del Landing Page donde está el video:</strong>
  <a href="https://sumaqagro-landing-page.pages.dev/#solutions">https://sumaqagro-landing-page.pages.dev/#solutions</a>
</p>
