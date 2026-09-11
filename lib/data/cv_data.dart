// Fuente única de verdad para el contenido del CV, sus traducciones y la configuración del chatbot.
const String chatbotUrl = 'https://twilight-rain-7f04.luiscsuarez89.workers.dev/';

enum SiteLanguage { en, es }

class PersonalInfo {
  const PersonalInfo({required this.name, required this.title, required this.email, required this.phone, required this.location, required this.linkedin, required this.github, required this.availability, required this.profile});
  final String name, title, email, phone, location, linkedin, github, availability, profile;
}

class Experience {
  const Experience({required this.role, required this.company, required this.period, required this.achievements});
  final String role, company, period;
  final List<String> achievements;
}

class Education {
  const Education({required this.title, required this.institution, required this.period});
  final String title, institution, period;
}

class Certification {
  const Certification({required this.name, required this.issuer, required this.date});
  final String name, issuer, date;
}

class SkillCategory {
  const SkillCategory({required this.name, required this.skills});
  final String name;
  final List<String> skills;
}

class Project {
  const Project({required this.name, required this.description, required this.stack, required this.github, required this.icon});
  final String name, description, github, icon;
  final List<String> stack;
}

class CvContent {
  const CvContent({required this.personalInfo, required this.experiences, required this.education, required this.certifications, required this.skillCategories, required this.projects});
  final PersonalInfo personalInfo;
  final List<Experience> experiences;
  final List<Education> education;
  final List<Certification> certifications;
  final List<SkillCategory> skillCategories;
  final List<Project> projects;
}

class UiText {
  const UiText({required this.about, required this.experience, required this.education, required this.skills, required this.projects, required this.contact, required this.remote, required this.hybrid, required this.downloadCv, required this.nameField, required this.emailField, required this.messageField, required this.sendEmail, required this.githubButton, required this.mailSubject, required this.mailBodyName, required this.mailBodyEmail, required this.aiButton, required this.newLabel, required this.chatInitials, required this.chatTitle, required this.chatSubtitle, required this.chatWelcome, required this.chatSuggestions, required this.chatHint, required this.rateLimitMessage, required this.invalidReplyMessage, required this.connectionErrorMessage});
  final String about, experience, education, skills, projects, contact, remote, hybrid, downloadCv, nameField, emailField, messageField, sendEmail, githubButton, mailSubject, mailBodyName, mailBodyEmail, aiButton, newLabel, chatInitials, chatTitle, chatSubtitle, chatWelcome, chatHint, rateLimitMessage, invalidReplyMessage, connectionErrorMessage;
  final List<String> chatSuggestions;
  List<String> get navLabels => [about, experience, education, skills, projects, contact];
}

const personalInfo = PersonalInfo(
  name: 'Luis Carlos Suárez Acosta',
  title: 'Analista de Datos | BI | Operaciones · Fintech',
  email: 'luisc.suarez@hotmail.com',
  phone: '+57 318 795 3798',
  location: 'Bogotá D.C., Colombia',
  linkedin: 'https://www.linkedin.com/in/luis-suárez',
  github: 'https://github.com/LuisSuarez89',
  availability: 'Remoto o híbrido',
  profile: 'Ingeniero de Sistemas con 8 años de experiencia en operaciones y analítica de datos en el sector fintech. Especializado en diseño de tableros e informes con Power BI y Metabase, consultas y parametrización en SQL/PostgreSQL, y automatización de procesos operativos mediante herramientas low-code (Retool). Experiencia en soporte a integraciones API y en coordinar mejoras de proceso junto a equipos multifuncionales.',
);

const personalInfoEn = PersonalInfo(
  name: 'Luis Carlos Suárez Acosta',
  title: 'Data Analyst | BI | Operations · Fintech',
  email: 'luisc.suarez@hotmail.com',
  phone: '+57 318 795 3798',
  location: 'Bogotá D.C., Colombia',
  linkedin: 'https://www.linkedin.com/in/luis-suárez',
  github: 'https://github.com/LuisSuarez89',
  availability: 'Remote or hybrid',
  profile: 'Systems Engineer with 8 years of experience in operations and data analytics in the fintech sector. Specialized in designing dashboards and reports with Power BI and Metabase, SQL/PostgreSQL queries and configuration, and operational process automation with low-code tools such as Retool. Experienced in supporting API integrations and coordinating process improvements with cross-functional teams.',
);

const experiences = [
  Experience(role: 'Coordinador de Operaciones', company: 'Tpaga (Fintech)', period: 'Jul 2017 – Dic 2025', achievements: [
    'Diseñé e implementé tableros de métricas operativas en Power BI y Metabase desde cero, centralizando el seguimiento del área y eliminando la dependencia de reportes manuales',
    'Automaticé procesos manuales recurrentes mediante Retool y herramientas low-code, reduciendo el tiempo de ejecución de tareas operativas y liberando capacidad del equipo',
    'Brindé soporte técnico a clientes en integración de APIs, cubriendo el ciclo completo desde preventa hasta postventa',
    'Gestioné y parametricé bases de datos en PostgreSQL, garantizando la consistencia y disponibilidad de información crítica para la operación',
    'Lideré la planeación y proyección de mejoras del área dentro de un equipo pequeño y multifuncional',
  ]),
  Experience(role: 'Líder de Sistemas', company: 'Persom S.A.S.', period: 'May 2017 – Jul 2017', achievements: ['Soporte integral de sistemas para el Parque Salitre Mágico, asegurando la continuidad operativa durante temporadas de alta afluencia']),
  Experience(role: 'Analista de Soporte TI', company: 'System Technology Solutions (TSS)', period: 'Jun 2016 – Abr 2017', achievements: ['Ejecución de proyectos de migración de equipos, actualizaciones de infraestructura y soporte técnico a distintas entidades y clientes de la empresa']),
];

const experiencesEn = [
  Experience(role: 'Operations Coordinator', company: 'Tpaga (Fintech)', period: 'Jul 2017 – Dec 2025', achievements: [
    'Designed and implemented operational metrics dashboards in Power BI and Metabase from scratch, centralizing area monitoring and eliminating reliance on manual reports',
    'Automated recurring manual processes with Retool and low-code tools, reducing operational task execution time and freeing team capacity',
    'Provided technical support to clients integrating APIs, covering the full cycle from pre-sales to post-sales',
    'Managed and configured PostgreSQL databases, ensuring consistency and availability of critical operational information',
    'Led planning and projection of area improvements within a small, cross-functional team',
  ]),
  Experience(role: 'Systems Lead', company: 'Persom S.A.S.', period: 'May 2017 – Jul 2017', achievements: ['Provided end-to-end systems support for Parque Salitre Mágico, ensuring operational continuity during high-traffic seasons']),
  Experience(role: 'IT Support Analyst', company: 'System Technology Solutions (TSS)', period: 'Jun 2016 – Apr 2017', achievements: ['Executed equipment migration projects, infrastructure updates, and technical support for several company clients and organizations']),
];

const education = [Education(title: 'Máster en Análisis y Visualización de Datos Aplicados', institution: 'Universitat Oberta de Catalunya', period: 'Sep 2026 – Actualidad'), Education(title: 'Ingeniería de Sistemas', institution: 'Fundación Universitaria Konrad Lorenz', period: 'Jul 2017 – Dic 2021'), Education(title: 'Técnico en Programación de Software', institution: 'SENA', period: 'Abr 2014 – Abr 2015')];
const educationEn = [Education(title: "Master's in Applied Data Analysis and Visualization", institution: 'Universitat Oberta de Catalunya', period: 'Sep 2026 – Present'), Education(title: 'Systems Engineering', institution: 'Fundación Universitaria Konrad Lorenz', period: 'Jul 2017 – Dec 2021'), Education(title: 'Software Programming Technician', institution: 'SENA', period: 'Apr 2014 – Apr 2015')];

const certifications = [Certification(name: 'Scrum Fundamentals Certified (SFC)', issuer: 'SCRUMstudy', date: 'Feb 2026'), Certification(name: 'Microsoft Azure Fundamentals (AZ-900)', issuer: 'Microsoft', date: '2026'), Certification(name: 'ITIL 4 Foundation', issuer: 'Udemy', date: '2026'), Certification(name: 'Elements of AI', issuer: 'University of Helsinki & MinnaLearn', date: 'Jun 2026')];
const certificationsEn = certifications;

const skillCategories = [SkillCategory(name: 'Datos & BI', skills: ['SQL', 'PostgreSQL', 'Power BI', 'Metabase', 'DAX']), SkillCategory(name: 'Automatización', skills: ['Retool', 'Python', 'APIs REST', 'Low-code', 'Power Automate']), SkillCategory(name: 'Desarrollo & Analítica', skills: ['Flutter', 'Dart', 'R', 'Python', 'Git', 'GitHub Actions']), SkillCategory(name: 'Cloud & Metodologías', skills: ['Azure (AZ-900)', 'ITIL 4', 'Scrum', 'Git', 'GitHub Actions']), SkillCategory(name: 'IA aplicada', skills: ['Groq API', 'Prompt Engineering', 'LLM integration', 'Chatbots IA', 'Automatización con IA'])];
const skillCategoriesEn = [SkillCategory(name: 'Data & BI', skills: ['SQL', 'PostgreSQL', 'Power BI', 'Metabase', 'DAX']), SkillCategory(name: 'Automation', skills: ['Retool', 'Python', 'REST APIs', 'Low-code', 'Power Automate']), SkillCategory(name: 'Development & Analytics', skills: ['Flutter', 'Dart', 'R', 'Python', 'Git', 'GitHub Actions']), SkillCategory(name: 'Cloud & Methodologies', skills: ['Azure (AZ-900)', 'ITIL 4', 'Scrum', 'Git', 'GitHub Actions']), SkillCategory(name: 'Applied AI', skills: ['Groq API', 'Prompt Engineering', 'LLM integration', 'AI Chatbots', 'AI-powered automation'])];

const projects = [
  Project(name: 'SOS Job Hunter', description: 'Pipeline automatizado de búsqueda de empleo. Scrapea ofertas reales de múltiples bolsas de trabajo en Colombia, México, Argentina y Chile, las evalúa con IA contra un perfil específico, filtra por compatibilidad y salario, y envía un correo diario con el análisis. Corre gratis en GitHub Actions.', stack: ['Python', 'Groq API', 'GitHub Actions', 'BeautifulSoup', 'Google Apps Script'], github: 'https://github.com/LuisSuarez89/job-search', icon: '🔍'),
  Project(name: 'CNSC Watcher', description: 'Monitor semanal de convocatorias de empleo público (CNSC/SIMO). Revisa automáticamente las convocatorias en desarrollo, evalúa con IA cuáles son relevantes para el perfil técnico y notifica solo cuando hay novedades.', stack: ['Python', 'Groq API', 'GitHub Actions', 'BeautifulSoup'], github: 'https://github.com/LuisSuarez89/job-search', icon: '🏛️'),
  Project(name: 'SOS Rider Colombia', description: 'Sistema de identificación de emergencia para motociclistas. Genera carnets digitales con código QR único por usuario. Al escanear el QR, muestra información médica y de contacto de emergencia. Despliegue serverless.', stack: ['Flutter', 'QR Generation', 'Serverless', 'Firebase'], github: 'https://github.com/LuisSuarez89/SOS-Rider', icon: '🏍️'),
  Project(name: 'CV Interactivo con IA', description: 'Este mismo sitio. Portafolio personal construido en Flutter Web con chatbot de IA integrado, desplegado en GitHub Pages. El chatbot responde preguntas sobre experiencia, stack técnico y contacto en tiempo real.', stack: ['Flutter Web', 'Cloudflare Workers', 'Groq API', 'GitHub Actions', 'GitHub Pages'], github: 'https://github.com/LuisSuarez89/Portafolio', icon: '💼'),
];

const projectsEn = [
  Project(name: 'SOS Job Hunter', description: 'Automated job-search pipeline. It scrapes real openings from multiple job boards in Colombia, Mexico, Argentina, and Chile, evaluates them with AI against a specific profile, filters by fit and salary, and sends a daily email with the analysis. It runs for free on GitHub Actions.', stack: ['Python', 'Groq API', 'GitHub Actions', 'BeautifulSoup', 'Google Apps Script'], github: 'https://github.com/LuisSuarez89/job-search', icon: '🔍'),
  Project(name: 'CNSC Watcher', description: 'Weekly public-sector job call monitor (CNSC/SIMO). It automatically reviews open calls in progress, evaluates with AI which ones are relevant to the technical profile, and notifies only when there are updates.', stack: ['Python', 'Groq API', 'GitHub Actions', 'BeautifulSoup'], github: 'https://github.com/LuisSuarez89/job-search', icon: '🏛️'),
  Project(name: 'SOS Rider Colombia', description: 'Emergency identification system for motorcyclists. It generates digital ID cards with a unique QR code per user. When the QR is scanned, it displays medical and emergency contact information. Serverless deployment.', stack: ['Flutter', 'QR Generation', 'Serverless', 'Firebase'], github: 'https://github.com/LuisSuarez89/SOS-Rider', icon: '🏍️'),
  Project(name: 'AI Interactive CV', description: 'This website. A personal portfolio built with Flutter Web and an integrated AI chatbot, deployed on GitHub Pages. The chatbot answers questions about experience, technical stack, and contact information in real time.', stack: ['Flutter Web', 'Cloudflare Workers', 'Groq API', 'GitHub Actions', 'GitHub Pages'], github: 'https://github.com/LuisSuarez89/Portafolio', icon: '💼'),
];

const uiTextEs = UiText(about: 'Sobre mí', experience: 'Experiencia', education: 'Educación', skills: 'Skills', projects: 'Proyectos', contact: 'Contacto', remote: 'Remoto ✓', hybrid: 'Híbrido ✓', downloadCv: 'Descargar CV', nameField: 'Nombre', emailField: 'Email', messageField: 'Mensaje', sendEmail: 'Enviar por email', githubButton: 'Ver en GitHub', mailSubject: 'Contacto desde portafolio', mailBodyName: 'Nombre', mailBodyEmail: 'Email', aiButton: 'Pregúntale a mi IA', newLabel: 'Nuevo', chatInitials: 'IA', chatTitle: 'Asistente IA de Luis', chatSubtitle: 'Responde sobre experiencia, skills y disponibilidad', chatWelcome: '¡Hola! 👋 Soy el asistente virtual de Luis Carlos.\nPuedo contarte sobre su experiencia, proyectos, stack técnico\no cómo contactarlo. ¿En qué puedo ayudarte?', chatSuggestions: ['💼 ¿Cuál es su experiencia?', '🛠️ ¿Qué stack maneja?', '📁 ¿Qué proyectos ha hecho?', '📬 ¿Cómo lo contacto?'], chatHint: 'Ej: ¿Qué sabe de Flutter, R e IA?', rateLimitMessage: 'Estás enviando mensajes muy rápido. Espera unos segundos e intenta de nuevo. 😊', invalidReplyMessage: 'No recibí una respuesta válida.', connectionErrorMessage: 'No pude conectar con el chatbot. Verifica la URL configurada en `cv_data.dart`.');
const uiTextEn = UiText(about: 'About me', experience: 'Experience', education: 'Education', skills: 'Skills', projects: 'Projects', contact: 'Contact', remote: 'Remote ✓', hybrid: 'Hybrid ✓', downloadCv: 'Download CV', nameField: 'Name', emailField: 'Email', messageField: 'Message', sendEmail: 'Send by email', githubButton: 'View on GitHub', mailSubject: 'Contact from portfolio', mailBodyName: 'Name', mailBodyEmail: 'Email', aiButton: 'Ask my AI', newLabel: 'New', chatInitials: 'AI', chatTitle: "Luis's AI Assistant", chatSubtitle: 'Answers about experience, skills, and availability', chatWelcome: "Hi! 👋 I'm Luis Carlos's virtual assistant.\nI can tell you about his experience, projects, technical stack\nor how to contact him. How can I help you?", chatSuggestions: ['💼 What is his experience?', '🛠️ What stack does he use?', '📁 What projects has he built?', '📬 How can I contact him?'], chatHint: 'E.g. What does he know about Flutter, R, and AI?', rateLimitMessage: 'You are sending messages too quickly. Wait a few seconds and try again. 😊', invalidReplyMessage: 'I did not receive a valid response.', connectionErrorMessage: 'I could not connect to the chatbot. Check the URL configured in `cv_data.dart`.');

CvContent cvContent(SiteLanguage language) => language == SiteLanguage.en ? const CvContent(personalInfo: personalInfoEn, experiences: experiencesEn, education: educationEn, certifications: certificationsEn, skillCategories: skillCategoriesEn, projects: projectsEn) : const CvContent(personalInfo: personalInfo, experiences: experiences, education: education, certifications: certifications, skillCategories: skillCategories, projects: projects);
UiText uiText(SiteLanguage language) => language == SiteLanguage.en ? uiTextEn : uiTextEs;
