import 'package:flutter/material.dart';

class Seccion {
  final int id;
  final String name;
  final String subtitle;
  final String description;
  final Color color;

  Seccion(
      {required this.id,
      required this.name,
      required this.subtitle,
      required this.description,
      required this.color});

  static final List<Seccion> listSecciones = [
    Seccion(
      id: 1,
      name: 'IMSS',
      subtitle: 'Realiza tus trámites con el IMSS',
      description:
          'El IMSS, es la institución con mayor presencia en la atención a la salud y en la protección social de los mexicanos.',
      color: const Color(0xFF13322b),
    ),
    Seccion(
      id: 2,
      name: 'Recibo de luz CFE',
      subtitle: 'Te ayudamos con tus gestiones del recibo de luz',
      description: 'Comisión Federal de Electricidad',
      color: const Color(0xFF07905b),
    ),
    Seccion(
      id: 3,
      name: 'Infonavit',
      subtitle: 'Información y guía especializada sobre el Crédito Infonavit',
      description:
          'El Instituto del Fondo Nacional de la Vivienda para los Trabajadores (INFONAVIT) es una organismo público tripartito de México, que cuenta con la participación del sector de los trabajadores, el sector empresarial y el gobierno.',
      color: const Color(0xFF9E1B31),
    ),
    Seccion(
      id: 4,
      name: 'Buró de Crédito',
      subtitle: 'Checar Buró de Crédito',
      description:
          'Obtén tu reporte de crédito gratuito, la calificación de tu historial crediticio y diferentes soluciones contra fraude y robo de identidad.',
      color: const Color(0xFF0259A7),
    ),
    Seccion(
      id: 5,
      name: 'Fonacot',
      subtitle:
          'Información sobre Fonacot: Estado de cuentas, créditos y préstamos',
      description:
          'Instituto del Fondo Nacional para el Consumo de los Trabajadores.',
      color: const Color(0xFF7C7D80),
    ),
    Seccion(
      id: 6,
      name: 'CURP / RFC',
      subtitle: 'Consultar e Imprimir',
      description:
          'La Clave Única de Registro de Población (conocido como la/el CURP) es un código alfanumérico único de identidad de 18 caracteres utilizado para identificar oficialmente tanto a residentes como a ciudadanos mexicanos de todo el país.',
      color: const Color(0xFF6BA900),
    ),
    Seccion(
      id: 7,
      name: 'Cédula Profesional',
      subtitle: 'Consultar y solicitar cita',
      description:
          'La Cédula Profesional es un documento legal e intransferible, que da legalidad a la formación académica de una persona. Una vez que la persona termina sus estudios y obtiene su título, debe tramitar esta credencial.',
      color: const Color(0xFF0C231E),
    ),
  ];
}
