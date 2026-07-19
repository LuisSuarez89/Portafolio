# luis_cv

Portafolio/CV interactivo en Flutter Web para Luis Carlos Suárez Acosta, con diseño dark responsive y chatbot flotante de IA.

## Cambiar la URL del chatbot

1. Abre `lib/data/cv_data.dart`.
2. Reemplaza el placeholder de `chatbotUrl`:

```dart
const String chatbotUrl = 'https://luis-cv-chatbot.USUARIO.workers.dev';
```

por la URL real de tu Worker o API compatible con el contrato:

```json
{ "message": "texto", "history": [{ "role": "user", "content": "..." }] }
```

La respuesta debe ser:

```json
{ "reply": "respuesta del asistente" }
```

## Primer deploy manual

```bash
flutter pub get
flutter build web --release --base-href "/luis-cv/"
```

Luego habilita GitHub Pages en el repositorio y usa GitHub Actions como fuente de despliegue. También puedes ejecutar manualmente el workflow **Deploy Flutter Web to GitHub Pages** desde la pestaña Actions después de subir el proyecto a `main`.

## Personalizar contenido

Todo el contenido del CV vive en `lib/data/cv_data.dart`: datos personales, perfil, experiencia, educación, certificaciones, skills y URL del chatbot. Edita ese archivo para actualizar la información sin tocar los widgets.
