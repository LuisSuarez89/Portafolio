// Fuente única de verdad para el contenido del CV y la configuración del chatbot.
const String chatbotUrl = 'https://twilight-rain-7f04.luiscsuarez89.workers.dev/';

class PersonalInfo {
  const PersonalInfo({
    required this.name,
    required this.title,
    required this.email,
    required this.phone,
    required this.location,
    required this.linkedin,
    required this.github,
    required this.availability,
    required this.profile,
  });

  final String name;
  final String title;
  final String email;
  final String phone;
  final String location;
  final String linkedin;
  final String github;
  final String availability;
  final String profile;
}

class Experience {
  const Experience({required this.role, required this.company, required this.period, required this.achievements});
  final String role;
  final String company;
  final String period;
  final List<String> achievements;
}

class Education {
  const Education({required this.title, required this.institution, required this.period});
  final String title;
  final String institution;
  final String period;
}

class Certification {
  const Certification({required this.name, required this.issuer, required this.date});
  final String name;
  final String issuer;
  final String date;
}

class SkillCategory {
  const SkillCategory({required this.name, required this.skills});
  final String name;
  final List<String> skills;
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

const experiences = [
  Experience(role: 'Coordinador de Operaciones', company: 'Tpaga (Fintech)', period: 'Jul 2017 – Dic 2025', achievements: [
    'Diseñé e implementé tableros de métricas operativas en Power BI y Metabase desde cero, centralizando el seguimiento del área y eliminando la dependencia de reportes manuales',
    'Automaticé procesos manuales recurrentes mediante Retool y herramientas low-code, reduciendo el tiempo de ejecución de tareas operativas y liberando capacidad del equipo',
    'Brindé soporte técnico a clientes en integración de APIs, cubriendo el ciclo completo desde preventa hasta postventa',
    'Gestioné y parametricé bases de datos en PostgreSQL, garantizando la consistencia y disponibilidad de información crítica para la operación',
    'Lideré la planeación y proyección de mejoras del área dentro de un equipo pequeño y multifuncional',
  ]),
  Experience(role: 'Líder de Sistemas', company: 'Persom S.A.S.', period: 'May 2017 – Jul 2017', achievements: [
    'Soporte integral de sistemas para el Parque Salitre Mágico, asegurando la continuidad operativa durante temporadas de alta afluencia',
  ]),
  Experience(role: 'Analista de Soporte TI', company: 'System Technology Solutions (TSS)', period: 'Jun 2016 – Abr 2017', achievements: [
    'Ejecución de proyectos de migración de equipos, actualizaciones de infraestructura y soporte técnico a distintas entidades y clientes de la empresa',
  ]),
];

const education = [
  Education(title: 'Ingeniería de Sistemas', institution: 'Fundación Universitaria Konrad Lorenz', period: 'Jul 2017 – Dic 2021'),
  Education(title: 'Técnico en Programación de Software', institution: 'SENA', period: 'Abr 2014 – Abr 2015'),
];

const certifications = [
  Certification(name: 'Scrum Fundamentals Certified (SFC)', issuer: 'SCRUMstudy', date: 'Feb 2026'),
  Certification(name: 'Microsoft Azure Fundamentals (AZ-900)', issuer: 'Microsoft', date: '2026'),
  Certification(name: 'ITIL 4 Foundation', issuer: 'Udemy', date: '2026'),
  Certification(name: 'Elements of AI', issuer: 'University of Helsinki & MinnaLearn', date: 'Jun 2026'),
];

const skillCategories = [
  SkillCategory(name: 'Datos & BI', skills: ['SQL', 'PostgreSQL', 'Power BI', 'Metabase', 'DAX']),
  SkillCategory(name: 'Automatización', skills: ['Retool', 'Python', 'APIs REST', 'Low-code', 'Power Automate']),
  SkillCategory(name: 'Desarrollo & Analítica', skills: ['Flutter', 'Dart', 'R', 'Python', 'Git', 'GitHub Actions']),
  SkillCategory(name: 'Cloud & Metodologías', skills: ['Azure (AZ-900)', 'ITIL 4', 'Scrum', 'Git', 'GitHub Actions']),
  SkillCategory(name: 'IA aplicada', skills: ['Groq API', 'Prompt Engineering', 'LLM integration', 'Chatbots IA', 'Automatización con IA']),
];
