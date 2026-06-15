# Zutlemane (Zutport) — Travel Booking App

Prototipo de reserva de vuelos y hoteles con interfaz moderna, códigos de barras en tickets y seguimiento de millas. Construido con Flutter y GetX.

## Stack

| Capa | Tecnología |
|------|-----------|
| Framework | Flutter 3.x / Dart 3.x |
| Estado | GetX (screen dimensions, plataforma) |
| UI | Material Design personalizado |
| Códigos de barras | barcode_widget (Code128) |
| CI/CD | GitHub Actions (analyze + test) |

## Funcionalidades

- Pantalla de inicio con saludo, búsqueda, vuelos próximos y hoteles recomendados
- Búsqueda de vuelos/hoteles con campos de origen/destino y promociones
- Tickets detallados con código de barras Code128
- Perfil de usuario con insignia premium, notificaciones y acumulación de millas
- Barra de navegación inferior con 4 tabs: Home, Search, Ticket, Profile
- Datos hardcoded de ejemplo (2 vuelos, 3 hoteles, historial de millas)

## Estructura

```
lib/
├── main.dart           # Entry point + tema
├── bottom.dart         # Barra de navegación inferior
├── home.dart           # Pantalla de inicio
├── search.dart         # Búsqueda de vuelos/hoteles
├── ticket.dart         # Detalle de ticket con barcode
├── hotel.dart          # Widget de hotel
├── profile.dart        # Perfil y millas
├── utils.dart          # Constantes + datos hardcoded
└── widgets.dart        # Componentes reutilizables
```

## Inicio rápido

```bash
flutter pub get
flutter run
```

## Pruebas

```bash
flutter test
```

## Notas

- Prototipo UI — datos hardcoded, sin backend ni API real
- Código de barras funcional con barcode_widget
- Imágenes de assets referenciadas pero no incluidas (`assets/images/`)
- Usa ciudades de Indonesia como ejemplo (Parung, Bogor, Sukabumi)
