import 'package:flutter/material.dart';

class TramiteModel {
  final String title;
  final String description;
  final String? url;
  final int idServicio;
  //final List<Faq>? faq;
  final String? buttonTitle;
  final Widget? content;
  final String? urlVideo;

  TramiteModel({
    required this.title,
    required this.description,
    required this.idServicio,
    //this.faq,
    this.url,
    this.buttonTitle,
    this.content,
    this.urlVideo,
  });
  static final List<TramiteModel> listTramitesImss = [
    TramiteModel(
      title: 'Agendar Cita Médica',
      idServicio: 1,
      url: 'https://citamedicadigital.imss.gob.mx/CMW/iniciarRCM.htm',
      description: '''<p>Cita M&eacute;dica Digital</p>
              <p>Ahora es posible agendar tu cita m&eacute;dica familiar para ti o tus beneficiarios a trav&eacute;s de Internet.</p>
              <p>Requisitos:&nbsp;<strong>CURP, NSS, correo electr&oacute;nico personal y estar vigente en el IMSS</strong></p>''',
    ),
    TramiteModel(
      title: 'Asignación de Número de Seguridad Social (NSS)',
      description:
          '''<p>(Solicitud de Asignaci&oacute;n o Localizaci&oacute;n del N&uacute;mero de Seguridad Social)</p>
<p>&iquest;Necesitas obtener tu N&uacute;mero de Seguridad Social para asegurarte, te lo solicita tu empresa o tu escuela? Obtenlo en l&iacute;nea.</p>
<p>Requisitos:<strong>&nbsp;CURP y correo electr&oacute;nico personal.</strong></p>''',
      idServicio: 1,
      url:
          'https://serviciosdigitales.imss.gob.mx/gestionAsegurados-web-externo/asignacionNSS',
    ),
    TramiteModel(
      title: 'Consulta si están vigentes tus derechos en el IMSS',
      description: '''<p>(Solicitud de Constancia de Vigencia de Derechos)</p>
<p>Si quieres saber si est&aacute;s dado de alta en el IMSS o si tus beneficiarios(as) registrados a&uacute;n est&aacute;n vigentes, puedes obtener una Constancia de Vigencia de Derechos.</p>
<p>Requisitos:<strong>&nbsp;CURP, N&uacute;mero de Seguridad Social y correo electr&oacute;nico personal.</strong></p>''',
      idServicio: 1,
      url:
          'https://serviciosdigitales.imss.gob.mx/gestionAsegurados-web-externo/vigencia',
    ),
    TramiteModel(
      title: 'Conoce tus Semanas Cotizadas en el IMSS',
      description: '''<p>(Reporte de Semanas Cotizadas)</p>
<p>Si quieres saber cu&aacute;ntas semanas cotizadas tienes registradas en el IMSS, solicita tu Reporte de Semanas Cotizadas; podr&aacute;s obtener la informaci&oacute;n detallada de tus &uacute;ltimos 5 patrones o inclusive solicitar un historial de 1982 a la fecha.</p>
<p>Requisitos:<strong>&nbsp;CURP, N&uacute;mero de Seguridad Social y correo electr&oacute;nico personal.</strong></p>''',
      idServicio: 1,
      url:
          'https://serviciosdigitales.imss.gob.mx/semanascotizadas-web/usuarios/IngresoAsegurado',
    ),
    TramiteModel(
        title: 'Alta en Clínica o UMF',
        idServicio: 1,
        url:
            'https://serviciosdigitales.imss.gob.mx/portal-ciudadano-web-externo/derechohabientes/tramite/registro',
        description:
            '''<p>(Alta en Cl&iacute;nica de Adscripci&oacute;n o Unidad de Medicina Familiar)</p>
<p>Si eres asegurado(a) vigente o pensionado(a), puedes registrarte en la Cl&iacute;nica o Unidad de Medicina Familiar (UMF) del IMSS que te corresponda, para recibir los servicios m&eacute;dicos del Instituto.</p>
<p>Requisitos:<strong>&nbsp;CURP, C&oacute;digo Postal de tu domicilio y correo electr&oacute;nico personal.</strong></p>'''),
    TramiteModel(
      title: 'Consulta de incapacidades',
      description:
          '''<p>(Servicios de informaci&oacute;n sobre incapacidad para Asegurado)</p>
<p>Si eres asegurado(a) vigente ya puedes consultar informaci&oacute;n relativa a una incapacidad que reci&eacute;n te fue expedida por el Instituto hasta el pago del subsidio que corresponda, o incluso el historial de incapacidades que hayas tenido dentro de tu historia laboral.</p>
<p>Requisitos:<strong>&nbsp;FIEL.</strong></p>''',
      idServicio: 1,
      url: 'https://serviciosdigitales.imss.gob.mx/portal-web/portal',
    ),
    TramiteModel(
      title: 'Incorporación al Seguro de Salud para la Familia',
      description: '''<p>(Seguro de Salud para la Familia)</p>
<p>Si no cuentas con un seguro m&eacute;dico, el IMSS te permite asegurar a tu familia para que reciba los servicios m&eacute;dicos que ofrece</p>
<p>Requisitos:<strong>&nbsp;Correo electr&oacute;nico personal, tu CURP, la CURP de tu beneficiarios(as) y N&uacute;mero de Seguridad Social(NSS) de tu(s) familiar(es).</strong></p>''',
      idServicio: 1,
      url:
          'https://serviciosdigitales.imss.gob.mx/portal-ciudadano-web-externo/home',
    ),
    TramiteModel(
      title:
          'Incorporación Voluntaria al Régimen Obligatorio del Seguro Social',
      description:
          '''<p>Prot&eacute;gete incorpor&aacute;ndote al IMSS, ya seas Patr&oacute;n Persona F&iacute;sica, Trabajador Independiente, Trabajador Independiente del Campo. Recuerda que puedes aplicar a los beneficios RISS*.</p>
<p>(&nbsp;<a href="http://www.imss.gob.mx/beneficios-riss" aria-label="Para hacer este sitio web accesible al lector de pantalla, Oprima alt + 1. Para dejar de recibir este mensaje, oprima alt + 2">*para saber m&aacute;s, consulta las caracter&iacute;sticas y beneficios del RISS aqu&iacute;</a>)</p>
<p>Requisitos:<strong>CURP, C&oacute;digo Postal y correo electr&oacute;nico personal.</strong></p>''',
      idServicio: 1,
      url:
          'https://serviciosdigitales.imss.gob.mx/portal-ciudadano-web-externo/home',
    ),
    TramiteModel(
      title:
          'Inscripción a la Continuación Voluntaria en el Régimen Obligatorio',
      description:
          '''<p>(Continuaci&oacute;n Voluntaria en el R&eacute;gimen Obligatorio)</p>
<p>Si fuiste dado de baja ante el IMSS por tu patr&oacute;n en el R&eacute;gimen Obligatorio, puedes inscribirte nuevamente de forma voluntaria.</p>
<p>Requisitos:<strong>&nbsp;CURP y correo electr&oacute;nico personal.</strong></p>''',
      idServicio: 1,
      url:
          'https://serviciosdigitales.imss.gob.mx/portal-ciudadano-web-externo/home',
    ),
    TramiteModel(
      title: 'Mi Pensión Digital',
      description: '''<p>Pensi&oacute;n Digital</p>
<p>Con Mi Pensi&oacute;n Digital puedes obtener m&aacute;s r&aacute;pido y f&aacute;cil tu pensi&oacute;n por Cesant&iacute;a en Edad Avanzada o Vejez. Si tienes 60 a&ntilde;os o m&aacute;s puedes iniciar tu etapa de retiro desde internet.</p>
<p>Requisitos:<strong>&nbsp;CURP, NSS y correo electr&oacute;nico personal, CLABE.</strong></p>''',
      idServicio: 1,
      url: 'http://www.imss.gob.mx/pensiones/pension-digital',
    ),
    TramiteModel(
      title:
          'Registra, da de baja o actualiza los datos de tus beneficiarios(as)',
      description: '''(Registro y Actualización de Derechohabientes)

Registra, da de baja o actualiza los datos de tus beneficiarios(as), puede ser tu hijo(a), esposa(o), concubina(rio) y/o padres. También podrás solicitar una prórroga por estudios para tus hijos mayores de 16 años que cursen estudios en escuelas del Sistema Educativo Nacional.

Requisitos: Registrarse en el Escritorio Virtual, Firma Electrónica Avanzada (FIEL), tu CURP, la CURP de tu beneficiario(a) y correo electrónico personal. Si requieres tramitar una prórroga por estudios, además necesitarás una Constancia de Estudios emitida por la escuela en donde está estudiando tu hijo(a).''',
      idServicio: 1,
      url: 'https://serviciosdigitales.imss.gob.mx/portal-web/portal',
    ),
    TramiteModel(
      title: 'Registro de cuenta CLABE',
      description:
          '''<p>(Servicio digital de registro, baja y cambio de cuenta bancaria.)</p>
<p>Si eres asegurado(a) vigente puedes registrar tu cuenta bancaria (CLABE) y, en caso de que en alg&uacute;n momento el Instituto te expida una incapacidad, recibas ah&iacute; el pago del subsidio que corresponda. As&iacute; tambi&eacute;n, puedes cambiar o eliminar dicha cuenta, de acuerdo a tu necesidad.</p>
<p>Requisitos:<strong>&nbsp;FIEL.</strong></p>''',
      idServicio: 1,
      url: 'https://serviciosdigitales.imss.gob.mx/portal-web/portal',
    ),
    TramiteModel(
      title: 'Registro de hijos con CURP',
      description:
          '''<p>(Alta o registro de hijos en Cl&iacute;nica de Adscripci&oacute;n o Unidad de Medicina Familiar con CURP)</p>
<p>Registra los datos de tus beneficiarios(as) hijos(as) en la cl&iacute;nica o Unidad de Medicina Familiar que les corresponda.<br />Tambi&eacute;n podr&aacute;s registrar a tus hijos(as) mayores de 16 a&ntilde;os para tramitar posteriormente una Pr&oacute;rroga de Servicios M&eacute;dicos para aqu&eacute;llos que cursen estudios en escuelas del Sistema Educativo Nacional.<br />Para el alta o registro de hijos(as) reconocidos y/o adoptados ser&aacute; necesario presentarse directamente en la Unidad de Medicina Familiar con la documentaci&oacute;n correspondiente.</p>
<p>Requisitos:<strong>&nbsp;Tu CURP, C&oacute;digo Postal de tu domicilio, la CURP de tu beneficiario(a) hijo(a) y correo electr&oacute;nico personal.</strong></p>''',
      idServicio: 1,
      url:
          'https://serviciosdigitales.imss.gob.mx/portal-ciudadano-web-externo/derechohabientes/tramite/registroHijos',
    ),

    TramiteModel(
      title: 'Número de Seguridad Social (NSS)',
      description:
          '''<p>&lt;p&gt;(Solicitud de Asignaci&amp;oacute;n o Localizaci&amp;oacute;n del N&amp;uacute;mero de Seguridad Social)&lt;/p&gt;<br />&lt;p&gt;Si ya tienes asignado un N&amp;uacute;mero de Seguridad Social pero no lo recuerdas, puedes consultarlo aqu&amp;iacute;.&lt;/p&gt;<br />&lt;p&gt;Requisitos:&lt;strong&gt;&amp;nbsp;CURP y correo electr&amp;oacute;nico personal.&lt;/strong&gt;&lt;/p&gt;</p>''',
      idServicio: 1,
      url:
          'https://serviciosdigitales.imss.gob.mx/gestionAsegurados-web-externo/asignacionNSS',
    ),

    //Cambios

    TramiteModel(
      title: 'Actualización de CURP para asegurado(a) o pensionado(a)',
      description:
          '''<p>Si deseas modificar o actualizar tu CURP registrada ante el IMSS, puedes realizarlo como asegurado(a) o pensionado(a).</p>
<p>Requisitos:<strong>&nbsp;CURP, N&uacute;mero de Seguridad Social (NSS) y correo electr&oacute;nico personal.</strong></p>''',
      idServicio: 1,
      url:
          'https://serviciosdigitales.imss.gob.mx/portal-ciudadano-web-externo/asegurados/tramite/actualizacion/nss',
    ),
    TramiteModel(
      title: 'Actualización de datos de tus beneficiarios(as)',
      description:
          '''<p>(Registro y Actualizaci&oacute;n de Derechohabientes)</p>
<p>Actualiza los datos de tus beneficiarios(as), puede ser tu hijo(a), esposa(o), concubina(rio) y/o padres.</p>
<p>Requisitos:<strong>Registrarse en el Escritorio Virtual, Firma Electr&oacute;nica Avanzada (FIEL), tu CURP, la CURP de tu beneficiario(a) y correo electr&oacute;nico personal.</strong></p>''',
      idServicio: 1,
      url: 'https://serviciosdigitales.imss.gob.mx/portal-web/portal',
    ),
    TramiteModel(
      title: 'Cambio de Clínica o UMF',
      description:
          '''<p>(Cambio de Cl&iacute;nica de Adscripci&oacute;n o de Unidad de Medicina Familiar)</p>
<p>Si cambiaste de domicilio y eres asegurado(a) vigente o pensionado(a) del IMSS, puedes realizar tu cambio de Cl&iacute;nica o Unidad de Medicina Familiar (UMF) del IMSS.</p>
<p>Requisitos:<strong>&nbsp;CURP, C&oacute;digo Postal de tu nuevo domicilio y correo electr&oacute;nico personal.</strong></p>''',
      idServicio: 1,
      url:
          'https://serviciosdigitales.imss.gob.mx/portal-ciudadano-web-externo/derechohabientes/tramite/cambioClinica',
    ),
    TramiteModel(
      title: 'Registro de Solicitud de Corrección de datos del Asegurado',
      description: '''<p>Correcci&oacute;n de datos</p>
<p>Como trabajador asegurado ahora podr&aacute;s modificar tus datos ante el Instituto</p>
<p>Requisitos:<strong>CURP, correo electr&oacute;nico, tel&eacute;fono fijo, tel&eacute;fono m&oacute;vil, tener digitalizado los siguientes documentos: Acta de nacimiento. (obligatorio), Identificaci&oacute;n oficial. (obligatorio), Documento expedido por el IMSS que contenga el NSS. (uno por cada NSS que haya incluido en la solicitud). (obligatorio)</strong><br />Nota: Los archivos digitalizados deben estar en cualquiera de los siguientes formatos: .JPG o PDF. Cada archivo no debe exceder 1MB (1 megabyte).<br />Contar con Informaci&oacute;n del Patr&oacute;n: El usuario deber&aacute; agregar a la solicitud al menos un patr&oacute;n con el que haya laborado indicando el nombre, fecha de alta y baja, as&iacute; como entidad donde labor&oacute; con el patr&oacute;n respectivo. Tambi&eacute;n se requiere informaci&oacute;n adicional de la historia laboral por lo que se debe agregar NRP, domicilio y actividad de la empresa.</p>''',
      idServicio: 1,
      url:
          'https://serviciosdigitales.imss.gob.mx/correcciondatosasegurado-web-ciudadano/wizard/correccionDatosAsegurado/',
    ),
  ];
  static final List<TramiteModel> listTramitesCFE = [
    TramiteModel(
      title: 'Consultar Recibo de Luz CFE',
      description:
          '''La consulta en l&iacute;nea de su recibo CFE le permite desde la comodidad de su hogar, acceder a los datos que le brindaran toda la informaci&oacute;n detallada del pago de su recibo, as&iacute; como el gasto de energ&iacute;a mes a mes.
<p><strong>Requisitos:</strong></p>
<ul>
<li>Nombre del Servicio *</li>
<li>N&uacute;mero de Servicio</li>
<li>Lada</li>
<li>Correo electr&oacute;nico</li>
<li>Tel&eacute;fono fijo *</li>
</ul>''',
      idServicio: 2,
      url:
          'https://app.cfe.mx/Aplicaciones/CCFE/SolicitudesCFE/Solicitudes/ConsultaTuReciboLuzGmx.aspx',
    ),
    TramiteModel(
      title: 'Imprimir Recibo de Luz CFE',
      description:
          '''<h2 >&iquest;C&oacute;mo imprimir mi recibo de luz CFE?</h2>
<p>Para poder tener en papel tu&nbsp;<strong>recibo de luz de CFE como comprobante de domicilio</strong>&nbsp;o utilizarlo para realizar el pago, es necesario imprimir el documento. Esto se hace de la siguiente forma:</p>
<ol >
<li><strong>Descarga el recibo de luz&nbsp;</strong>en el portal web de CFE.</li>
<li>Localiza en tu computadora el archivo PDF que se ha guardado.</li>
<li>Ahora, sigue el proceso de impresi&oacute;n de acuerdo a tu computadora o tel&eacute;fono celular.</li>
</ol>''',
      idServicio: 2,
      url:
          'https://app.cfe.mx/Aplicaciones/CCFE/SolicitudesCFE/Solicitudes/ConsultaTuReciboLuzGmx.aspx',
    ),
    TramiteModel(
      title: 'Pago Recibo de Luz CFE',
      description:
          '''<p class="intro">Deber&aacute;s hacer el pago oportuno de tu Recibo de Luz para seguir con tu servicio de electricidad. Conoce los diferentes medios de pago que ofrece la CFE para facilitar a sus clientes este tr&aacute;mite.</p>
<div id="summary__holder">&nbsp;</div>
<ul class="list--check">
<li>Pago en l&iacute;nea CFE</li>
<li>Pago en cajeros CFEM&aacute;ticos</li>
<li>Pago en bancos y establecimientos</li>
<li>Pago en la App CFEContigo</li>
</ul>
<h2 id="pago-recibo-cfe-en-linea">Pago Recibo CFE en l&iacute;nea</h2>
<p>La Comisi&oacute;n Federal de Electricidad cuenta con un&nbsp;<a href="https://tarifasdeluz.mx/cfe-portalweb">portal web CFE</a>&nbsp;donde puedes hacer el&nbsp;<strong>pago de tu recibo CFE en l&iacute;nea</strong>&nbsp;sin necesidad de acudir a alguna de las&nbsp;<a href="https://tarifasdeluz.mx/cfe-oficinas">sucursales de la CFE.</a></p>
<p>Para realizar el&nbsp;<strong>pago de tu factura de luz</strong>&nbsp;es necesario registrarte en el&nbsp;<a href="https://tarifasdeluz.mx/cfe-portalweb">portal web de la CFE</a>&nbsp;para luego ingresar tu usuario y contrase&ntilde;a.</p>
<p>Sigue estos pasos para&nbsp;<strong>pagar tu recibo de luz en l&iacute;nea:</strong></p>
<ol class="list--numbered">
<li>Ingresa al&nbsp;<a href="https://app.cfe.mx/Aplicaciones/CCFE/MiEspacio/Login.aspx?ReturnUrl=%2Faplicaciones%2FCCFE%2FMiEspacio" target="_blank" rel="nofollow noopener">portal web CFE.</a></li>
<li>Pon tu usuario y contrase&ntilde;a para&nbsp;<span class="text--green">acceder a tu cuenta CFE.</span></li>
<li>En la p&aacute;gina principal, da click sobre el icono&nbsp;<strong>&lsquo;Pagar&rsquo;.</strong></li>
<li>Selecciona el banco de la tarjeta con la que vas a realizar el&nbsp;<strong>pago del servicio de luz CFE.</strong></li>
<li>Aparecer&aacute; una pantalla con tu saldo, da click sobre la opci&oacute;n&nbsp;<strong>&lsquo;Pagar&rsquo;.</strong></li>
<li>Completa la informaci&oacute;n con tu correo electr&oacute;nico y n&uacute;mero de tel&eacute;fono y da click en 'continuar'.</li>
<li>Selecciona el medio de&nbsp;<strong>pago de tu recibo CFE:</strong>&nbsp;Visa, MasterCard o American Express.</li>
<li>Ingresa los datos de tu tarjeta bancaria y da click en&nbsp;<strong>&lsquo;Pagar&rsquo;.</strong></li>
<li>!Listo! Solo espera que se indique la confirmaci&oacute;n del&nbsp;<strong>pago de tu recibo CFE.</strong></li>
</ol>
<p class="text-box laptop">El comprobante de&nbsp;<strong>pago de tu recibo CFE</strong>&nbsp;lo recibir&aacute;s en el correo electr&oacute;nico que registraste al momento del pago.</p>
<h2 id="pago-recibo-de-luz-en-cajeros-cfematicos">Pago Recibo de luz en cajeros CFEM&aacute;ticos</h2>
<p>Otra forma bastante sencilla de realizar el&nbsp;<strong>pago de tu recibo de luz</strong>&nbsp;es a trav&eacute;s de los cajeros autom&aacute;ticos que tiene la CFE. Deber&aacute;s acudir al&nbsp;<a href="https://tarifasdeluz.mx/cfe-oficinas">centro de atenci&oacute;n a clientes</a>&nbsp;m&aacute;s cercano que tenga un cajero CFEM&aacute;tico. Podr&aacute;s hacer el&nbsp;<strong>pago de tu factura CFE</strong>&nbsp;de dos maneras:</p>
<ul class="list--check">
<li>Llevar tu&nbsp;<a href="https://tarifasdeluz.mx/cfe-recibo-luz#como-imprimir-mi-recibo-de-luz-cfe">recibo de luz impreso</a>&nbsp;y asegurarte que tenga el c&oacute;digo de barras.</li>
<li>Conociendo el&nbsp;<span class="text--green">n&uacute;mero de tu servicio CFE.</span></li>
</ul>
<p>De cualquier forma, sigue estos pasos para realizar el&nbsp;<strong>pago del recibo de luz en un CFEM&aacute;tico:</strong></p>
<ol class="list--numbered">
<li>Toca la pantalla del&nbsp;<span class="text--green">cajero CFEM&aacute;tico</span>&nbsp;para activarlo.</li>
<li>Escanea en el lector el c&oacute;digo de barras de tu recibo o selecciona la opci&oacute;n &lsquo;N&uacute;mero de Servicio de CFE&rsquo; para teclearlo en la pantalla.</li>
<li>Verifica tu nombre y direcci&oacute;n.</li>
<li>Presiona la opci&oacute;n&nbsp;<strong>&lsquo;Pagar&rsquo;</strong>&nbsp;y selecciona si el tipo de&nbsp;<strong>pago de tu recibo CFE</strong>&nbsp;es en &lsquo;Efectivo&rsquo; o con Tarjeta bancaria&rsquo;.</li>
<li>Inserta el dinero del monto a pagar o tu tarjeta bancaria.</li>
<li>Espera se imprima el comprobante de&nbsp;<strong>pago del recibo CFE.</strong></li>
</ol>
<p class="text-box note">No es necesario que lleves el &uacute;ltimo recibo CFE m&aacute;s reciente para hacer el&nbsp;<strong>pago de tu consumo de luz.</strong></p>
<h2 id="pago-recibo-en-la-app-cfe-contigo">Pago Recibo en la APP CFE Contigo</h2>
<p>Ya puedes descargar la&nbsp;<a href="https://tarifasdeluz.mx/cfe-appcontigo">App CFEContigo</a>&nbsp;en tu celular o tablet y&nbsp;<strong>pagar tu recibo de luz</strong>. La descarga de la APP es de manera gratuita y est&aacute; disponible en la AppStore, GooglePlay y la AppGallery Huawei.</p>
<p>Sigue los siguientes pasos para&nbsp;<strong>pagar tu recibo de luz</strong>&nbsp;desde la App CFEContigo.</p>
<ol class="list--numbered">
<li>Aseg&uacute;rate de haber&nbsp;<span class="text--green">descargado la App CFEContigo</span>&nbsp;y tener un usuario.</li>
<li>Si es la primera vez que ingresas, asocia tu&nbsp;<span class="text--green">n&uacute;mero de servicio de luz</span>&nbsp;capturando el c&oacute;digo de barras de tu recibo con una foto o ingresando manualmente los datos.</li>
<li>Enseguida aparecer&aacute; el saldo actual de tu recibo CFE.</li>
<li>Pulsa sobre el bot&oacute;n&nbsp;<strong>&lsquo;Pagar&rsquo;.</strong></li>
<li>Ingresa los datos de tu tarjeta bancaria.</li>
<li>Vuelve a pulsar en&nbsp;<strong>&lsquo;Pagar&rsquo;.</strong></li>
<li>!Listo! Aparecer&aacute; una leyenda indicando el&nbsp;<strong>&lsquo;Pago exitoso&rsquo; de tu recibo.</strong>.</li>
</ol>
<h2 id="como-domiciliar-el-pago-del-recibo-cfe-a-mi-tarjeta">&iquest;C&oacute;mo domiciliar el pago del recibo CFE a mi tarjeta?</h2>
<p>La forma m&aacute;s c&oacute;moda de realizar el&nbsp;<strong>pago de tu factura de CFE</strong>&nbsp;es domiciliando el pago a cualquier tarjeta de cr&eacute;dito o d&eacute;bito. De este modo, se har&aacute; un cargo autom&aacute;tico a tu cuenta bancaria un d&iacute;a antes de la fecha de vencimiento que muestra el recibo de luz. Lo podr&aacute;s hacer por medio del&nbsp;<a href="https://tarifasdeluz.mx/cfe-portalweb">portal web CFE</a>&nbsp;o a trav&eacute;s de la&nbsp;<a href="https://tarifasdeluz.mx/cfe-appcontigo">App CFEContigo.</a></p>''',
      idServicio: 2,
      url:
          'https://app.cfe.mx/Aplicaciones/CCFE/SolicitudesCFE/Solicitudes/ConsultaTuReciboLuzGmx.aspx',
    ),
  ];
  static final List<TramiteModel> listTramitesCURP = [
    TramiteModel(
      title: 'Consultar CURP',
      description:
          'Haga la consulta de su clave CURP en instantes. Tan solo complete su información personal y podrá calcular su Clave Única de Registro de Población.',
      idServicio: 6,
      url: 'https://www.gob.mx/curp/',
    ),
    TramiteModel(
      title: 'Consultar RFC',
      description:
          '''<h1>Obt&eacute;n tu RFC con la Clave &Uacute;nica de Registro de Poblaci&oacute;n CURP</h1>
<div class="data two_thirds h143">
<div>
<div>
<div>Este servicio te permite conocer tu clave de RFC.</div>
</div>
<div>&nbsp;</div>
</div>
</div>
<div class="data two_thirds h143">
<h3 class="green">Pasos para su uso</h3>
<ol>
<li><strong>Oprimir</strong> el bot&oacute;n Iniciar Tr&aacute;mite</li>
<li><strong>Capturar</strong>&nbsp;la informaci&oacute;n solicitada</li>
<li><strong>Seleccionar</strong> el bot&oacute;n ENVIAR</li>
</ol>
</div>''',
      idServicio: 6,
      url:
          'https://www.sat.gob.mx/tramites/operacion/28753/obten-tu-rfc-con-la-clave-unica-de-registro-de-poblacion-curp',
      buttonTitle: 'Iniciar Trámite',
    ),
    //Tramite(title: 'Sacar RFC', description: description, idServicio: 6),
    TramiteModel(
        title: 'Imprimir RFC',
        description: '''<div class="row">
<div class="col-sm-12">
<div class="boxHeading">
<h1>&iquest;C&oacute;mo imprimir mi RFC?</h1>
</div>
</div>
</div>
<div class="row box">
<div class="column col-sm-4">
<div class="text">
<p>El &uacute;nico documento v&aacute;lido que certifica un RFC se denomina Constancia de Situaci&oacute;n Fiscal con CIF (C&eacute;dula de Identificaci&oacute;n Fiscal). Es muy pr&aacute;ctico imprimirlo o guardarlo en el celular en formato digital, para el caso de necesitarlo de inmediato.</p>
</div>
</div>
<div class="column col-sm-4">
<div class="text">
<p>Tambi&eacute;n all&iacute; puedes conseguir el hist&oacute;rico de comprobantes de avisos hechos, en caso de que los necesites. Para poder obtenerlo deber&aacute;s ingresar tu RFC y tu contrase&ntilde;a o e.firma .</p>
</div>
<div class="controls"><a class="button" href="https://www.sat.gob.mx/aplicacion/login/43824/reimprime-tus-acuses-del-rfc" target="_blank" rel="nofollow noopener noreferrer"><strong>Imprimir comprobante de RFC</strong></a></div>
</div>
<div class="column col-sm-4">
<div class="text">
<p><em>Habilita las ventanas emergentes en tu navegador, sino ver&aacute;s una pantalla blanca.</em></p>
</div>
<div class="">&nbsp;</div>
</div>
</div>
<div class="row stacked">
<div class="col-sm-6">
<div class="boxHeading">
<h2>&iquest;Qu&eacute; incluye el CIF?</h2>
</div>
<div class="box">
<div class="text">
<p>La C&eacute;dula de Identificaci&oacute;n Fiscal tiene un c&oacute;digo QR que encapsula una URL o direcci&oacute;n de Internet que contiene toda la informaci&oacute;n detallada sobre el contribuyente, incluyendo los datos personales, la CURP, domicilios y caracter&iacute;sticas fiscales.</p>
<p>&nbsp;</p>
</div>
</div>
</div>
<div class="col-sm-6">
<div id="contrasena" class="boxHeading">
<h2>&iquest;C&oacute;mo consigo la contrase&ntilde;a o e.firma para poder descargar el CIF?</h2>
</div>
<div class="box">
<div class="text">
<h2 class="subHeading">Contrase&ntilde;a SAT - Personas f&iacute;sicas</h2>
<p>Si quieres definirla o modificarla, debes ingresar aqu&iacute; tu RFC junto a la verificaci&oacute;n de seguridad. Ingresa la direcci&oacute;n de e-mail que el SAT ten&iacute;a en archivo y all&iacute; es donde te llegar&aacute; un link desde el cual podr&aacute;s configurar o cambiar la contrase&ntilde;a. En el caso de que el SAT no disponga de una casilla asociada a tu cuenta tendr&aacute;s que acudir a un m&oacute;dulo del SAT para registrarla y comenzar el proceso.</p>
</div>
<div class="controls"><a class="button" href="https://www.siat.sat.gob.mx/PTSC/auth/faces/pages/restablecer/recuperarContrasenia.jsf" target="_blank" rel="nofollow noopener noreferrer"><strong>Crear contrase&ntilde;a p. f&iacute;sicas</strong></a></div>
<div class="text">
<div class="subHeading">&nbsp;</div>
<h2 class="subHeading">Contrase&ntilde;a SAT - Personas morales</h2>
<p>S&oacute;lo debes ingresar el RFC de la empresa aqu&iacute; y seguir el proceso:</p>
</div>
<div class="controls"><a class="button" href="https://aplicaciones.sat.gob.mx/PTSC/ADC/resources/pages/operaciones/generarContrasena/ingresarRfc.xhtml" target="_blank" rel="nofollow noopener noreferrer"><strong>Crear contrase&ntilde;a p. morales</strong></a></div>
<div class="text">
<div class="subHeading">&nbsp;</div>
<h2 class="subHeading">e.firma</h2>
<p>Para conseguir este m&eacute;todo de identificaci&oacute;n deber&aacute;s agendar una cita para el m&oacute;dulo SAT que prefieras&nbsp;</p>
<p>Una vez en las oficinas deber&aacute;s registrar los datos biom&eacute;tricos que te soliciten y al concluir el proceso te entregar&aacute;n el archivo con terminaci&oacute;n CER que utilizar&aacute;s como e.firma de aqu&iacute; en adelante.</p>
<p>Por precauci&oacute;n, lleva contigo un dispositivo USB de tipo pendrive para llevarte el archivo.</p>
</div>
</div>
</div>
</div>''',
        idServicio: 6,
        url:
            'https://www.sat.gob.mx/aplicacion/login/43824/reimprime-tus-acuses-del-rfc',
        buttonTitle: 'Imprimir Comprobante de RFC'),
  ];
  static final List<TramiteModel> listTramitesFonacot = [
    TramiteModel(
        title: 'Solicitar Cita',
        description:
            '''<p>Aunque el Fonacot tiene un excelente servicio de atenci&oacute;n al cliente a trav&eacute;s de su p&aacute;gina web, hay algunas operaciones que deben hacerse en persona, por lo que deber&aacute;s acudir a las&nbsp;<strong>oficinas de Fonacot en M&eacute;xico</strong>&nbsp;(puedes ver horarios y tel&eacute;fonos en el enlace).</p>
<p>El ejemplo m&aacute;s claro es a la hora de&nbsp;<strong>solicitar un cr&eacute;dito</strong>, que solamente puede hacerse de forma presencial (no se puede por Internet). Por ello, si est&aacute;s pensando en pedir un cr&eacute;dito, aqu&iacute; te vamos a explicar<strong>&nbsp;c&oacute;mo debes pedir cita para ir a las oficinas Fonacot&nbsp;</strong>y, adem&aacute;s,&nbsp;<strong>c&oacute;mo solicitar tu cita desde Internet</strong>.</p>
<p>De esta manera, podr&aacute;s ahorrarte largas filas y horas de espera en la oficina hasta que llegue tu turno.</p>''',
        idServicio: 5,
        url: 'https://citas.fonacot.gob.mx/client',
        buttonTitle: 'Programar Cita'),
    TramiteModel(
        title: 'Estado de Cuenta',
        description:
            '''<p>El&nbsp;<strong>Fondo Nacional para el Consumo de los Trabajadores</strong>&nbsp;es conocido tambi&eacute;n por el nombre de Infonacot o Instituto Fonacot. Fue creado en el a&ntilde;o 1974 con el objetivo de proporcionar a los trabajadores de M&eacute;xico una vivienda digna.</p>
<p>Actualmente su funci&oacute;n principal es&nbsp;<strong>conceder cr&eacute;ditos a los trabajadores</strong>&nbsp;no solo para que puedan adquirir una vivienda sino tambi&eacute;n para que puedan acceder a diversos bienes y servicios. De esta forma, se les ayuda a proporcionar una calidad de vida digna tanto a ellos como a sus familias.</p>''',
        idServicio: 5,
        url:
            'https://servicios.fonacot.gob.mx/Trabajadores/trCuantoAdeudoIdCliente.fonacot',
        buttonTitle: 'Consulta cuánto adeudas de tu Crédito'),
    TramiteModel(
        title: 'Simulador de Crédito',
        description:
            '''<p>Una de las dudas m&aacute;s frecuentes que se presentan a la hora de plantearse solicitar un cr&eacute;dito Fonacot es saber exactamente&nbsp;<strong>cu&aacute;l es la cantidad de dinero que se puede recibir</strong>.</p>
                    <p>Esta cantidad depende de varios factores como son el sueldo que percibe actualmente el trabajador y el n&uacute;mero de plazos que desea emplear para pagarlo.</p>''',
        idServicio: 5,
        url:
            'https://www.fonacot.gob.mx/transparenciarendicioncuentas/transparenciafocalizada/documents/conocecuanto.pdf',
        buttonTitle: 'Cuánto te puede prestar Fonacot'),
    TramiteModel(
      title: 'Oficinas Fonacot',
      description:
          '''<p>El&nbsp;Fonacot&nbsp;dispone de una gran red de&nbsp;<strong>oficinas de atenci&oacute;n en todo M&eacute;xico</strong>&nbsp;(INFONACOT) a las que pueden acudir todos aquellos trabajadores que dispongan de un cr&eacute;dito.</p>''',
      idServicio: 5,
      url:
          'https://www.fonacot.gob.mx/creditofonacot/Documents/Directorio%20FONACOT.pdf',
      buttonTitle: 'Ver PDF con todas las Oficinas',
      content: Container(
        //margin: EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Text(
          '''Todas las sucursales del Instituto del Fondo Nacional para el Consumo de los Trabajadores abren de lunes a viernes y atienden a sus clientes en un horario que va desde las 8 hasta las 20 horas. 
               
Algunas oficinas están disponibles también los sábados y los domingos en horario de 8 a 16 horas.''',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  ];
  static final List<TramiteModel> listTramitesCedula = [
    TramiteModel(
      title: 'Consultar Cédula Profesional',
      description:
          '''<h1 class="tds-message-box box-note ">Pasos para consulta de c&eacute;dula profesional por nombre</h1>
<p>Como sabr&aacute;s, la C&eacute;dula Profesional es un documento legal e intransferible, que da legalidad a la formaci&oacute;n acad&eacute;mica de una persona. Una vez que la persona termina sus estudios y obtiene su t&iacute;tulo, debe tramitar esta credencial. En M&eacute;xico existe un registro de c&eacute;dulas profesionales que puede consultarse v&iacute;a online.</p>
<p>No se trata de un proceso complicado. De hecho, es posible&nbsp;<strong>buscar la c&eacute;dula profesional por nombre y apellido</strong>&nbsp;del profesionista. Bastan estos dos datos y seguir una sencillas instrucciones para acceder a la credencial. Si quieres hacer la b&uacute;squeda con seguridad, toma buena nota.</p>
<p>A continuaci&oacute;n, te mostramos los pasos b&aacute;sicos para saber&nbsp;<strong>c&oacute;mo revisar una cedula profesional</strong>, adem&aacute;s de c&oacute;mo hacer una verificaci&oacute;n r&aacute;pida online de los datos incluidos en ella.</p>
<h3><span id="1-_Consultar_Cedulas_Profesionales_SEP" class="ez-toc-section"></span><strong>1.- Consultar C&eacute;dulas Profesionales SEP</strong></h3>
<p>El primer paso para<strong>&nbsp;checar la c&eacute;dula profesional</strong>&nbsp;es ingresar al portal web oficial de la Secretar&iacute;a de Educaci&oacute;n P&uacute;blica (SEP):&nbsp;<a href="https://www.cedulaprofesional.sep.gob.mx/cedula/presidencia/indexAvanzada.action" target="_blank" rel="nofollow noopener noreferrer">https://www.cedulaprofesional.sep.gob.mx/</a>&nbsp;donde se podr&aacute;n consultar las credenciales que han sido registradas. Bien es verdad que, en ocasiones, la p&aacute;gina tarda mucho en cargar o directamente muestra error. Debemos tener un poco de paciencia.</p>
<p>&nbsp;</p>
<div class="tds-message-box box-council "><em>Atenci&oacute;n: para evitar posibles fraudes acude siempre al sitio web oficial cuando hagas la consulta de la C&eacute;dula Profesional. Este sitio web alberga todos los t&iacute;tulos que cuentan con su respectivo n&uacute;mero y es el &uacute;nico lugar en l&iacute;nea donde se podr&aacute;&nbsp;<strong>verificar c&eacute;dula profesional con total garant&iacute;a</strong>.</em></div>
<p>&nbsp;</p>
<p>El Registro Nacional de Profesionistas es el ente que se asegura de proveer esta informaci&oacute;n y se mantiene en constante actualizaci&oacute;n. Cualquier persona puede acceder para&nbsp;<strong>hacer una consulta de las c&eacute;dulas profesionales&nbsp;</strong>en M&eacute;xico. De hecho, este es el medio que usan muchas empresas para corroborar la informaci&oacute;n dada en un curriculum vitae, antes de contratar a una persona.</p>
<h3><span id="2-_Llenar_formulario" class="ez-toc-section"></span><strong>2.- Llenar formulario</strong></h3>
<p>Cuando ingreses a la secci&oacute;n datos de consulta, podr&aacute;s hacer el llenado de un formulario breve con la informaci&oacute;n requerida. B&aacute;sicamente se trata de ingresar nombres completos y apellidos, luego presionar el bot&oacute;n&nbsp;<strong>consultar c&eacute;dula profesional</strong>.</p>
<p>Cuando realices esta opci&oacute;n, se mostrar&aacute;n los&nbsp;<strong>Resultados</strong>&nbsp;emitidos por la web, y as&iacute; ver el estatus de la c&eacute;dula que se est&aacute; buscando. En caso de que exista discrepancia en alg&uacute;n dato, puedes hacer la solicitud de enmienda de la informaci&oacute;n. Sin embargo, este proceso puede llevar tiempo, dependiendo del volumen de solicitudes de correcci&oacute;n que se pidan.</p>
<h3><span id="3-_Verificar_cedula_profesional" class="ez-toc-section"></span><strong>3.- Verificar c&eacute;dula profesional</strong></h3>
<p>En la pesta&ntilde;a de&nbsp;<strong>Detalles</strong>, adem&aacute;s, se pueden verificar todos los datos de registro de las&nbsp;<strong>c&eacute;dulas profesionales SEP</strong>. Estos datos proporcionados son una muestra preliminar, y para obtener un documento oficial ser&aacute; necesario tramitarlo en la Direcci&oacute;n General de Profesiones o bien realizar una tramitaci&oacute;n en l&iacute;nea del documento SEP.</p>
<p>Este apartado contiene la siguiente informaci&oacute;n:</p>
<ul>
<li>N&uacute;mero de c&eacute;dula</li>
<li>Datos de identificaci&oacute;n.</li>
<li>G&eacute;nero.</li>
<li>Profesi&oacute;n.</li>
<li>Instituci&oacute;n donde se obtuvo el t&iacute;tulo.</li>
<li>A&ntilde;o de expedici&oacute;n.</li>
<li>Tipo.</li>
</ul>
<p>La informaci&oacute;n proporcionada es totalmente cierta y ser&aacute; &uacute;til para regular el &aacute;mbito laboral.&nbsp;Junto con la Secretar&iacute;a de Educaci&oacute;n P&uacute;blica, la Direcci&oacute;n General de Profesiones se encarga de vigilar que se cumpla con la legalidad en el ejercicio profesional.</p>
<h1 class="tds-message-box box-note ">Consulta de C&eacute;dula Profesional por n&uacute;mero</h1>
<p>De igual modo, hacer la consulta de c&eacute;dula profesional por n&uacute;mero es bastante sencillo y tambi&eacute;n es de libre acceso.</p>
<p>La&nbsp;<strong>validaci&oacute;n de c&eacute;dula profesional por n&uacute;mero&nbsp;</strong>se la misma se realiza de manera similar a la&nbsp;<strong>consulta de cedula profesional por nombre</strong>. Para ello sigue estos pasos:</p>
<ol>
<li>Entra en la web oficial de consulta:&nbsp;<a href="https://www.cedulaprofesional.sep.gob.mx/" target="_blank" rel="nofollow noopener noreferrer">https://www.cedulaprofesional.sep.gob.mx/</a></li>
<li>Dir&iacute;gete al men&uacute; superior &lsquo;B&uacute;squeda&rsquo; y despu&eacute;s a &lsquo;C&eacute;dula&rsquo;.</li>
<li>Rellena el formulario con el n&uacute;mero de tu credencial para confirmar los datos oficial que aparecen asignados.</li>
</ol>
<div class="tds-message-box box-note ">&iquest;Es m&aacute;s f&aacute;cil buscar la C&eacute;dula Profesional por nombre o por n&uacute;mero?</div>
<p>En ocasiones, los usuarios nos preguntan si resulta m&aacute;s sencillo buscar el documento por nombre o por n&uacute;mero. La respuesta es siempre &ldquo;depende&rdquo;. Evidentemente, buscarla por nombre y apellidos representa la mejor opci&oacute;n para&nbsp;<strong>quienes no disponen de una copia del documento</strong>, pero quiz&aacute; el propio usuario s&iacute; prefiere utilizar esta opci&oacute;n para verificar que todo est&aacute; en orden. Sea como fuere, aqu&iacute; te hemos contado las dos formas de hacerlo.</p>
<h1 class="tds-message-box box-note ">&iquest;Alguna duda o problema para checar la C&eacute;dula Profesional?</h1>
<p>En caso de que exista alg&uacute;n dato incorrecto, se puede hacer la solicitud de correcci&oacute;n de datos. Si el problema persiste, quiz&aacute;s tengas que dirigirte a las oficinas de gesti&oacute;n de las c&eacute;dulas profesionales, comunicarte con el&nbsp;<strong>n&uacute;mero atenci&oacute;n al cliente (55) 3601-1000, extensi&oacute;n 60949</strong>, o escribir a la direcci&oacute;n&nbsp;<strong>gobmx@funciopublica.gob.mx</strong>.</p>
<h1 class="tds-message-box box-note ">Conclusiones sobre la validaci&oacute;n de la C&eacute;dula Profesional</h1>
<p>Hacer la<strong>&nbsp;consulta de la c&eacute;dula profesional de</strong>&nbsp;<strong>M&eacute;xico&nbsp;</strong>es un procedimiento importante, pues adem&aacute;s de acreditar que el profesionista se ha formado para llevar a cabo sus funciones, tiene la licencia para hacerlo. Adem&aacute;s, el Estado tiene la posibilidad de regular el ejercicio de los profesionistas de M&eacute;xico. Por eso, todos los que han terminado de cursar sus estudios acad&eacute;micos, deben tramitar inmediatamente su c&eacute;dula profesional.</p>
<p>Consultar la c&eacute;dula profesional es un proceso que solo llevar&aacute; unos cinco minutos, pues es una b&uacute;squeda online sencilla. Se pueden buscar&nbsp;<strong>c&eacute;dulas profesionales por nombre</strong>&nbsp;en el sitio web de la Secretar&iacute;a de Educaci&oacute;n P&uacute;blica del Gobierno de M&eacute;xico. Al ingresar a la b&uacute;squeda, se podr&aacute; conocer el estatus de la c&eacute;dula y corroborar as&iacute; los datos asociados a la misma. Esta es la &uacute;nica manera de consultar n&uacute;mero de c&eacute;dula profesional y<strong>&nbsp;recuerda adem&aacute;s que&nbsp;</strong>q<strong>uienes te contraten tienen la oportunidad de conocer que cuentas con las aptitudes y conocimientos</strong>&nbsp;para ejercer determinado cargo laboral. Por eso, es de suma importancia que solicites esta credencial apenas culmines tus estudios universitarios o equivalentes.</p>''',
      idServicio: 7,
      url: 'https://www.cedulaprofesional.sep.gob.mx/',
    ),
    TramiteModel(
      title: 'Solicitar Cita',
      description:
          '''<p>Si quieres ejercer tu profesi&oacute;n inmediatamente despu&eacute;s de culminar tus estudios, debes solicitar tu c&eacute;dula profesional. Este es un tr&aacute;mite sencillo y, despu&eacute;s de reunir la documentaci&oacute;n pertinente, es el momento de&nbsp;<strong>solicitar una cita en la Secretar&iacute;a de Educaci&oacute;n P&uacute;blica (SEP)</strong>&nbsp;para obtener la credencial.</p>
<p>Conoce aqu&iacute; paso a paso c&oacute;mo sacar una cita para obtener la credencial que te permitir&aacute; ingresar al campo laboral en M&eacute;xico.</p>
<h2><span id="Pasos_para_pedir_citas_de_cedula_profesional" class="ez-toc-section"></span><strong>Pasos para pedir citas de c&eacute;dula profesional</strong></h2>
<p>Obtener la cita para formalizar el tr&aacute;mite de tu c&eacute;dula profesional es el segundo paso que debes realizar. El primero ser&aacute; reunir toda la documentaci&oacute;n necesaria para que se otorgue esta credencial legal. Ahora bien, la cita es el paso que define finalmente el tr&aacute;mite de la expedici&oacute;n.</p>
<p>La cita es una entrevista, donde se exigir&aacute; la presentaci&oacute;n de una serie de requisitos, que permitir&aacute;n otorgar la legalidad de ejercicio profesional, a trav&eacute;s de una tarjeta de pl&aacute;stico. Ahora bien, preparados ya con los requisitos, los pasos para conseguir una&nbsp;<strong>cita para c&eacute;dula profesional&nbsp;</strong>son:</p>
<ol>
<li>Primero, ser&aacute; necesario ingresar a&nbsp;<strong><a href="http://www.citas.sep.gob.mx/" target="_blank" rel="nofollow noopener noreferrer">www.citas.sep.gob.mx</a></strong>, &uacute;nico sitio oficial donde se podr&aacute; tramitar este documento.</li>
<li>En el apartado &ldquo;Cita&rdquo;, podr&aacute;s hacer clic y se desplegar&aacute;n las opciones puedes realizar en este sitio de la Secretar&iacute;a de Educaci&oacute;n P&uacute;blica.</li>
<li>Entonces, tendr&aacute;s que escoger la opci&oacute;n &ldquo;Solicita&rdquo;, despu&eacute;s de lo cual te dirigir&aacute; a una nueva p&aacute;gina.</li>
</ol>
<div class="code-block code-block-7">&nbsp;</div>
<p>En esta nueva secci&oacute;n del sitio oficial tendr&aacute;s dos campos para elegir. Como est&aacute;s buscando c&oacute;mo sacar tu c&eacute;dula profesional, el tr&aacute;mite a realizar ser&aacute;:&nbsp;<strong><em>&ldquo;Registro de t&iacute;tulo y Expedici&oacute;n de C&eacute;dula Profesional</em></strong>&rdquo;. Al seleccionar este tr&aacute;mite, el segundo campo te dar&aacute; varias opciones; debes escoger la segunda.</p>
<p>Al seguir todos los pasos anteriores, el sistema de&nbsp;<strong>citas c&eacute;dula profesional</strong>&nbsp;te solicitar&aacute; llenar algunos datos de importancia. Cuando te asignen la cita se te mostrar&aacute; la hora y el d&iacute;a disponible, que podr&aacute;s aceptar seg&uacute;n conveniencia. Es importante que la cita est&eacute; a nombre del titular de la c&eacute;dula profesional, aunque sea un representante quien haga el proceso.</p>
<div class="code-block code-block-6 ai-viewport-3">&nbsp;</div>
<h2><span id="Tipos_de_Citas_ante_la_Direccion_General_de_Profesiones" class="ez-toc-section"></span><strong>Tipos de Citas ante la Direcci&oacute;n General de Profesiones</strong></h2>
<p>En la Direcci&oacute;n General de Profesionales tienes tres m&oacute;dulos disponibles, seg&uacute;n el tr&aacute;mite que desees realizar.</p>
<h3><span id="Solicitar_cita" class="ez-toc-section"></span>Solicitar cita</h3>
<p>Por ejemplo, est&aacute; la&nbsp;<strong>solicitud de citas de c&eacute;dula profesional</strong>, la consulta de la cita y la cancelaci&oacute;n de la misma. Antes de hacer clic en alguna de estas opciones, conviene que est&eacute;s claro cu&aacute;l es la que necesitas.</p>
<p>Si es primera vez que solicitar&aacute;s tu c&eacute;dula profesional, entonces deber&aacute;s hacer clic a la secci&oacute;n &ldquo;Solicitud&rdquo;.</p>
<h3><span id="Consultar_cita" class="ez-toc-section"></span><strong>Consultar cita</strong></h3>
<p>Por otro lado, en caso de que ya hayas solicitado una cita y quieras conocer el estatus de tu tr&aacute;mite o cerciorarte de la fecha y hora asignada, debes seleccionar el campo &ldquo;Consultar cita&rdquo;.</p>
<h3><span id="Cancelar_cita" class="ez-toc-section"></span><strong>Cancelar cita</strong></h3>
<p>Por &uacute;ltimo, en caso de que llegada la fecha de la entrevista no hayas recabado todos los requisitos, tendr&aacute;s que escoger la opci&oacute;n &ldquo;Cancelar cita&rdquo;. De esta manera, tienes la oportunidad de procesar una nueva cita cuando tengas a mano todos los requisitos. Ten en cuenta que la&nbsp;<strong>Direcci&oacute;n General de Profesiones citas</strong>&nbsp;que no tengan expedientes completos las cancelar&aacute;.&nbsp;</p>
<h2><span id="%C2%BFA_donde_debes_acudir_tras_sacar_cita_para_este_tramite" class="ez-toc-section"></span><strong>&iquest;A d&oacute;nde debes acudir tras sacar cita para este tr&aacute;mite?</strong></h2>
<p>La Secretar&iacute;a de Educaci&oacute;n P&uacute;blica de cada entidad federativa ser&aacute; el ente encargado de proporcionarte una&nbsp;<strong>cita para c&eacute;dula profesional.</strong>&nbsp;Por lo tanto, debes conocer d&oacute;nde est&aacute; ubicada esta oficina, seg&uacute;n tu lugar de residencia.</p>
<p>Ahora bien, quienes viven en el Distrito Federal y en su &aacute;rea metropolitana, no tendr&aacute;n que acudir a la SEP. Las citas para obtener su c&eacute;dula profesional ser&aacute;n otorgadas en la&nbsp;<strong>Oficina de Departamento Federal y Expedici&oacute;n de C&eacute;dulas</strong>.</p>
<p>La entrevista que se lleva a cabo en el proceso para sacar cita para c&eacute;dula profesional&nbsp;<strong>dura entre 1 o 2 horas</strong>. Sin embargo, la c&eacute;dula no se otorgar&aacute; inmediatamente, pues se requiere la evaluaci&oacute;n de los documentos. Despu&eacute;s de esta revisi&oacute;n, entonces se otorgar&aacute; un n&uacute;mero de c&eacute;dula profesional y se te contactar&aacute; para acceder a la versi&oacute;n digital de esta credencial para su descarga inmediata.</p>
<p>Otro dato que debes recordar es que tanto la&nbsp;<strong>c&eacute;dula profesional cita</strong>, como el tr&aacute;mite en s&iacute; deben ser realizados por el titular. En caso de que el profesionista no pueda, un familiar de primera l&iacute;nea puede hacerlo, con una&nbsp;carta poder simple. En caso de que sea otra persona distinta de esta l&iacute;nea familiar, deber&aacute; presentarse con un poder notarial.</p>
<p>Finalmente,&nbsp;<strong>es posible que la c&eacute;dula profesional se otorgue en un per&iacute;odo que puede rondar entre las 3 y 6 semanas</strong>. Por eso, si deseas comenzar a ejercer tu profesi&oacute;n apenas te grad&uacute;es, debes iniciar este tr&aacute;mite cuanto antes.</p>
<h2><span id="%C2%BFQue_requisitos_se_exigen_para_una_cita_con_la_SEP" class="ez-toc-section"></span><strong>&iquest;Qu&eacute; requisitos se exigen para una cita con la SEP?</strong></h2>
<p>Un consejo para que la&nbsp;<strong>cita para tr&aacute;mite de c&eacute;dula profesiona</strong>l sea r&aacute;pida y exitosa, es tener en orden todos los documentos. De esta manera, te evitas retrasos por devoluci&oacute;n de la carpeta o quiz&aacute;s por errores en los requisitos. A continuaci&oacute;n, se muestran los requisitos que se exigen en cuando acudas a la Direcci&oacute;n General de Profesiones para tu cita.</p>
<ul>
<li>Acta de nacimiento del profesionista.</li>
<li>CURP vigente.</li>
<li>T&iacute;tulo profesional (Copia y Original para corroborar autenticidad).</li>
<li>Fotograf&iacute;as (2) en blanco y negro, tama&ntilde;o infantil.</li>
<li>Certificado de Bachillerato y de Estudios Profesionales.</li>
<li>Una constancia por liberaci&oacute;n del Servicio Social.</li>
<li>Actas de examen profesional.</li>
<li>Comprobante de pago por los derechos federales, que deben pagarse 72 horas previas a la cita.</li>
</ul>
<p>En caso de faltar alg&uacute;n requisito el d&iacute;a de la cita, ser&aacute; necesario gestionar una nueva cita, pues no se recibir&aacute;n expedientes incompletos. El proceso de tr&aacute;mite de c&eacute;dula profesional puede hacerse online o en modalidad presencial.</p>
<h2><span id="Contactar_con_la_SEP_para_mas_informacion_sobre_tu_cita" class="ez-toc-section"></span><strong>Contactar con la SEP para m&aacute;s informaci&oacute;n sobre tu cita</strong></h2>
<p>Si tienes alguna duda m&aacute;s sobre c&oacute;mo conseguir tu cita para la c&eacute;dula profesional puedes informarte, mediante distintos modos de contacto, con la Secretar&iacute;a de Educaci&oacute;n P&uacute;blica (SEP). Estos son los medios disponibles:</p>
<ul>
<li>L&iacute;nea telef&oacute;nica: 36013800 extensi&oacute;n 61100</li>
<li>TelSEP: 36017599</li>
<li>L&iacute;nea gratuita nacional: 01 800 288 68</li>
</ul>
<p>El horario de atenci&oacute;n es de lunes a viernes de 9:00 a 15:00 horas.</p>
<h2><span id="Conclusion_-_Resumen" class="ez-toc-section"></span><strong>Conclusi&oacute;n &ndash; Resumen</strong></h2>
<p>La c&eacute;dula profesional es de suma importancia, pues sin este documento no podr&aacute;s ejercer tu profesi&oacute;n en M&eacute;xico. Esta credencial es lo que hace posible que otros te identifiquen como una persona que posee los conocimientos y aptitudes para desempe&ntilde;ar una labor profesional. Este tr&aacute;mite aplica para mexicanos y extranjeros que hayan cursados estudios en el pa&iacute;s.</p>
<p>El paso definitivo para que una c&eacute;dula profesional sea otorgada es hacer la solicitud de una cita. Esta cita puede gestionarse a trav&eacute;s del portal&nbsp;<strong>citas.sep.gob.mx&nbsp;</strong>donde a trav&eacute;s de un sencillo formulario puedes pedir una entrevista para obtener esta credencial. Ahora bien, es importante tener a mano todos los requisitos que se exigen, para evitar contratiempos.</p>''',
      idServicio: 7,
      url: 'http://www.citas.sep.gob.mx/',
      buttonTitle: 'Solicitar Cita',
    ),
    TramiteModel(
        title: 'Consultar Status',
        description:
            '''<p>Si ya iniciaste el tr&aacute;mite para la expedici&oacute;n de tu credencial, puedes hacer el&nbsp;<strong>seguimiento del estatus de la c&eacute;dula profesional</strong>. Consultar el estatus de este documento no es complicado, conoce cu&aacute;les son los pasos para hacerlo.</p>
<h2><span id="Pasos_para_consultar_el_estatus_de_la_Cedula_Profesional" class="ez-toc-section"></span>Pasos para consultar el estatus de la C&eacute;dula Profesional</h2>
<p>Las c&eacute;dulas profesionales se expiden desde octubre de 2018 de manera electr&oacute;nica, por lo que su tr&aacute;mite es online. Si te est&aacute;s preguntando&nbsp;<strong><em>&ldquo;c</em><em>&oacute;mo saber si est&aacute; lista mi c&eacute;dula&rdquo;</em></strong>&nbsp;debemos decirte que tambi&eacute;n se hace en l&iacute;nea y requiere seguir unos cuantos pasos sencillos:</p>
<ol>
<li>El primer paso es acceder al sitio web oficial de la Secretar&iacute;a de Educaci&oacute;n P&uacute;blica (&nbsp;<a href="https://msirepve.sep.gob.mx/validacionelectronica/publico/recoveryCedulaElectronica!startRecovery.action" target="_blank" rel="nofollow noopener noreferrer"><strong>https://sirepve.sep.gob.mx/validacionelectronica</strong></a>&nbsp;). Este es el &uacute;nico sitio real donde se podr&aacute; hacer seguimiento de este tr&aacute;mite.</li>
<li>Al ingresar al sitio web podr&aacute;s encontrar&nbsp; un formulario que debes rellenar.</li>
<li>Completar los detalles que se piden:&nbsp;<strong><em>&ldquo;B&uacute;squeda de folio de seguimiento de C&eacute;dula Profesional&rdquo;&nbsp;</em></strong><em>(este dato te lo habr&aacute;n facilitado al realizar la solicitud de la credencial),</em><strong><em>&nbsp;&ldquo;Nombre&rdquo;&nbsp;</em></strong><em>y</em><strong><em>&nbsp;&ldquo;Primer apellido&rdquo;&nbsp;</em></strong>del titular de la credencial.</li>
<li>Una vez que verifiques el &lsquo;captcha&rsquo; (&ldquo;No soy un robot&rdquo;) basta con que pulses en&nbsp;<strong>&lsquo;Buscar&rsquo;</strong> para que te devuelva los detalles del estado en el que se encuentra la solicitud. Si se ha aprobado la c&eacute;dula y est&aacute; v&aacute;lida, aparecer&aacute; la informaci&oacute;n en la b&uacute;squeda realizada.</li>
</ol>
<h2><span id="%C2%BFComo_puedo_ponerme_en_contacto_con_el_SEP" class="ez-toc-section"></span>&iquest;C&oacute;mo puedo ponerme en contacto con el SEP?</h2>
<p>En el pasado, las credenciales profesionales eran otorgadas en f&iacute;sico. Sin embargo, con el fin de optimizar este tipo de tr&aacute;mites y aprovechando los recursos tecnol&oacute;gicos, ahora la c&eacute;dula profesional es electr&oacute;nica.</p>
<p>Ahora bien, puede que algunos profesionistas no se manejen bien en el &aacute;mbito tecnol&oacute;gico y surjan dudas en el proceso. Puede tambi&eacute;n que se requiera informaci&oacute;n adicional referente a la expedici&oacute;n de este documento y su verificaci&oacute;n online. Por otro lado, es probable que presentes alg&uacute;n problema con el tr&aacute;mite de esta c&eacute;dula y desees ponerte en contacto con un experto.</p>
<p>En esos casos, consultar la Secretar&iacute;a de Educaci&oacute;n P&uacute;blica es la mejor opci&oacute;n para aclarar dudas y responder&nbsp;<strong>como saber si ya est&aacute; mi c&eacute;dula</strong>. De esta manera, quienes est&aacute;n facultados para dar asistencia en el proceso, contestar&aacute;n todas las dudas.</p>
<h3><span id="Por_telefono" class="ez-toc-section"></span><strong>Por tel&eacute;fono</strong></h3>
<p>Las&nbsp;<strong>l&iacute;neas de tel&eacute;fono</strong>&nbsp;est&aacute;n abiertas al p&uacute;blico en general durante el horario de oficina, de lunes a viernes. El personal certificado para brindar asistencia sobre la expedici&oacute;n de la c&eacute;dula profesional atender&aacute; estas llamadas. Si deseas ponerte en contacto con esta oficina, los siguientes n&uacute;meros est&aacute;n a disposici&oacute;n:</p>
<ul>
<li>01 (55) 5174 8160.</li>
<li>01 (800) 839 1874.</li>
</ul>
<h3><span id="Via_Correo_Electronico" class="ez-toc-section"></span><strong>V&iacute;a Correo Electr&oacute;nico</strong></h3>
<p>Tambi&eacute;n es posible resolver dudas escribiendo a la direcci&oacute;n de correo electr&oacute;nico:&nbsp;gobmx@funcionpublica.gob.mx.&nbsp;En poco tiempo recibir&aacute;s la respuesta a tus dudas a trav&eacute;s del mismo medio electr&oacute;nico.</p>
<p>Para ambos casos, sea atenci&oacute;n telef&oacute;nica o en l&iacute;nea, debes especificar que el tr&aacute;mite de expedici&oacute;n de c&eacute;dula profesional se ha realizado. A continuaci&oacute;n, describir el inconveniente o duda que se desea aclarar, con todos los detalles del caso en cuesti&oacute;n.</p>
<h2><span id="%C2%BFPor_que_hacer_la_verificacion_de_mi_cedula_profesional" class="ez-toc-section"></span>&iquest;Por qu&eacute; hacer la verificaci&oacute;n de mi c&eacute;dula profesional?</h2>
<p>Conocer el estatus de cedula profesional es importante pues esta credencial es&nbsp;<strong>un requisito obligatorio para laborar en M&eacute;xico</strong>. A trav&eacute;s de este documento, miles de profesionistas en el pa&iacute;s pueden avalar los conocimientos, habilidades y aptitudes adquiridas en una instituci&oacute;n de educaci&oacute;n superior.</p>
<p>A trav&eacute;s de una c&eacute;dula profesional, la persona podr&aacute; certificar que posee la facultad y el derecho de ejercer una profesi&oacute;n. Adem&aacute;s, que el Estado ha avalado su t&iacute;tulo; por lo que puede ingresar al mercado laboral de manera legal.</p>
<p>Por lo tanto,<strong>&nbsp;es imposible dar inicio al ejercicio profesional si no se posee esta certificaci&oacute;n importante</strong>. De hecho, es posible que de ingresar al medio laboral sin este documento, se acarreen consecuencias legales graves que puedan exponer al profesionista a multas o penas mayores.</p>
<p>El tr&aacute;mite de c&eacute;dula profesional es bastante sencillo, y luego de hacerlo es posible verificar su estatus hasta que sea aprobado. En el sitio oficial de la Secretar&iacute;a de Educaci&oacute;n P&uacute;blica es posible ingresar y hacer un seguimiento de este tr&aacute;mite. Los pasos son bastante simples, y&nbsp;<strong>solo es necesario tener a mano los nombres del titular del tr&aacute;mite y el n&uacute;mero folio de seguimiento</strong>.</p>
<p>Al ingresar estos datos, se puede verificar el estatus del tr&aacute;mite y comprobar si los datos asociados al tr&aacute;mite han sido colocados de manera correcta. De hecho, es posible corregir los datos en caso de que sea necesario. Sin embargo, habr&aacute; que establecer contacto directo con la Secretar&iacute;a de Educaci&oacute;n P&uacute;blica, quienes se encargar&aacute;n de hacer las correcciones pertinentes.&nbsp;</p>''',
        idServicio: 7,
        url: 'https://sirepve.sep.gob.mx/validacionelectronica'),
    TramiteModel(
      title: 'Tramitar Cédula',
      description:
          '''<p>Una vez se culminan los estudios superiores, ser&aacute; necesario tramitar la c&eacute;dula profesional. Esta es la &uacute;nica manera de&nbsp;<strong>hacer valer el t&iacute;tulo acad&eacute;mico obtenido</strong>&nbsp;en una instituci&oacute;n de M&eacute;xico, y poder ejercer la profesi&oacute;n.</p>
<p>Afortunadamente, ahora el proceso puede hacerse de manera sencilla&nbsp;<strong>a trav&eacute;s de un portal electr&oacute;nico</strong>, lo que permite que el proceso sea m&aacute;s r&aacute;pido.</p>
<p>Vamos a contarte en este art&iacute;culo cu&aacute;les son los requisitos, pasos y tramitaciones necesarias para obtener tu credencial.</p>
<div class="code-block code-block-2">&nbsp;</div>
<h1 class="tds-message-box box-note ">Requisitos para tramitar la c&eacute;dula profesional</h1>
<p>Todas las personas que egresan de una instituci&oacute;n de educaci&oacute;n superior y quieran ejercer su profesi&oacute;n deben hacer la&nbsp;<strong>tramitaci&oacute;n de c&eacute;dula profesional</strong>. Esta es una credencial obligatoria para ingresar al mercado laboral.</p>
<p>El&nbsp;<strong>tr&aacute;mite de c&eacute;dula profesional en M&eacute;xico</strong>&nbsp;requiere la presentaci&oacute;n de una serie de documentos obligatorios. Estos requisitos permitir&aacute;n demostrar no solo la identidad de la persona, sino tambi&eacute;n su estatus acad&eacute;mico.</p>
<p>Es necesario tener a mano los siguientes&nbsp;<strong>documentos para tramitar la c&eacute;dula profesional</strong>:</p>
<ul>
<li>El acta de nacimiento de la persona.</li>
<li>La Clave &Uacute;nica de Registro de Poblaci&oacute;n (CURP).</li>
<li>Certificaci&oacute;n de culminaci&oacute;n del Bachillerato.</li>
<li>Certificado de los estudios profesionales.</li>
<li>T&iacute;tulo acad&eacute;mico.</li>
<li>Pago de los derechos federales.</li>
<li>Liberaci&oacute;n del servicio social.</li>
<li>Acta del examen profesional.</li>
<li>Fotograf&iacute;as blanco y negro (2).</li>
<li>Formulario de solicitud de registro de T&iacute;tulo y Expedici&oacute;n de C&eacute;dula Profesional.</li>
</ul>
<p>Una vez recabados todos estos documentos, se solicita una cita para&nbsp;<strong>tramitar la c&eacute;dula profesional digital</strong>. De hecho, desde octubre de 2018 tanto el registro del t&iacute;tulo como la expedici&oacute;n de esta credencial se hace a trav&eacute;s de un portal online. Sin embargo, hay otra forma tambi&eacute;n para dar inicio a estos tr&aacute;mites.</p>
<h1 class="tds-message-box box-note ">&iquest;De qu&eacute; formas puedo tramitar la c&eacute;dula profesional?</h1>
<p>Hay dos opciones para hacer el&nbsp;<strong>tr&aacute;mite de c&eacute;dula profesional</strong>: en l&iacute;nea o de manera presencial. A continuaci&oacute;n, se describen los pasos para que sepas&nbsp;<strong>c&oacute;mo sacar mi cedula profesional</strong>&nbsp;de ambas formas.</p>
<h3><span id="Como_obtener_cedula_profesional_de_forma_presencial" class="ez-toc-section"></span><strong>C&oacute;mo obtener c&eacute;dula profesional de forma presencial</strong></h3>
<p>Esta opci&oacute;n est&aacute; disponible solo para todos aquellos profesionistas cuyos t&iacute;tulos acad&eacute;micos<strong>&nbsp;fueron expedidos antes del 1 de octubre de 2018</strong>. Tambi&eacute;n, para aquellos a quienes la instituci&oacute;n educativa a&uacute;n no ha procesado el t&iacute;tulo de manera electr&oacute;nica. &nbsp;</p>
<div class="tds-message-box box-warning ">Se hace de su conocimiento que de conformidad a los Acuerdos 03/03/20 y 11/06/20, los tr&aacute;mites de expedici&oacute;n de c&eacute;dula profesional de t&iacute;tulos expedidos antes del Io de octubre del 2018 que se atend&iacute;an de manera presencial en las instalaciones de Viaducto 551, se han modificado con motivo de la emergencia sanitaria. Por el momento,&nbsp;<strong>NO SE REQUIERE LA ENTREGA PERSONAL DE DOCUMENTOS</strong>, los cuales podr&aacute;n ser enviados de forma escaneada, mediante correo electr&oacute;nico. Los detalles de la documentaci&oacute;n que debe presentar se le enviar&aacute;n por correo electr&oacute;nico una vez registrada la solicitud.</div>
<p>Estos son los pasos que debes seguir:</p>
<ol>
<li>Efect&uacute;a el&nbsp;<strong>pago de los derechos</strong>&nbsp;correspondiente a tu solicitud en:&nbsp;<a href="https://sirepve.sep.gob.mx/validacionelectronica/publico/initCapturaSolicitud!initCaptura.action?solicitud.idTramite=53&amp;presidencia=true" target="_blank" rel="nofollow noopener noreferrer">http://www.sep.gob.mx/work/appsite/e5</a>&nbsp;.&nbsp;Recuerda generar dos copias de la Hoja de Ayuda, una para el pago del derecho del tr&aacute;mite y otra destinada a la compulsa del mismo.</li>
<li>Realiza tu&nbsp;<strong>solicitud</strong>, dependiendo del grado acad&eacute;mico.</li>
<li>Termina la tramitaci&oacute;n de manera&nbsp;<strong>presencial</strong>&nbsp;con una acudiendo a Viaducto R&iacute;o Piedad No. 551, Jard&iacute;n Balbuena, Venustiano Carranza, Ciudad de M&eacute;xico, con un horario de atenci&oacute;n de lunes a viernes de 9:00 a 19:00 horas. Solicita cita&nbsp;<a href="https://www.citas.sep.gob.mx/citas/" target="_blank" rel="nofollow noopener noreferrer">AQU&Iacute;</a>.</li>
</ol>
<p>Como hemos apuntado en el segundo apartado, la documentaci&oacute;n requerida para solicitar la credencial depender&aacute; del grado acad&eacute;mico:</p>
<p><strong><em>Profesionales Mexicanos y Extranjeros con Especialidad realizada en M&eacute;xico deber&aacute;n presentar lo siguiente:</em></strong></p>
<ul>
<li>Formulario de registro de diploma de la especialidad y expedici&oacute;n de la c&eacute;dula profesional (Original). Solicitar aqu&iacute;:&nbsp;<a href="https://sirepve.sep.gob.mx/validacionelectronica/publico/initCapturaSolicitud!initCaptura.action?solicitud.idTramite=53&amp;presidencia=true" target="_blank" rel="nofollow noopener noreferrer">https://sirepve.sep.gob.mx/validacionelectronica</a>&nbsp;. Conviene tener a mano la &lsquo;Llave de pago&rsquo; o c&oacute;digo de 10 caracteres alfanum&eacute;ricos obtenidos en el Pago de los Derechos.</li>
<li>Pago por los derechos federales (Original y la copia).</li>
<li>Diploma original de la especialidad (En caso de especialidades del sector salud, ser&aacute;n enviados a Secretar&iacute;a de Salud para validarlos).</li>
<li>El profesionista debe estar certificado por el Comit&eacute; Normativo Nacional de Consejos de Especiales M&eacute;dicas (CONACEM).</li>
</ul>
<p><strong><em>Para t&iacute;tulos de nivel acad&eacute;mico T&eacute;cnico, Licenciatura o T&eacute;cnico Superior presentar&aacute;:</em></strong></p>
<ul>
<li>Solicitud original de registro y expedici&oacute;n de la c&eacute;dula profesional: los Extranjeros deber&aacute;n solicitarlo en&nbsp;<a href="https://sirepve.sep.gob.mx/validacionelectronica/publico/initCapturaSolicitud!initCaptura.action?solicitud.idTramite=59&amp;presidencia=true" target="_blank" rel="nofollow noopener noreferrer">https://sirepve.sep.gob.mx/validacionextranjeros</a>&nbsp;y los Mexicanos en&nbsp;<a href="https://sirepve.sep.gob.mx/validacionelectronica/publico/initCapturaSolicitud!initCaptura.action?solicitud.idTramite=51&amp;presidencia=true" target="_blank" rel="nofollow noopener noreferrer">https://sirepve.sep.gob.mx/validacionmexicanos</a>.</li>
<li>T&iacute;tulo profesional (copia y original).</li>
<li>Factura de pago de los derechos federales (copia y original).</li>
</ul>
<p><strong><em>Mexicanos y extranjeros que deseen tramitar el Grado Acad&eacute;mico de Maestr&iacute;a y Doctorado:</em></strong></p>
<ul>
<li>La solicitud de registro y expedici&oacute;n de la credencial (Original): los Extranjeros deber&aacute;n solicitarlo en&nbsp;&nbsp;<a href="https://sirepve.sep.gob.mx/validacionelectronica/publico/initCapturaSolicitud!initCaptura.action?solicitud.idTramite=60&amp;presidencia=true" target="_blank" rel="nofollow noopener noreferrer">https://sirepve.sep.gob.mx/validacionMyDextranjeros</a>&nbsp; &nbsp; &nbsp;y los Mexicanos en&nbsp;<a href="https://sirepve.sep.gob.mx/validacionelectronica/publico/initCapturaSolicitud!initCaptura.action?solicitud.idTramite=52&amp;presidencia=true" target="_blank" rel="nofollow noopener noreferrer">https://sirepve.sep.gob.mx/validacionMyDmexicanos</a></li>
<li>Grado acad&eacute;mico (Copia y original).</li>
<li>Pago de los derechos (Copia y Original).</li>
</ul>
<h3><span id="Como_tramitar_la_cedula_profesional_en_linea" class="ez-toc-section"></span><strong>C&oacute;mo tramitar la c&eacute;dula profesional en l&iacute;nea</strong></h3>
<p>Tambi&eacute;n est&aacute; disponible la opci&oacute;n para<strong>&nbsp;tramitar c&eacute;dula profesional</strong>&nbsp;<strong>por Internet</strong>&nbsp;pero para realizarlo debes contar con una firma electr&oacute;nica al formulario emitido por el SAT (si no la tienes puedes solicitarla&nbsp;<strong><a href="https://www.sat.gob.mx/tramites/16703/obten-tu-certificado-de-e.firma-(antes-firma-electronica)" target="_blank" rel="nofollow noopener noreferrer">AQU&Iacute;</a></strong>). Esta solicitud tendr&aacute; que contener nombres y apellidos completos, fecha y lugar donde naci&oacute; el profesionista y nacionalidad. Tambi&eacute;n, el CURP y el nombre de la instituci&oacute;n donde fue gradu&oacute; la persona.</p>
<p>Adem&aacute;s, tendr&aacute;s que adjuntar el archivo electr&oacute;nico que recoja el t&iacute;tulo acad&eacute;mico otorgado, que antes ha debido de haberse registrado en la Direcci&oacute;n General de Profesiones por la instituci&oacute;n educativa que te lo concedi&oacute;. Por &uacute;ltimo, se debe hacer el pago del tr&aacute;mite con la ayuda de una tarjeta de cr&eacute;dito o d&eacute;bito, por el monto correspondiente.</p>
<p>El proceso online tiene la ventaja de ser un&nbsp;<strong>registro de t&iacute;tulo y</strong>&nbsp;<strong>expedici&oacute;n de c&eacute;dula profesional&nbsp;</strong>m&aacute;s r&aacute;pido. En s&iacute;ntesis, los documentos que se solicitan en esta modalidad son:</p>
<ul>
<li>Solicitud con firma electr&oacute;nica con los datos antes mencionados.</li>
<li>Archivo en formato electr&oacute;nico con el t&iacute;tulo profesional previamente registrado.</li>
<li>Pago en l&iacute;nea.</li>
</ul>
<p>En caso de que tu t&iacute;tulo se haya emitido antes del 1 de octubre de 2018, podr&aacute;s pagar el tr&aacute;mite con el formulario ayuda e5cinco y continuar de manera presencial. El usuario online tendr&aacute; una mejor experiencia si realiza esta solicitud a trav&eacute;s de la versi&oacute;n m&aacute;s reciente del navegador Chrome.</p>
<blockquote>
<p>Para realizar el tr&aacute;mite online debes acceder a la web del SEP:&nbsp;<a href="https://msirepve.sep.gob.mx/validacionelectronica/publico/startCedulaElectronica!startWizard.action" target="_blank" rel="nofollow noopener noreferrer">https://msirepve.sep.gob.mx/validacionelectronicaSEP</a></p>
</blockquote>
<h1 class="tds-message-box box-note ">&iquest;Cu&aacute;nto tiempo tarda el tr&aacute;mite de una C&eacute;dula Profesional?</h1>
<p>Una vez que se ha tramitado la C&eacute;dula Profesional ante la Direcci&oacute;n General de Profesiones, surge la pregunta:&nbsp;<strong>&iquest;cu&aacute;nto tiempo tardar&eacute; en tener el documento oficial que acredite mi formaci&oacute;n profesional y me autorice a ejercerla de forma legal?</strong></p>
<p>Cabe mencionar que el mismo d&iacute;a que el usuario presenta la documentaci&oacute;n se le asignar&aacute; un n&uacute;mero de c&eacute;dula y&nbsp;<strong>se le entregar&aacute; un acuse de recibo</strong>, siempre que acuda a la ventanilla en horario de ma&ntilde;ana de 8.30 a 13.30 horas. En el caso de acuda despu&eacute;s de las 13.30 horas, la oportuna revisi&oacute;n oficial y la entrega del n&uacute;mero y acuse de recibo se realizar&aacute; al d&iacute;a siguiente h&aacute;bil.</p>
<p>En todo caso,&nbsp;<strong>la C&eacute;dula Profesional estar&aacute; a disposici&oacute;n del solicitante una vez transcurridos 30 d&iacute;as h&aacute;biles desde la fecha de entrega del acuse de recibo.</strong></p>
<h1 class="tds-message-box box-note ">&iquest;Qui&eacute;n se encarga del Registro de T&iacute;tulo y Expedici&oacute;n de la C&eacute;dula Profesional?</h1>
<p>El Registro de t&iacute;tulo y la expedici&oacute;n de c&eacute;dula profesional est&aacute;n a cargo de la Direcci&oacute;n General de Profesiones, oficina que forma parte de la Secretar&iacute;a de Educaci&oacute;n P&uacute;blica. El Registro Nacional de Profesionista es por otra parte una herramienta para consultar la c&eacute;dula profesional.</p>
<p>Para el caso de los t&iacute;tulos acad&eacute;micos expedidos antes de octubre de 2018 se pueden presentar en formato digital PDF. La carpeta con los archivos electr&oacute;nicos debe ser nombrada con el n&uacute;mero CURP, que ser&aacute; copiada y devuelta inmediatamente.</p>
<p>Ahora bien, si la Oficina de la Direcci&oacute;n General de Profesionistas lo requiere, lugar donde se tramita la c&eacute;dula profesional, se tendr&aacute;n que presentar los documentos originales para verificar la autenticidad.</p>
<h1 class="tds-message-box box-note ">Conclusi&oacute;n Claves para sacar mi c&eacute;dula profesional</h1>
<p>Tramitar la expedici&oacute;n de una c&eacute;dula profesional debe ser tu primera acci&oacute;n al egresar del instituto acad&eacute;mico profesional. El proceso es bastante sencillo, y con los siguientes consejos m&aacute;s.</p>
<ul>
<li>El CURP debe estar vigente para el momento de hacer la solicitud de registro de t&iacute;tulo y expedici&oacute;n de la c&eacute;dula para profesionistas.</li>
<li>Puedes hacer el tr&aacute;mite desde un dispositivo electr&oacute;nico, a trav&eacute;s del portal de Secretar&iacute;a de Educaci&oacute;n P&uacute;blica o de manera presencial.</li>
<li>Para hacer el tr&aacute;mite en l&iacute;nea debes poseer una E-firma que sea v&aacute;lida y est&eacute; vigente.</li>
<li>Si realizas tu solicitud online puedes hacerlo cualquier d&iacute;a del a&ntilde;o, durante las 24 horas del d&iacute;a.</li>
<li>A trav&eacute;s del n&uacute;mero de reporte asignado, podr&aacute;s hacerle seguimiento a tu&nbsp;<strong>tr&aacute;mite de c&eacute;dula profesional en M&eacute;xico.</strong></li>
</ul>
<p>En caso de necesitar informaci&oacute;n adicional, puedes comunicarte a los&nbsp;<strong>n&uacute;mero de la Secretar&iacute;a de Educaci&oacute;n P&uacute;blica</strong>. Comun&iacute;cate al 36013800 extensi&oacute;n 61100, TelSEP 36017599, lada sin costo 01 800 288 6688, con un horario de atenci&oacute;n de lunes a viernes de 9:00 a 15:00 horas.</p>''',
      idServicio: 7,
      urlVideo: 'https://www.youtube.com/watch?v=mtWH_hQk0kg&t=68s',
    ),
  ];
  static final List<TramiteModel> listTramitesInfonavit = [
    TramiteModel(
      title: 'Mi cuenta Infonavit',
      description:
          '''<h2 class="titlepointdatoreg_dosCols">Recuerda que &uacute;nicamente<br />podr&aacute;s ingresar si ya est&aacute;s registrado</h2>
<div id="spacer328">&nbsp;</div>
<div class="titlefield_dosColumnas"><strong>En este espacio podr&aacute;s consultar tu informaci&oacute;n y hacer</strong><br /><strong>tr&aacute;mites en l&iacute;nea:</strong></div>
<ul class="instrucciones">
<li>Cu&aacute;nto ahorro tienes en la Subcuenta de Vivienda.</li>
<li>Resumen de movimientos de tu Subcuenta de Vivienda Infonavit.</li>
<li>Actualiza o corrige tu Registro Federal de Contribuyentes (RFC) con tu firma electr&oacute;nica avanzada, tu recibo de n&oacute;mina digital (CFDI) o generando una cita.</li>
<li>Haz aportaciones extraordinarias.</li>
</ul>
<div class="titlefield_dosColumnas"><strong>Si a&uacute;n no tienes cr&eacute;dito o ya lo est&aacute;s tramitando:</strong></div>
<ul class="instrucciones">
<li>Precalificaci&oacute;n y puntos.</li>
<li>En qu&eacute; va tu solicitud de cr&eacute;dito.</li>
</ul>
<div class="titlefield_dosColumnas"><strong>Si ya tienes cr&eacute;dito:</strong></div>
<ul class="instrucciones">
<li>Cu&aacute;nto debes.</li>
<li>Estado de cuenta.</li>
<li>C&oacute;mo, cu&aacute;ndo y d&oacute;nde puedes pagar.</li>
<li>Pago de tu mensualidad en l&iacute;nea.</li>
<li>Avisos de Suspensi&oacute;n y Retenci&oacute;n de Descuentos.</li>
<li>Constancia para la declaraci&oacute;n anual de impuestos.</li>
</ul>''',
      idServicio: 3,
      url: 'https://micuenta.infonavit.org.mx/wps/portal/mci2/login/',
      buttonTitle: 'Acceder a Mi Cuenta',
    ),
    TramiteModel(
        title: 'Mi Espacio Infonavit',
        description:
            '''<h2><span class="titulogrisch">Mi Espacio Infonavit</span></h2>
<p>Es un servicio donde:</p>
<ul>
<li><strong>Conocer&aacute;s</strong>, paso a paso, las acciones que debes realizar para formalizar tu cr&eacute;dito</li>
<li><strong>Obtendr&aacute;s</strong>, toda la informaci&oacute;n y condiciones financieras de tu cr&eacute;dito</li>
<li><strong>Contar&aacute;s</strong>, en el momento que lo necesites, con opciones de asesor&iacute;a y ayuda en l&iacute;nea.</li>
</ul>''',
        idServicio: 3,
        url:
            'https://precalificaciones.infonavit.org.mx/wpEstadoSolicitudCreditoWeb/servlet/org.infonavit.estadosolicitud.controlador.Consulta',
        buttonTitle: 'Acceder a Mi Espacio Infonavit'),
    TramiteModel(
      title: 'Cita en Línea',
      description:
          '''Agenda tu cita en línea a través de tu cuenta Infonavit. Si no tienes acceso puedes registrarte ahora mismo.
 
<h2 id="tab-con-6" class="" data-css="tve-u-171c7bd3d3f">&iquest;C&oacute;mo puedo agendar una cita en el Infonavit?</h2>


<p data-css="tve-u-176053b10b9">Puedes agendar una cita Infonavit para realizar tus tr&aacute;mites de varias formas:</p>
<p data-css="tve-u-171c7b2e101">&nbsp;</p>
<ol class="">
<li data-css="tve-u-176053b246b">Via telef&oacute;nica llamando al&nbsp;<strong>55 9171 5050</strong>&nbsp;desde &nbsp;Ciudad de Mexico o al&nbsp;<strong>&nbsp;800 008 3900</strong>&nbsp;cualquier ciudad<strong>&nbsp;de Lunes a Viernes (8:30 A 21 Hrs)</strong></li>
<li data-css="tve-u-176053b3a34">Ir a unas de las oficinas CESI que hay repartidas por todo el pais.</li>
<li data-css="tve-u-176053b3a36">En tu<a class="tve-froala" href="https://micuenta.infonavit.org.mx/wps/portal/mci2/login/" target="_blank" rel="nofollow noopener">&nbsp;cuenta Infonavit</a>&nbsp;puedes agendar tu cita .</li>
<li data-css="tve-u-176053b3a39">Con tu CURP siempre y cuando estes registrado.&nbsp;<a class="tve-froala" href="http://portal.infonavit.gob.mx/wps/portal/Infonavit/Servicios/Trabajadores/CitasAsesoresCertificados" target="_blank" rel="nofollow noopener">Aqui</a></li>
</ol>


<h1 class="tve_contents_table"><span class="tve_ct_title" data-css="tve-u-171c7bf6e74">&iquest;Tienes dudas con tu cita?</span></h1>

<h2 id="tab-con-7" class="" data-css="tve-u-171c7bd49c2"><span data-css="tve-u-171c7bd49cc">Que debo llevar a una cita</span></h2>

<p data-css="tve-u-176053bcbc1">Si vas a asistir a una cita en tu&nbsp;<strong>oficina CESI</strong>&nbsp;es muy importante que lleves los documentos necesarios seg&uacute;n tu tr&aacute;mite, los esenciales son&nbsp;<strong>documentaci&oacute;n oficial vigente y comprobante de cita</strong>.</p>


<h2 id="tab-con-8" class="" data-css="tve-u-171c7bd551c"><span data-css="tve-u-171c7bd5526">&iquest;Puedo cancelar o posponer una cita?</span></h2>

<p data-css="tve-u-176053befa9"><strong>Si , puedes cancelar o modificar tu cita Infonavit</strong>&nbsp;con&nbsp;<strong>48 Hrs de antelaci&oacute;n</strong>&nbsp;de dos formas, a traves del&nbsp;<a class="tve-froala" href="https://micuenta.infonavit.org.mx/wps/portal/mci2/login/" target="_blank" rel="nofollow noopener">portal de Infonavit</a> con tu cuenta o llamando por tel&eacute;fono al (55) 9171 5050 en la Ciudad de M&eacute;xico o 800-008-3900 desde cualquier ciudad del Estado sin costo alguno.&nbsp;</p>


<h2 id="tab-con-9" class="" data-css="tve-u-171c7bd60aa"><span data-css="tve-u-171c7bd60b2">Cita para notarios</span></h2>

<p data-css="tve-u-176053bfdc3"><strong>Los notarios&nbsp;</strong>son los encargados de proteger el patrimonio de los trabajadores, si quieres<strong>&nbsp;pedir una cita</strong> para realizar un tr&aacute;mite o servicio rellena los siguientes datos.</p>

<h2 id="tab-con-10" class="" data-css="tve-u-171c7bd7422"><span data-css="tve-u-171c7bd742b">Cuantos tipos de cita existen</span></h2>

<p data-css="tve-u-176053c0a98">Son muchas los<strong>&nbsp;tipos citas</strong>&nbsp;que puedes hacer en Infonavit para realizar tus tr&aacute;mites:</p>
<p data-css="tve-u-171c7b2e101">&nbsp;</p>
<ul class="">
<li class="" data-css="tve-u-176053c37f8"><strong>Asesor&iacute;as</strong>,&nbsp;<strong>cr&eacute;ditos</strong>, devoluciones de fondos de ahorro,&nbsp;<strong>resolver dudas&nbsp;</strong>de cr&eacute;ditos ya solicitados,&nbsp;<strong>correcciones&nbsp;</strong>de datos,&nbsp;<strong>escrituras</strong>,&nbsp;<strong>cartas de saldo</strong>...</li>
</ul>

<h2 id="tab-con-11" class="" data-css="tve-u-171c7bd8946"><span data-css="tve-u-171c7bd894f">Cita para corregir RFC</span></h2>

<p data-css="tve-u-176053c436a">Es muy importante que puedas<strong>&nbsp;corregir tu RFC</strong>&nbsp;y lo mejor de todo es que&nbsp;<strong>no es necesario que pidas una cita</strong>. Entra al&nbsp;<a class="tve-froala" href="https://micuenta.infonavit.org.mx/wps/portal/mci2/login" target="_blank" rel="nofollow noopener">portal Infonavit</a>, elije la opci&oacute;n de&nbsp;<strong>correcci&oacute;n RFC</strong>&nbsp;y&nbsp;<strong>busca tu archivo XML para cargar</strong>. Una vez cargado revisa tu informacion sea correcta.</p>


<h2 id="tab-con-1" class="" data-css="tve-u-171c7bd988b"><span data-css="tve-u-171c7bd98a1">Cita para devolucion de excedente</span></h2>

<p data-css="tve-u-176053c64d8"><strong>Tienes dinero a tu favor</strong>&nbsp;tras haber liquidado un cr&eacute;dito y&nbsp;<strong>no sabes como solicitarlo</strong>? Solicita tu<strong>&nbsp;cita por internet para tu devoluci&oacute;n de excedente</strong>&nbsp;e ingresa al servicio de&nbsp;<strong>devoluci&oacute;n de pagos</strong>. Para realizar tu tr&aacute;mite es necesario una&nbsp;<strong>firma electr&oacute;nica</strong>.</p>


<h2 id="tab-con-2" class="" data-css="tve-u-171c7cb7a41">Cuantas citas puedo tener en un dia</h2>

<p data-css="tve-u-176053d3f41">Puedes tener<strong>&nbsp;un m&aacute;ximo de 10 citas al dia&nbsp;</strong>en la oficina CESI de tu ciudad con tu asesor certificado</p>

<h2 id="tab-con-3" class="" data-css="tve-u-171c7bda55e"><span data-css="tve-u-171c7bda567">Cita para recoger escrituras</span></h2>

<p data-css="tve-u-176053d1103">Quiz&aacute;s esta sea&nbsp;<strong>la mejor cita de Infonavit</strong>, es el momento de<strong>&nbsp;recoger tus escrituras</strong>&nbsp;porque&nbsp;<strong>pagastes tu cr&eacute;dito</strong>. Para recoger tu escritura debes de llevar tu identificaci&oacute;n oficial y comprobante de cita.&nbsp;</p>

          ''',
      idServicio: 3,
      url: 'https://micuenta.infonavit.org.mx/wps/portal/mci2/login/',
      buttonTitle: 'Pide tu cita ONLINE',
    ),
    TramiteModel(
      title: 'Puntos y Precalificación',
      description:
          '''<p>Checa tus puntos Infonavit para conseguir el crédito de la casa de tus sueños en la página oficial.</p>
<h2>¿Cómo revisar mi Precalificación Infonavit?</h2>
<p>Revisar tu precalificación en El Infonavit es muy sencillo. Solo necesitas escribir los datos que te pedimos, registrar tu <strong>Número de Seguridad Social (NSS) y fecha de nacimiento. </strong>Si deseas revisar un crédito conyugal los pasos son los mismos, rellena tus datos cuidadosamente, pues si el RFC y el CURP no coinciden no podrás solicitarlo.</p>
<p>Recuerda que<strong> Infonavit solicita tu historial crediticio para una investigación</strong> lo cual no significa que se niegue el crédito.</p>
<h2>¿Como se calculan los puntos?</h2>
<p>Para saber<strong> como se calculan los puntos Infonavit</strong> se necesitan cuatro factores:<strong> edad, salario base, ahorro en subcuenta de vivienda y bimestres cotizados</strong> en tu vida laboral. Con estos valores vamos a utilizar<strong> tres tablas</strong>.</p>
<p><strong>Tabla 2</strong> : Ahorro en tu subcuenta de vivienda</p>
<table>
<thead>
<tr>
<th>
<p>De (UMA)</p>
</th>
<th>
<p>A (UMA)</p>
</th>
<th>
<p>Puntos</p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<p>0</p>
</td>
<td>
<p>1.7</p>
</td>
<td>
<p>24</p>
</td>
</tr>
<tr>
<td>
<p>1.71</p>
</td>
<td>
<p>2.2</p>
</td>
<td>
<p>27</p>
</td>
</tr>
<tr>
<td>
<p>2.21</p>
</td>
<td>
<p>2.6</p>
</td>
<td>
<p>31</p>
</td>
</tr>
<tr>
<td>
<p>2.61</p>
</td>
<td>
<p>3.1</p>
</td>
<td>
<p>33</p>
</td>
</tr>
<tr>
<td>
<p>3.11</p>
</td>
<td>
<p>3.7</p>
</td>
<td>
<p>35</p>
</td>
</tr>
<tr>
<td>
<p>3.71</p>
</td>
<td>
<p>4.5</p>
</td>
<td>
<p>37</p>
</td>
</tr>
<tr>
<td>
<p>4.51</p>
</td>
<td>
<p>en adelante</p>
</td>
<td>
<p>39</p>
</td>
</tr>
</tbody>
</table>
<p><strong>Tabla 1</strong> : Salario en unidad de medida, actualización (UMA) y edad = puntos </p>
<table>
<thead>
<tr>
<th>
<p>Años</p>
</th>
<th>
<p>1 a 2.6 UMA</p>
</th>
<th>
<p>2.7 a 3.6 UMA</p>
</th>
<th>
<p>3.7 a 5.2 UMA</p>
</th>
<th>
<p>5.3 a 6.7 UMA</p>
</th>
<th>
<p>6.8 a 11 UMA</p>
</th>
<th>
<p>+ 11.1 UMA </p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<p><strong>17</strong></p>
</td>
<td>
<p>30</p>
</td>
<td>
<p>31</p>
</td>
<td>
<p>32</p>
</td>
<td>
<p>34</p>
</td>
<td>
<p>39</p>
</td>
<td>
<p>40</p>
</td>
</tr>
<tr>
<td>
<p><strong>18 a 20</strong></p>
</td>
<td>
<p>56</p>
</td>
<td>
<p>57</p>
</td>
<td>
<p>58</p>
</td>
<td>
<p>60</p>
</td>
<td>
<p>65</p>
</td>
<td>
<p>66</p>
</td>
</tr>
<tr>
<td>
<p><strong>21 a 34</strong></p>
</td>
<td>
<p>60</p>
</td>
<td>
<p>61</p>
</td>
<td>
<p>62</p>
</td>
<td>
<p>64</p>
</td>
<td>
<p>69</p>
</td>
<td>
<p>70</p>
</td>
</tr>
<tr>
<td>
<p><strong>35 a 42</strong></p>
</td>
<td>
<p>63</p>
</td>
<td>
<p>64</p>
</td>
<td>
<p>65</p>
</td>
<td>
<p>67</p>
</td>
<td>
<p>72</p>
</td>
<td>
<p>73</p>
</td>
</tr>
<tr>
<td>
<p><strong>43 a 49</strong></p>
</td>
<td>
<p>66</p>
</td>
<td>
<p>67</p>
</td>
<td>
<p>68</p>
</td>
<td>
<p>70</p>
</td>
<td>
<p>75</p>
</td>
<td>
<p>76</p>
</td>
</tr>
<tr>
<td>
<p><strong>50 a mas</strong></p>
</td>
<td>
<p>51</p>
</td>
<td>
<p>52</p>
</td>
<td>
<p>53</p>
</td>
<td>
<p>55</p>
</td>
<td>
<p>60</p>
</td>
<td>
<p>61</p>
</td>
</tr>
</tbody>
</table>
<p><strong>Ejemplo práctico</strong></p>
<table>
<thead>
<tr>
<th>
<p>Datos</p>
</th>
<th>
<p>Alex</p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<p>Edad</p>
</td>
<td>
<p>45</p>
</td>
</tr>
<tr>
<td>
<p>Salario Mensual</p>
</td>
<td>
<p>15000</p>
</td>
</tr>
<tr>
<td>
<p>Salario base cotizado</p>
</td>
<td>
<p>350</p>
</td>
</tr>
<tr>
<td>
<p>Ahorro subcuenta de vivienda</p>
</td>
<td>
<p>63000</p>
</td>
</tr>
<tr>
<td>
<p>Cotización continua</p>
</td>
<td>
<p>7 años</p>
</td>
</tr>
</tbody>
</table>
<p><strong>Tabla 3</strong> : Tu cotización continuada en tu vida laboral</p>
<table>
<thead>
<tr>
<th>
<p>Bimestres cotizados</p>
</th>
<th>
<p>Puntos</p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<p>Hasta 5</p>
</td>
<td>
<p>0</p>
</td>
</tr>
<tr>
<td>
<p>De 6 a 12</p>
</td>
<td>
<p>16</p>
</td>
</tr>
<tr>
<td>
<p>De 13 a 15</p>
</td>
<td>
<p>23</p>
</td>
</tr>
<tr>
<td>
<p>Mas de 16</p>
</td>
<td>
<p>38</p>
</td>
</tr>
</tbody>
</table>
<p>Vamos a realizar un caso práctico con Alex, el cual gana <strong>15000 MXN mensuales</strong> y tiene <strong>45 años</strong>, siendo el <strong>valor del UMA en 2020</strong> de <strong>2641 pesos mensuales</strong>. Si dividimos su salario mensual por el valor del UMA mensual (2641 pesos) nos da como resultado 5.67 UMA, si buscamos con este mismo resultado en primera tabla con su edad nos da un valor de<strong> 70 puntos</strong>. </p>
<p>Segundo paso tomamos el salario base de cotización y lo multiplicamos por 30 para luego dividirlo por el ahorro en la subcuentad e vivienda, es decir 350x30= 10500 y 63000 entre 10500 = 6 UMA. Con este valor vamos a la tabla 2 y vemos que nos concede <strong>39 puntos</strong>.</p>
<p>Tercer paso, <strong>calcumamos los bimestres trabajados</strong>, el año tiene<strong> 6 bimestres</strong> lo cuales multiplicamos por los años trabajados, 6x7= <strong>42 bimestres cotizados</strong>. Con el resultado verificamos los puntos asignados en la Tabla 3. <strong>Son 38 puntos</strong>.</p>
<p>Por último<strong> </strong><strong>sumamos lo puntos asignados</strong> que ha conseguido Alex en los tres pasos: 70+39+38 = 147 puntos. <strong>!! Enhorabuena Alex ha superado los 116 puntos exigidos y puede precalifica para un crédito !!</strong> </p>
<h2>¿Cuántos puntos de Infonavit se acumulan por mes?</h2>
<p>Cuanto mayor sea tu salario en el mes, mayor será tu aportación en la <strong>subcuenta de vivienda</strong>, por ende <strong>mas puntos en tu cuenta Infonavit</strong>.</p>
<h2>¿Cómo checar mis puntos de Infonavit desde mi celular?</h2>
<p><strong>Checar tus puntos Infonavit es muy sencillo</strong> desde un <strong>celular </strong>es muy sencillo, desde nuestra plataforma lo puedes consultar rellenando los datos que te pedimos. Consultalo ahora mismo.</p>
<h2>¿Por qué no puedo ver mis puntos ?</h2>
<p>Pueden haber varios motivos del <strong>porque no veas tus puntos,</strong> vamos a mencionar alguna de las razones:  </p>
<ul>
<li>No tener una relación laboral activa. </li>
<li>Tu patrón o empresa no te ha resgistrado.</li>
<li>Tener un crédito pendiente de pago o en trámite.</li>
<li>Haber tramitado un crédito en el pasado</li>
<li>Pensión en tramitación.</li>
</ul>
<h2>¿Cada cuanto se actualizan mis puntos?</h2>
<p>Tu patrón o empresa realiza <strong>aportaciones cada dos meses</strong> a tu subcuenta de vivienda aumentando los puntos de tu cuenta de forma bimestral. Te aconsejamos que <strong>cada bimestre en tu cuenta Infonavit revises las posibles actualizaciones</strong>.</p>
<h2>Tipos de créditos para precalificacion Infonavit</h2>
<p>Existen <strong>6 tipos de precalificación Infonavit</strong>, dependiendo de tus necesidades. Según tu salario, edad, montos podrás acceder a uno de los siguientes créditos,<strong> Infonavit es para todos: Mejoravit, Confinavit, Cambiavit, Infonavit Total y Crédito seguro Infonavit.</strong></p>
<h2>¿Puedo precalificar si estoy en un buró de crédito?</h2>
<p><strong>Infonavit no niega créditos</strong>. Puedes acceder de forma positiva a una precalificación de un crédito Infonavit, el único inconveniente es que quizás no recibas el monto que necesites.<strong> Infonavit realiza un estudio de tu historial crediticio es importante estar al corriente de pago en todas tus deudas</strong>.</p>
<h2>¿Cuántos puntos necesito para precalificar a un crédito Infonavit ?</h2>
<p>Según las políticas de Infonavit hay un<strong> requisito único para acceder a todos los trámites</strong> y son tener<strong> 116 puntos</strong> para obtener un crédito.</p>
<h2>¿En cuánto tiempo hago los 116 puntos ?</h2>
<p>Dependerá mucho de tu salario pero para hacerte una idea alrededor de<strong> 2 años y medio aprox</strong> de trabajo continuo y que tu patrón haya realizado las aportaciones obligatorias  a tu subcuenta de vivienda.</p>
<h2>¿Qué pasa si aún no tienes los puntos Infonavit para obtener tu crédito?</h2>
<p>Si quieres ejercer tus puntos infonavit pero no llegas a los 116 mínimos obligatorios tienes varias alternativas:  </p>
<ul>
<li><strong>Precalificación Anticipada</strong> para aquellos derechohabitantes que no llegan a la puntuacion mínima y conservan una estabilidad laboral con al menos los últimos tres bimestres continuos de cotización.</li>
<li><strong>Crédito seguro Infonavit Bansefi</strong> consiste en ahorrar entre 20.000 a 80.000 (depende de tu edad y salario) pesos para cubrir esos punto que necesitas </li>
</ul>
<h2>¿ Cuanto paga Infonavit a mi empresa ?</h2>
<p>Tu empresa o patrón paga a Infonavit el<strong> 5% de tu salario cada 2 meses</strong>. Ese dinero se va acumulando en tu <strong>subcuenta de vivienda</strong>.</p>
<h2>¿Que es la precalificacion de Infonavit?</h2>
<p>La <strong>precalificacion de Infonavit</strong> es una notificación que se hace via online para saber si cumples con los<strong> puntos necesarios para tramitar un crédito</strong>. </p>

          ''',
      idServicio: 3,
      url:
          'https://precalificaciones.infonavit.org.mx/Precalificacion/precalif.xhtml?tipoProducto=CI',
      buttonTitle: 'Checa tus Puntos Infonavit',
    ),
    TramiteModel(
      title: 'Créditos Infonavit',
      description: '''<h1>Solicita tu Crédito Infonavit. Que debes saber</h1>
<h1>Solicita tu crédito Infonavit</h1>
<p>Quieres una <strong>asesoría personalizada</strong> para tomar la mejor decision en tu <strong>crédito Infonavit</strong> ? Responde unas preguntas y comenta tus necesidades y condiciones para la mejor elección.</p>
<p><a href="http://apiweb.infonavit.org.mx/ApiWeb/inicio.do">Asesoria Personalizada</a></p>
<hr/>
<h2> ¿Qué puedo hacer con un crédito Infonavit ?</h2>
<p>Utiliza tu subcuenta de vivienda para una <strong>mejor calidad de vida</strong>. Esto es lo que puedes hacer al <strong>solicitar tu crédito Infonavit</strong>: </p>
<ul>
<li><strong>Comprar una vivienda</strong> nueva o usada, para reformar o hipotecada.</li>
<li><strong>Construir una vivienda</strong> si ya dispones de un lote propio o de un conyuge</li>
<li><strong>Pagar una hipoteca</strong> de otra entidad financiera.</li>
<li><strong>Reformar tu casa</strong> para agrandarla o repararla. </li>
</ul>
<h1>Consulta cualquier duda sobre tu crédito Infonavit</h1>
<h2>¿Quién tiene derecho a un credito infonavit?</h2>
<p><strong>Todos los trabajadores incritos en el IMSS</strong> que hayan aportado al sistema de ahorro en su subcuenta de vivienda <strong>tienen derecho a un crédito Infonavit</strong>. A través de sus semanas cotizadas podrán precalificar dependiendo de la cantidad de puntos. </p>
<h2>¿Qué pasa si cancelo mi solicitud de credito infonavit?</h2>
<p>Lo primero que debes saber es que solo <strong>hay tres formas de cancelar un crédito Infonavit</strong>: </p>
<ol>
<li><strong>Cuando se completa de pagar</strong></li>
<li><strong>Cuando se vende una propiedad</strong> y se paga el crédito Infonavit.</li>
<li><strong>Cuando se da la propiedad en forma de pago</strong> para cancelar el crédito.</li>
</ol>
<h2>¿Qué pasa si quiero traspasar mi credito infonavit?</h2>
<p>Se puede<strong> traspasar un credito infonavit</strong> a un derechohabiente <strong>siempre que este registrado en el instituto y cumpla con los requisitos</strong>. Si no puedes seguir pagando tu vivienda otra persona lo puede hacer por ti con las consiguientes<strong> cancelaciones de escritura por parte de un notario</strong>.</p>
<h2>¿Cuántas semanas debo cotizar para mi credito infonavit?</h2>
<p>Para acceder a un crédito Infonavit debes primero <strong>precalificar con una cantidad de puntos</strong> basados en tus semanas de cotización. Si quieres saber <strong>como calcular tus puntos </strong>para acceder a tu credito te dejamos el siguiente enlace.</p>
<p><a href="https://precalificaciones.infonavit.org.mx/Precalificacion/precalif.xhtml?tipoProducto=CI">Calcula tus puntos</a></p>
<h2>¿Cuánto tiempo tarda Infonavit en aprobar un credito?</h2>
<p>El tiempo que tarda Infonavit en liberar un crédito siguiendo su curso normal es de<strong> 15 a 30 dias aprox</strong>.</p>
<h2>¿ Que se necesita para un avaluo ?</h2>
<p><strong>Estos son los requisitos para tu avaluo</strong> :<strong> Identificación oficial</strong>, 3 recibos de <strong>luz</strong>, recibo de<strong> predial</strong> (Copia del último pago), copia de <strong>escritura </strong>a evaluar.</p>
<h2>¿Cuánto cobra un avalúo de Infonavit?</h2>
<p>Un <strong>avaluo </strong>es un documento el cual nos proporciona las <strong>características del inmueble</strong> y el valor aproximado de este. Lo realiza un<strong> perito certificado por la Sociedad Hipotecaria Federal </strong>y tiene el siguiente costo.</p>
<table>
<thead>
<tr>
<th>
<p>Cuota de servicio Infonavit</p>
</th>
<th>
<p>Monto</p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<p>Oferta registrada</p>
</td>
<td>
<p>840 MXN</p>
</td>
</tr>
<tr>
<td>
<p>Vivienda recuperada - Avaluo basa</p>
</td>
<td>
<p>1400 MXN</p>
</td>
</tr>
</tbody>
</table>
<p>   </p>
<h2>¿Qué es SSV de Infonavit?</h2>
<p><strong>El SSV es el saldo de tu subcuenta de vivienda</strong> donde tu patrón ha ido realizando <strong>aportaciones cada bimestre</strong> a Infonavit. Dependiendo de cuanto sea tu ahorro en la SV podrás pedir tu<strong> crédito Infonavit</strong></p>
<h2>¿Cómo hacer mis pagos de Infonavit sin empleo?</h2>
<p>¿Dónde puedo pagar mi casa de infonavit si me he quedado sin empleo ? Si antes tenias trabajo tu credito se cobrababa a traves de tu salario pero si ya no tienes <strong>puedes pagarlo de tres maneras</strong>: A traves de bancos, establecimientos o en linea. Conoce toda la informacion</p>
<p><a href="https://portalmx.infonavit.org.mx/wps/portal/infonavit.web/trabajadores/tengo-un-credito/pagos/!ut/p/z1/jZDNCoJQEEafxYXLnLlWYu1M6mr0Q5BkswkNuwrqDbOkt89sFaQ2uxnOGWY-IPCB8uCRiKBMZB6kdX8k42RwRMcesQ0aexutxXKH6y3X0WZwaADdROQzZBtuOmYNzN35ZDXUuceA_vGxpSz8z-8AqHv9AahB2j4YYw_A-oB3Bn1XLIFEKsNP4FYeDk0BVESXqIgK7V7U47gsr7epiipWVaUJKUUaaWeZqfhLieWtBP-bhGvmeT4m7oDCZ2Upygu9-TFs/dz/d5/L2dBISEvZ0FBIS9nQSEh/">Donde pago</a>  </p>
<h2>Como saber numero de crédito de Infonavit</h2>
<p><strong>Consultar tu número de crédito Infonavit es muy sencillo</strong>, si tienes un <strong>estado de cuenta</strong> en tu poder, <strong>revisa la parta superior</strong> en el apartado "Datos y características financieras del crédito" de lo contrario tienes dos maneras:</p>
<p> </p>
<ol>
<li><strong>Llamando </strong>al  9171-5050 (Ciudad de Mexico) o al 01800-008-3900 desde otra ciudad del pais, recuerda necesitaras tu NSS.</li>
<li>Desde tu <a href="https://micuenta.infonavit.org.mx/wps/portal/mci2/login/">cuenta Infonavit</a></li>
</ol>
<p> </p>
<h2>Como saber cuanto me presta Infonavit</h2>
<p>Si estas pensando en <strong>comprar una vivienda, ya tienes derecho al crédito y sabes cual es tu producto financiero </strong>perfecto, en la <strong>calculadora </strong>que te dejamos a contiuación puedes hacerte un aproximado con tu edad y salario mensual.</p>
<p><a href="https://portalmx.infonavit.org.mx/wps/portal/infonavit.web/trabajadores/!ut/p/z1/04_Sj9CPykssy0xPLMnMz0vMAfIjo8zijSwMDNydDAz93C08LAwc3Vw9XS19jI3cDQ30wwkpiAJKG-AAjiD9UWAluEwINYQqwGNGQW6EQaajoiIA0SbkSA!!/dz/d5/L2dBISEvZ0FBIS9nQSEh/">Calculadora</a>  </p>
<h2>Cual es la tasa de interés de los creditos infonavit</h2>
<p>Tu tasa de interes dependerá del tipo o producto de crédito (Mejoravit, Cofinavit, Cambiavit...) que solicites pero<strong> nunca sobrepasará del 12% .</strong></p>
<p> </p>
<h2>¿Qué pasa con el credito infonavit en caso de jubilación?</h2>
<p>Si una persona entra en su jubilación ya no se realizará su cobro por nómina mensual, deberá seguir pagando a traves de uno de los bancos que indique el instituto. <strong>El crédito se debe seguir pagando.</strong></p>
<p> </p>
<h2>¿Qué pasa si no utilizo mi crédito Infonavit?</h2>
<p><strong>Si no utilizas un crédito Infonavit no sucede nada</strong>, el dinero que has estado aportando a una subcuenta de vivienda<strong> no se pierde</strong>,<strong> lo puedes recuperar en un futuro</strong> bajo unas condiciones.</p>
<h2>¿Cuánto cuesta liberar una hipoteca de Infonavit?</h2>
<p><strong>Para liberar tu hipoteca a efectos legales</strong> dependiendo del estado donde vivas, se puede hacer a través de un notario público o en el Registro público de la propiedad. <strong>El costo puede llegar a ser entre 7000 MXN a 9000 MXN</strong></p>
<h2>¿Cuánto debo de mi credito de infonavit?</h2>
<p>Para <strong>checar su crédito</strong> y cuanto debe, tiene que entrar a su cuenta infonavit, en la pestaña<strong> "Mi crédito"</strong> puede <strong>descargar su estado de cuenta</strong> o realizar cualquier consulta.</p>
<p><a href="https://micuenta.infonavit.org.mx/wps/portal/mci2/login/!ut/p/z1/04_Sj9CPykssy0xPLMnMz0vMAfIjo8ziDVCAo4FTkJGTsYGBu7OJfjghBVEY0sgKgfqjwEqMzBxNnJwMHQ0s3IKdDBwdA4MN3b1CDNx9jaEK8JhRkBthkOmoqAgAXY6VvA!!/dz/d5/L2dBISEvZ0FBIS9nQSEh/">Entrar en Mi Cuenta</a>    </p>
<h2>¿Qué pasa con las deudas de una persona cuando muere?</h2>
<p>Si el titular original de la cuenta por desgracia fallece, <strong>el seguro de defuncion del Infonavit entregará el inmueble a la esposa o personas beneficiarias registradas</strong> en el mismo instituto. Infonavit solo reconoce a sus titulares.</p>
<p> </p>
<h2>¿Cuánto tarda mi escritura despues de cancelar mi hipoteca?</h2>
<p>Tu escritura estará disponible pasados<strong> 10 dias habiles</strong> y tienes <strong>20 dias para pasar a recogerla</strong> de lo contrario tu trámite será cancelado</p>''',
      idServicio: 3,
      url: 'http://apiweb.infonavit.org.mx/ApiWeb/inicio.do',
      buttonTitle: 'Asesoría Personalizada',
    ),
    TramiteModel(
        title: 'Cuenta de Ahorro',
        description: '''<h1>Todo lo que debes saber de tu cuenta de Ahorro</h1>
 
<h2>Crea tu cuenta de Infonavit en linea</h2>
<p>Ya puedes <strong>crear tu cuenta Infonavit en linea</strong> donde tendrás acceso a <strong>estados de cuenta</strong>, <strong>subcuentas de vivienda</strong>, corrección de RFC, todo lo relacionado a tus <strong>créditos </strong>y mucho mas.  <strong>Mi cuenta Infonavit</strong> es tu plataforma para estar al dia con tus ahorros. Resolvemos cualquier duda que tengas desde retiros hasta una contraseña olvidada.</p>
<a href="https://micuenta.infonavit.org.mx/wps/portal/mci2/registro/!ut/p/z1/04_Sj9CPykssy0xPLMnMz0vMAfIjo8ziDVCAo4FTkJGTsYGBu7OJfjghBVEY0sgKgfqjwEqMzBxNnJwMHQ0s3IKdDBwdA4MN3b1CDNx9jaEK8JhRkBthkOmoqAgAXY6VvA!!/dz/d5/L2dJQSEvUUt3QS80TmxFL1o2XzI2QTRCQjFBMDhGU0IwQUFRUzFHSlQwR0U1/">Ya puedes empezar</a>      
<h2>¿Cómo crear una cuenta de Infonavit?</h2>
<p><strong>Crear tu cuenta Infonavit</strong> si no tienes una se muy sencillo, sigue los siguientes pasos:</p>
<p> </p>
<ol>
<li><strong>Ingresa tu NSS</strong> (Número de seguridad Social) <strong>CURP </strong>(Clave Unica de Registro e Población) Y <strong>RFC </strong>(Registro Federal de Contribuyentes) y completa el<strong> código de seguridad</strong>.</li>
<li>Ingresa tus <strong>datos personales con tu correo electrónico</strong> de acceso y <strong>confirma tu registro.</strong></li>
<li><strong>Se te enviará un correo electrónico a tu bandeja de entrada para que hagas la confirmación</strong>. Revisa en correo no deseado si no llega. <strong>!! Terminastes¡¡</strong></li>
</ol>
   
<h2>¿Cómo checar mi estado de cuenta del Infonavit?</h2>
<p><strong>Revisar el estado de cuenta en linea</strong> es uno de las trámites mas rápidos y sencillos que puedes hacer sin tener que ir a una oficina. </p>
<p> </p>
<ol>
<li><strong>Registrarte </strong>con <a href="https://micuenta.infonavit.org.mx/wps/portal/mci2/login/">Mi cuenta Infonavit</a></li>
<li>Ir al apartado que tienes a la izquierda<strong> Estado de cuenta mensual </strong>y listo <strong>!! Ya lo tienes¡¡</strong></li>
</ol>
   
<h2>¿Cómo se puede retirar el dinero de la subcuenta del Infonavit?</h2>
<p><strong>Ya puedes retirar tu ahorro y solicitar la devolución de un saldo a favor de tu subcuenta de vivienda</strong>. Si ya sabes la cantidad y en que cuenta lo tienes existen dos maneras:</p>
<p> </p>
<ol>
<li>Entra en <a href="https://portalmx.infonavit.org.mx/wps/portal/infonavit.web/trabajadores/!ut/p/z1/04_Sj9CPykssy0xPLMnMz0vMAfIjo8zijSwMDNydDAz93C08LAwc3Vw9XS19jI3cDQ30wwkpiAJKG-AAjiD9UWAluEwINYQqwGNGQW6EQaajoiIA0SbkSA!!/dz/d5/L2dBISEvZ0FBIS9nQSEh">portal Infonavit</a> con tu cuenta, seccion <strong>" Trabajadores"</strong> y despues<strong> " Guia para retirar mi ahorro"</strong> donde podrás iniciar todo el proceso para tu trámite.</li>
<li><strong>Captura el NSS</strong> (Número de seguridad Social)</li>
<li><strong>Rellenar el formulario</strong> que se indica para recibir tu <strong>número de caso</strong>.</li>
<li><strong>Elegir oficina CESI de Infonvit </strong>mas cercana a tu ciudad.</li>
<li>Por último<strong> programar tu cita</strong>. En la misma web podrás hacer seguimiento de tu trámite.</li>
</ol>
   
<h2>¿Que rendimiento tiene mi ahorro?</h2>
<p><strong>Tus ahorros generan un rendimiento a final del mes</strong> el cual es establecido por la administración de Infonavit. Esta es tu tasa de rendimiento nominal  anual.</p>
<p> </p>
<table>
<thead>
<tr>
<th>
<p>Año</p>
</th>
<th>
<p>Tasa de rendimiento</p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<p>2019</p>
</td>
<td>
<p>7.32 %</p>
</td>
</tr>
<tr>
<td>
<p>2018</p>
</td>
<td>
<p>6.38 %</p>
</td>
</tr>
<tr>
<td>
<p>2017</p>
</td>
<td>
<p>8.32 %</p>
</td>
</tr>
</tbody>
</table>
   
<h2>¿Qué hacer si has olvidado tu cuenta?</h2>
<p><strong>Recuperar tu contraseña es posible</strong>, no te preocupes, solo necesitamos tu correo principal. Ten <strong>acceso a tu cuenta Infonavit</strong> ahora mismo.</p>
<a href="https://micuenta.infonavit.org.mx/wps/portal/mci2/recupera/!ut/p/z1/04_Sj9CPykssy0xPLMnMz0vMAfIjo8zijcwcTZycDB0NLNyCnQwcHQODDd29QgzcXU31w8EKDFCAo4FTkJGTsYGBu7OJfhQx-nEp8DUmTr8BDuBoQJn9QAVR-I0P14_CawXIB4TMKMgNDQ2NMMgEANjB7po!/dz/d5/L2dJQSEvUUt3QS80TmxFL1o2XzI2QTRCQjFBMDhGU0IwQUFRUzFHSlQwR1Uy/">Recupera tu contraseña</a>    
<h2>¿Cuándo puedo retirar mi ahorro de Infonavit?</h2>
<p>¿ Cómo recuperar el dinero de Infonavit ? Solo tienes dos maneras de retirar tu ahorro, una es si quieres<strong> comprar una casa</strong> y la segunda <strong>cumplir 65 años</strong> además de <strong>no haber solicitado ningún crédito</strong>.</p>
<p> </p>
   
<h2>¿Cual es el porcentaje de mi sueldo va a mi ahorro?</h2>
<p>Las aportaciones que realizas de tu sueldo es del<strong> 5% de tu salario base</strong> del trabajo que hayas realizado. </p>
   
<h2>¿ Que es la carta de desestimiento ?</h2>
<p><strong>Es un documento</strong> el cual avala el desistimiento de la demanda o amparo de <strong>la devolución del Saldo de Subcuenta de Vivienda</strong> ante la Junta Federal de Conciliación y Arbitraje o Juzgado</p>
   
<h2>¿Qué pasa con mi ahorro de Infonavit si dejo de trabajar?</h2>
<p><strong>Si dejas de trabajar</strong> y te das de baja en el IMSS<strong> no perderas tus puntos</strong>, siempre será conservado tu ahorro acumulado en la subcuenta de vivienda. Algo que si será afectado seran tus <strong>bimestres de cotización continua</strong>. </p>
   
<h2>¿Diferencias entre subcuentas de vivienda y Fondo de ahorro ?</h2>
<p>Es exactamente lo mismo pero con diferente nombre, <strong>la diferencia está en el año que comenzastes a trabajar</strong> : </p>
<p> </p>
<ul>
<li><strong>Fondo ahorro</strong>: aportaciones entre 1972 y 1992</li>
<li><strong>Subcuenta de Vivienda 1992</strong>: Entre 1992 y Junio de 1997</li>
<li><strong>Subcuenta de Vivienda 1997</strong>: A partir 1997</li>
</ul>
   
<h2>¿ Que tramites podemos realizar en Mi cuenta Infonavit</h2>
<p><strong>Son muchos los tramites que podemos hacer en linea</strong> a través de nuestra <strong>cuenta Infonavit</strong> ademas de consultar nuestro saldo. </p>
<p> </p>
<ul>
<li><strong>Actualización de RFC</strong>, ahorro en <strong>subcuenta de vivienda</strong>, precalificaciones y <strong>puntos</strong>, cuanto debes, <strong>pagos </strong>mensuales, donde pagar, solicitar <strong>créditos</strong>, quejas, <strong>constancias</strong> para la declaración de impuertos etc...</li>
</ul>
   
<h2>¿ Cuanto tarda en hacerse una devolución ?</h2>
<p><strong>El tiempo de devolución del saldo en tu subcuenta de vivienda será de 10 dias hábiles</strong> despúes de haber iniciado tu trámite en oficina CESI mas cercana.</p>''',
        idServicio: 3,
        url: 'https://micuenta.infonavit.org.mx/wps/portal/mci2/registro/',
        buttonTitle: 'Registrar una cuenta'),
  ];
  static final List<TramiteModel> listTramitesBuro = [
    TramiteModel(
      title: 'Checar Buró de Crédito',
      description:
          '''<h2>&iquest;Qu&eacute; es el Bur&oacute; de Cr&eacute;dito?</h2>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>Las Sociedades de Informaci&oacute;n Crediticia se conforman por varias empresas que son privadas, que pesar de tener su propia marca, la gente las ha adoptado como Bur&oacute; o Bur&oacute; de cr&eacute;dito, siendo que se le deber&iacute;a llamar reporte de historial crediticio.</p>
<p>Ellas se encargan de recaudar toda la informaci&oacute;n sobre las personas que adquieren cualquier cr&eacute;dito regulado por la&nbsp;<a href="https://www.gob.mx/cnbv" target="_blank" rel="noreferrer nofollow noopener" aria-label=" (abre en una nueva pesta&ntilde;a)">Comisi&oacute;n Nacional Bancaria y de Valores</a>. Algunas (y las m&aacute;s conocidas) son C&iacute;rculo de Cr&eacute;dito y Bur&oacute; de Cr&eacute;dito. Se encargan de expedir el historial crediticio, en este reporte viene desglosado:</p>
<ul>
<li>Cada uno de los pr&eacute;stamos que has pedido,</li>
<li>Compras realizadas con tarjetas de cr&eacute;dito,</li>
<li>Si has pagado a tiempo,</li>
<li>Cu&aacute;ntos retrasos has tenido,</li>
<li>Si la deuda sigue sin ser liquidada.</li>
</ul>
<h2>&iquest;Es malo estar en Bur&oacute;?&nbsp;</h2>
<p>Estar en Bur&oacute; se asocia con algo malo, pero es s&oacute;lo una leyenda, pues cualquier persona o empresa que alguna vez haya solicitado un cr&eacute;dito, est&aacute; en los registros de esta sociedad de informaci&oacute;n crediticia.&nbsp;</p>
<p>Estar en Bur&oacute; de Cr&eacute;dito no es malo siempre y cuando seas un buen pagador, pues las instituciones financieras ver&aacute;n tu historial y en caso de necesitarlo, te aprobaran un financiamientos sin mayores inconvenientes.&nbsp;</p>
<p>Por el contrario, si eres un mal pagador, s&iacute; est&aacute;s en problemas, pues eso es lo que ver&aacute;n los bancos y dif&iacute;cilmente te conceder&aacute;n un cr&eacute;dito.&nbsp;</p>
<h2>&iquest;C&oacute;mo funciona el Bur&oacute; de Cr&eacute;dito?&nbsp;</h2>
<p>Bur&oacute; de Cr&eacute;dito es una empresa privada que est&aacute; en contacto directo con las instituciones financieras, de modo que llevan un registro detallado de todos los cr&eacute;ditos que pides, pero no s&oacute;lo eso, sino tambi&eacute;n de c&oacute;mo los pagas.&nbsp;</p>
<p>A grandes rasgos, es la entidad encargada de construir tu historial crediticio, con el objetivo principal de saber si eres o no, un buen pagador.&nbsp;</p>
<h2>&iquest;Qu&eacute; se necesita para salir de Bur&oacute;?</h2>
<p>El simple hecho de pedir un cr&eacute;dito te lleva a ser parte del Bur&oacute; de Cr&eacute;dito, pero eso no es malo, al menos que no pagues tus deudas en tiempo y forma.&nbsp;</p>
<p>Tu historial crediticio s&oacute;lo refleja si eres un buen o mal pagador. Si eres de estos &uacute;ltimos, no dejar&aacute;s de ser se&ntilde;alado al menos que saldes tu deuda con la instituci&oacute;n financiera a la que le debes.&nbsp;</p>
<p>El otro camino es m&aacute;s largo, pues las deudas se reflejar&aacute;n en tu historial durante seis a&ntilde;os, despu&eacute;s de ese tiempo la marca negativa se borrar&aacute;.&nbsp;</p>
<p>&nbsp;</p>
<h2>&iquest;C&oacute;mo mantener un historial de cr&eacute;dito limpio?&nbsp;</h2>
<p>La &uacute;nica manera de conservar un historial crediticio limpio es pagar a tiempo las deudas que vayas adquiriendo a lo largo de tu vida.&nbsp;</p>
<p>De esta forma, siempre que necesites financiamiento y te acerques a una instituci&oacute;n financiera, ser&aacute; m&aacute;s f&aacute;cil que te lo den, pues tu historial te respaldar&aacute;.&nbsp;</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h2>&iquest;Por qu&eacute; es importante revisar tu historial crediticio?</h2>
<div class="wp-block-image">&nbsp;</div>
<p>La finalidad del reporte es expedir informaci&oacute;n que sea &uacute;til para las instituciones financieras que otorgan cr&eacute;ditos. Es una herramienta que les permite medir el riesgo de cada cr&eacute;dito que conceden.</p>
<p>Incluso, si eres una persona que siempre ha sabido c&oacute;mo funciona una tarjeta de cr&eacute;dito, no tiene deudas y eres un totalero de coraz&oacute;n, no importa... &iexcl;debes revisar tu reporte de cr&eacute;dito!</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h2>Bur&oacute; de Cr&eacute;dito...</h2>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>En estos tiempos es muy f&aacute;cil que nuestra informaci&oacute;n personal caiga en manos de cualquier persona, y sin darnos cuenta pueden hacer pr&aacute;cticamente lo que sea a nuestro nombre.</p>
<p>De hecho, en Resuelve tu Deuda hemos recibido casos en los que el &ldquo;deudor&rdquo; no fue quien solicit&oacute; el dinero, es m&aacute;s, &iexcl;ni siquiera lo recibi&oacute;!</p>
<p>Otro caso similar ocurre cuando, para tu mala suerte, hay una persona que se llama exactamente igual que t&uacute;, y por cuestiones del sistema se genera s&oacute;lo un reporte de cr&eacute;dito para ambas, &iexcl;s&iacute;! puedes terminar pagando por deudas que no son tuyas.</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h2>Hay una raz&oacute;n por la que est&aacute;s en la lista&hellip;</h2>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>Han surgido muchas creencias err&oacute;neas sobre este tema, entre ellas se encuentra la idea de estar en una lista negra o en un listado que da mala reputaci&oacute;n a los que se encuentran ah&iacute;.</p>
<p>La verdad es que no hay nada de malo, estar en el &ldquo;Bur&oacute;&rdquo;, ya sea que tengas el historial m&aacute;s pulcro de todos, te encontrar&aacute;s en el &ldquo;Bur&oacute;&rdquo;, lo cual NO est&aacute; mal.</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h2><br /><strong>&iquest;C&oacute;mo saber si estoy en Bur&oacute; de Cr&eacute;dito?</strong></h2>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>Recuerda que el hecho de que tu informaci&oacute;n aparezca en una base de datos de una Sociedad de Informaci&oacute;n Crediticia no significa que est&aacute;s en problemas. Para saber si apareces ah&iacute; y por qu&eacute;, simplemente contesta estas preguntas:</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<ul>
<li>&iquest;Cuentas o tuviste tarjetas de cr&eacute;dito o departamentales?</li>
<li>&iquest;Has solicitado cr&eacute;ditos con el banco?</li>
<li>&iquest;Obtuviste cr&eacute;ditos de Infonavit?</li>
</ul>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>Si contestaste que s&iacute; a cualquiera de las preguntas anteriores, seguro aparecer&aacute;s en la base de datos de C&iacute;rculo de Cr&eacute;dito o Bur&oacute; de Cr&eacute;dito.</p>
<p>En caso de nunca haber tenido tarjetas de cr&eacute;dito, no est&aacute; de m&aacute;s buscar, pues existen casos de personas que han sido v&iacute;ctimas del robo de identidad y alguien m&aacute;s ha comenzado su historial.</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h2><strong>&iquest;C&oacute;mo checar mi Bur&oacute; de Cr&eacute;dito gratis?</strong></h2>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>No olvides que puedes realizar tu consulta&nbsp;<strong>totalmente gratis una vez al a&ntilde;o</strong>, si necesitas realizar otra, tendr&aacute; un costo. Puedes obtenerlo en los sitios correspondientes a C&iacute;rculo de Cr&eacute;dito o Bur&oacute; de Cr&eacute;dito</p>
<p>Lo que necesitar&aacute;s:</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h3>Datos personales b&aacute;sicos:</h3>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<ul>
<li>Nombre</li>
<li>Direcci&oacute;n</li>
<li>Tel&eacute;fono</li>
<li>Fecha de nacimiento</li>
<li>Correo electr&oacute;nico</li>
<li>CURP y RFC</li>
</ul>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h3>Informaci&oacute;n financiera:</h3>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<ul>
<li>N&uacute;mero de tarjeta de cr&eacute;dito,</li>
<li>L&iacute;mite del cr&eacute;dito e instituci&oacute;n otorgante</li>
<li>N&uacute;mero de &nbsp;identificaci&oacute;n del cr&eacute;dito hipotecario o de autom&oacute;vil (en caso de haber adquirido alguno en los &uacute;ltimos cuatro a&ntilde;os) y qu&eacute; empresa lo autoriz&oacute;.</li>
</ul>
<h2><strong>&iquest;Puedo checar Bur&oacute; de Cr&eacute;dito gratis en Condusef?</strong></h2>
<p>La Comisi&oacute;n Nacional para la Protecci&oacute;n y Defensa de los Usuarios de Servicios Financieros (Condusef) es un organismo que se encarga de regular las pr&aacute;cticas financieras. Por lo cual, solicitar tu reporte de Bur&oacute; puede ser a trav&eacute;s de ellos, siempre y cuando llenes el formulario de autorizaci&oacute;n. Lo recomendable es consultar tu Bur&oacute; de Cr&eacute;dito en las p&aacute;ginas oficiales de este. Si es tu primera vez que lo checas, puedes revisarlo de manera gratuita.</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h2>&iquest;Cu&aacute;nto cuesta obtener mi historial crediticio en Bur&oacute; de Cr&eacute;dito y C&iacute;rculo de cr&eacute;dito?</h2>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>Puedes obtener tu historial crediticio de diferentes maneras ya sea por correo electr&oacute;nico o convencional, por tel&eacute;fono o fax. Como te lo hab&iacute;a mencionado, tienes la oportunidad de obtenerlo gratis una vez al a&ntilde;o, despu&eacute;s se realizar&aacute; el cargo correspondiente.</p>
<p>Estos son los precios que ofertan:</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<figure class="wp-block-table is-style-stripes">
<table>
<tbody>
<tr>
<td><strong>Tipo de reporte</strong></td>
<td><strong>C&iacute;rculo de cr&eacute;dito</strong></td>
<td><strong>Bur&oacute; de cr&eacute;dito</strong></td>
</tr>
<tr>
<td>Una vez al a&ntilde;o</td>
<td>Segunda vez al a&ntilde;o.</td>
<td>Una vez al a&ntilde;o</td>
<td>Segunda vez al a&ntilde;o.</td>
</tr>
<tr>
<td>Sin score</td>
<td>GRATIS</td>
<td>39.00 pesos</td>
<td>GRATIS</td>
<td>35.60 pesos</td>
</tr>
<tr>
<td>Con el score</td>
<td>GRATIS</td>
<td>59.00 pesos</td>
<td>GRATIS</td>
<td>&nbsp;58.00 pesos</td>
</tr>
</tbody>
</table>
</figure>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h2>&iquest;C&oacute;mo interpretar los resultados que te brinda C&iacute;rculo de Cr&eacute;dito o &nbsp;Bur&oacute; de Cr&eacute;dito?</h2>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>Encontrar&aacute;s mucha informaci&oacute;n en tu reporte de bur&oacute; de cr&eacute;dito y algunas marcas que te preguntar&aacute;s qu&eacute; quieren decir. Lucen algo similar a:</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h2>&iquest;Qu&eacute; es la puntuaci&oacute;n o calificaci&oacute;n crediticia?</h2>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>Es un puntaje que se genera de acuerdo a las estad&iacute;sticas basadas en el comportamiento de cada acreedor. Si un acreedor ha cumplido con todos sus pagos en tiempo puede obtener una calificaci&oacute;n baja en riego, pero en caso de que haya sucedido todo lo contrario obtendr&aacute; una calificaci&oacute;n de alto riesgo.</p>
<p>Las calificaciones pueden estar en un rango de 350 a 850, como puedes ver la cifra m&aacute;s alta significa bajo riesgo mientras que la cifra menor significa alto riesgo. El riesgo quiere decir: la probabilidad de que el acreedor devuelva el pr&eacute;stamo.</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h2>&iquest;Tu historial crediticio tiene un error?</h2>
<div class="wp-block-image">
<figure class="aligncenter size-large"></figure>
</div>
<p>Una vez que tengas tu reporte, anal&iacute;zalo cuidadosamente. Verifica que en &eacute;l se encuentren &uacute;nicamente cr&eacute;ditos que hayas solicitado y revisa tambi&eacute;n que tus pagos est&eacute;n reconocidos (en caso de que hayas pagado a tiempo). Si encuentras alg&uacute;n error, no dejes que pase m&aacute;s tiempo y solicita una&nbsp;aclaraci&oacute;n de bur&oacute; de cr&eacute;dito, la primera vez ser&aacute; gratis. Para hacerlo deber&aacute;s llenar una solicitud con la informaci&oacute;n correcta; durante el proceso aparecer&aacute; una nota en tu reporte para informar que est&aacute; en investigaci&oacute;n.</p>
<h2>5 datos importantes que debes saber sobre el Bur&oacute; de Cr&eacute;dito</h2>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h3>1. Puedes obtener tu reporte de Bur&oacute; de Cr&eacute;dito gratis</h3>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>Tienes derecho a obtener &nbsp;tu reporte una vez al a&ntilde;o por cada empresa o agencia de reportes del bur&oacute;, &nbsp;lo puedes descargar, si requieres hacerlo m&aacute;s de una vez por a&ntilde;o tiene un costo aproximado de \$58 (te sale m&aacute;s caro ir al cine, as&iacute; que no pierdes nada).</p>
<p>La informaci&oacute;n que debes tener a la mano para poder realizar tu consulta con &eacute;xito son: &uacute;ltimo estado de cuenta o n&uacute;mero de cr&eacute;dito e instituci&oacute;n.</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h3>2. Hay una raz&oacute;n por la que est&aacute;s en la lista...</h3>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>Han surgido muchas creencias err&oacute;neas sobre este tema, entre ellas se encuentra la idea de estar en una lista negra o en un listado que da mala reputaci&oacute;n a los que se encuentran ah&iacute;.</p>
<p>La verdad es que no hay nada de malo, estar en el "Bur&oacute;" no te hace m&aacute;s ni menos. Estar&aacute;s en esta lista siempre y cuando:</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<ul>
<li>haz&nbsp;utilizado tarjetas de cr&eacute;dito o departamentales,</li>
<li>solicitado cr&eacute;ditos con el bancos,</li>
<li>o bien, haz solicitado cr&eacute;ditos de Infonavit.</li>
</ul>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>Es resumen, aunque tu historial sea m&aacute;s el m&aacute;s pulcro de todos, te encontrar&aacute;s en el "Bur&oacute;", lo cual NO&nbsp;est&aacute; mal.</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h3>3.&nbsp;&iquest;Es verdad se&nbsp;puede pagar para que borren datos de la lista de bur&oacute;?</h3>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>Por desgracia existen personas sin escr&uacute;pulos que se aprovechan de la falta de informaci&oacute;n o de las preocupaciones de las personas para obtener un beneficio. &nbsp;Hay empresas que ofrecen servicios que no existen como: &ldquo;borrar tu historial crediticio&rdquo; Tal cosa no es posible. Lo que s&iacute; es posible es sanear tu historial, es uno de los servicios que ofrece Resuelve tu Deuda, ha sido ejecutado con &eacute;xito en diversos casos.</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h3>4. &iexcl;Aparecer en la base de datos del Bur&oacute;!</h3>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>Ahora los cr&eacute;ditos son un tema satanizado por muchos, claro que se puede caer en deudas inmensas siempre y cuando no se mantenga un equilibrio en las finanzas personales puede ocasionar muchos da&ntilde;os, entre ellos el reporte de cr&eacute;dito.</p>
<p>Otros creen que comenzar un historial no es importante, o simplemente no tienen conocimiento de su existencia, pero la verdad es que tener un historial crediticio limpio te abre las puertas al mundo del cr&eacute;dito, a veces lo que necesitamos no lo podemos obtener de contado, por lo que acudimos a pr&eacute;stamos, pero los cr&eacute;ditos importantes son cuando vas a solicitar un cr&eacute;dito para auto o casa.</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h3>5. Hay un tiempo determinado para que se borre tu nombre de la&nbsp;base de dato</h3>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>No importa si tu historial ha sido bueno, malo o regular, si ahora ya est&aacute;s al corriente con tus deudas&hellip; la verdad es que se conservar&aacute;&nbsp;<strong>hasta 6 a&ntilde;os</strong>, el conteo comienza cada que un cr&eacute;dito ha sido liquidado. La informaci&oacute;n s&oacute;lo puede ser borrada en casos especiales determinados por la&nbsp;<strong><a href="http://www.burodecredito.com.mx/formatos/ley_para_regular.pdf" target="_blank" rel="noreferrer noopener nofollow" aria-label=" (abre en una nueva pesta&ntilde;a)">Ley para regular a Sociedades de Informaci&oacute;n Crediticia</a>.&nbsp;</strong>Sin embargo, tambi&eacute;n el monto del cr&eacute;dito puede especificar el periodo de tiempo que estar&aacute; en el reporte.</p>
<h2><strong>&iquest;C&oacute;mo salir de Bur&oacute; de Cr&eacute;dito?</strong></h2>
<p>C&oacute;mo se escribi&oacute; en la pregunta anterior, los montos de los cr&eacute;ditos pueden determinar el tiempo que durar&aacute; tu reporte, estos son los datos estimados de acuerdo a la&nbsp;<a href="http://www.gob.mx/condusef" target="_blank" rel="noreferrer noopener nofollow">CONDUSEF</a>:&nbsp;puedes&nbsp;salir&nbsp;de&nbsp;Bur&oacute;&nbsp;de&nbsp;Cr&eacute;dito&nbsp;siempre y cuando saldes tus deudas una vez realices el pago de cada una de ellas, tendr&aacute;s mala calificaci&oacute;n, pero esta se borrar&aacute; transcurrido cierto tiempo, la sanci&oacute;n de cada uno de los montos se muestra a continuaci&oacute;n:</p>
<ul>
<li>\$113.00 aprox. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1 a&ntilde;o</li>
<li>\$2,260.00 aprox. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2 a&ntilde;os</li>
<li>\$4,520.00 aprox. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3 a&ntilde;os</li>
<li>\$1,700,000.00 pasados&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6 a&ntilde;os</li>
<li>Cantidades mayores no se eliminan</li>
</ul>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p><em>Nota: estos n&uacute;meros cambian constantemente.</em></p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h2>&iquest;Qu&eacute; pasa si no pago mi tarjeta de cr&eacute;dito?</h2>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>Los atrasos son calificados por n&uacute;meros, cada uno tiene su significado, para identificar cu&aacute;l ha sido tu tiempo de retardo puedes guiarte por el n&uacute;mero que aparece en los peque&ntilde;os recuadros, as&iacute; que si atrasas los pagos de tus tarjetas lo m&aacute;s probable es que tengas este tipo de marcas en tu Bur&oacute; de Cr&eacute;dito:</p>
<p>01 Puntual<br />02 Inpuntual 1 a 29 d&iacute;as<br />03 Inpuntual 30 a 59 d&iacute;as<br />04 Inpuntual 60 a 89 d&iacute;as<br />05 Inpuntual 90 a 119 d&iacute;as<br />06 Inpuntual 120 a 149 d&iacute;as<br />07 Inpuntual 150 d&iacute;as hasta 12 meses<br />96 Un a&ntilde;o de atraso<br />97 Cuenta con deuda parcial.<br />99 Fraudes bancarios.<br />00 Sin registro</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>Si ya presentas atraso en tus cuentas, te sugerimos contactes a expertos en deuda que puedan ayudarte a generar un plan de liquidaci&oacute;n de acuerdo a tus posibilidades.</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h2>&nbsp;&iquest;Cualquier persona puede checar mi Bur&oacute; de Cr&eacute;dito?</h2>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>&iexcl;NO! No pueden estar revisando tu "Bur&oacute;", a menos que sean empresas que est&aacute;n totalmente autorizadas o que t&uacute; hayas autorizado. De hecho puedes prevenir cualquier abuso dando de alta la alerta que te avisa cada que alguien consulta tu historial crediticio o incluso puedes bloquearlo bajo tu propia responsabilidad.</p>
<p>Sin embargo, hay empresas que est&aacute;n autorizadas con fines de ofrecerte un buen servicio y siempre respetando la privacidad de tus datos.</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h2>Si hay alg&uacute;n error en mi Bur&oacute; de Cr&eacute;dito, &iquest;se puede reportar?</h2>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>Si en alg&uacute;n momento encuentras informaci&oacute;n que no coincide o que no reconoces, puedes pedir que se realice una aclaraci&oacute;n para que se regularice o te expliquen la raz&oacute;n de por qu&eacute; se ha registrado as&iacute;.</p>
<p>Debes llenar la solicitud con la informaci&oacute;n correcta; durante la investigaci&oacute;n se pondr&aacute; una nota en tu bur&oacute; para que se notifique que est&aacute; en investigaci&oacute;n por una reclamaci&oacute;n, tienes derecho a reclamaciones gratuitas al a&ntilde;o, la cantidad exacta depende de la, despu&eacute;s pueden tener un costo.</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h2>&iquest;Se puede pedir un cr&eacute;dito, con la seguridad de que me ser&aacute; otorgado?</h2>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>En muchas empresas o instituciones bancarias, el reporte del "Bur&oacute;" es una de las principales herramientas para conceder o no un financiamiento. Sin embargo hay algunos que pueden llegar a tomar incluso informaci&oacute;n demogr&aacute;fica o de cualquier otro &iacute;ndole similar para que tomen la decisi&oacute;n final.</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h2>&nbsp;&iquest;Qu&eacute; es la puntuaci&oacute;n o calificaci&oacute;n crediticia en Bur&oacute; de Cr&eacute;dito ?</h2>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>Es un puntaje que se genera de acuerdo a las estad&iacute;sticas basadas en el comportamiento de cada acreedor. Si un acreedor ha cumplido con todos sus pagos en tiempo puede obtener una calificaci&oacute;n baja en riego, pero en caso de que haya sucedido todo lo contrario obtendr&aacute; una calificaci&oacute;n de alto riesgo.</p>
<p><br />Las calificaciones pueden estar en un rango de&nbsp;<strong>350</strong>&nbsp;a&nbsp;<strong>850</strong>, como puedes ver la cifra m&aacute;s alta significa bajo riesgo mientras que la cifra menor significa alto riesgo. El riesgo quiere decir: la probabilidad de que el acreedor devuelva el pr&eacute;stamo.</p>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<h2>&nbsp;&iexcl;Tu reporte de Bur&oacute; de Cr&eacute;dito puede salvarte de deudas ajenas!</h2>
<div class="wp-block-spacer" aria-hidden="true">&nbsp;</div>
<p>Si alguien ha tomado tus datos y est&aacute; utilizando cuentas bancarias a tu nombre (hay casos en los que la gente no ten&iacute;a idea de que alguien estaba robando su identidad) entonces lo m&aacute;s l&oacute;gico es que si esas cuentas no se pagan, la persona endeudada ser&aacute;s t&uacute;.</p>
<p>El reporte de "Bur&oacute;" te da una visibilidad muy amplia de todas las cuentas que has obtenido, de esta manera puedes identificar todas las que sean ajenas a tu uso.</p>
<figure class="wp-block-image"><img alt="" /></figure>
<h2><strong>&iquest;C&oacute;mo salir de Bur&oacute; de Cr&eacute;dito sin pagar?</strong></h2>
<p>No existe formula para salir de Bur&oacute; de Cr&eacute;dito, si te ofrecen pagar cierta cantidad para as&iacute; borrar tu deuda de Bur&oacute; no les creas. Nadie puede sacarte de la entidad, lo que s&iacute; puedes hacer es mejorar tu calificaci&oacute;n con instituciones que reporten a Bur&oacute;. Tambi&eacute;n elimina todo mito que tengas respecto al Bur&oacute;.</p>
<p>Borra de tu memoria todos los chismes que te han contado sobre el "Bur&oacute;", no dejes que la falta de informaci&oacute;n pueda perjudicar a alguien que te importa como amigos y familiares, compartirla puede ser una de las mejores maneras de prevenir.</p>
<h2><strong>&iquest;Es bueno o malo estar en Bur&oacute; de Cr&eacute;dito?</strong></h2>
<p>No es ni malo, ni bueno. Todas aquellas personas que entrar a Bur&oacute; se debe porque solicitaron un pr&eacute;stamo, una tarjeta, un cr&eacute;dito hipotecario, cr&eacute;dito automotriz o alg&uacute;n otro servicio como el tel&eacute;fono, todos estos reportan a Bur&oacute; de Cr&eacute;dito. Sin embargo, no tiene nada de malo estar en Bur&oacute;, debido a que a las entidades financieras les sirve para analizar que tan buen o mal sujeto a cr&eacute;dito eres. Si pagas tus deudas a tiempo, tu reporte se ver&aacute; beneficiado, sino no pagas, se ver&aacute; afectado.</p>
<h2><strong>&iexcl;Mitos de Bur&oacute; de Cr&eacute;dito!</strong></h2>
<p>Ten cuidado, existen muchos mitos y enga&ntilde;os respecto al Bur&oacute; de Cr&eacute;dito. Te en listamos los m&aacute;s comunes para que tomes tus precauciones, cada una de estas puedes encontrarlas en Internet o en empresas que ofrecer servicios de este tipo.</p>
<h3>Chat&nbsp;<em>on line</em>&nbsp;de Bur&oacute; de Cr&eacute;dito</h3>
<p>La p&aacute;gina oficial de Bur&oacute; no ofrece este servicio, as&iacute; que si te escriben por chat en alguna de las p&aacute;ginas consultadas y te ofrecen checar tu Bur&oacute; de Cr&eacute;dito, verifica dos veces si la p&aacute;gina es fiable y lee bien las letras peque&ntilde;as.</p>
<h3><strong>Salir del Bur&oacute; de Cr&eacute;dito si ya pagu&eacute;</strong></h3>
<p>Existen empresas ficticias que te ofrecen pagar cierta cantidad para borrar tu deuda de Bur&oacute; de Cr&eacute;dito, nadie puede hacer este tipo de "servicios" por lo cual, si te ofrecen esta oportunidad &uacute;nica, no lo dudes y al&eacute;jate de esa p&aacute;gina o persona.</p>
<h3>"Bur&oacute; de Cr&eacute;dito es una lista negra"</h3>
<p>Este tipo de p&aacute;ginas, desinforman al deudor: explic&aacute;ndoles que Bur&oacute; de Cr&eacute;dito es una lista negra, que eres un mal pagador y que para salir de esta debes pagar cierta cantidad. No te dejes desinformar, busca en sus dem&aacute;s art&iacute;culos si su informaci&oacute;n es ver&iacute;dica, consulta otros blogs o sitios de noticias y as&iacute; forma una opini&oacute;n.</p>
<h2>Consulta de Bur&oacute; de Cr&eacute;dito</h2>
<p>El mejor consejo que te podemos dar es que consultes tu Bur&oacute; de Cr&eacute;dito al menos dos veces al a&ntilde;o, para as&iacute; verificar que nadie haya hecho mal uso de tu informaci&oacute;n o que utilicen tus nombre para solicitar cr&eacute;ditos o pr&eacute;stamos. Activa las alertas que te da Bur&oacute; de Cr&eacute;dito, para as&iacute; evitar alg&uacute;n fraude. No olvides consultar todos tus tr&aacute;mites de Bur&oacute; de Cr&eacute;dito en la p&aacute;gina principal:&nbsp;<a href="https://www.burodecredito.com.mx/" rel="nofollow">burodecredito.com.mx.</a></p>
<p>Si ya tienes mala calificaci&oacute;n en Bur&oacute; de Cr&eacute;dito, es mejor que busques asesor&iacute;a financiera para liquidar tus deudas. Una vez saldado tus cuentas, podr&aacute;s mejorar tu calificaci&oacute;n de Bur&oacute; con el buen comportamiento de tus pagos. As&iacute; que tener una vida financiera estable s&iacute; es posible cumpliendo con tus responsabilidades, as&iacute; no tendr&aacute;s problemas en el futuro, cuando solicites alg&uacute;n cr&eacute;dito hipotecario o automotriz.</p>
<p>&nbsp;</p>
<h2>Servicios adicionales que tiene el Bur&oacute; de Cr&eacute;dito</h2>
<p>El Bur&oacute; de Cr&eacute;dito es una empresa privada que no s&oacute;lo recaba la informaci&oacute;n relacionada con el historial crediticio de personas y compa&ntilde;&iacute;as que han solicitado al menos un cr&eacute;dito en su vida, si sabes utilizarla, es una herramienta muy &uacute;til para tu vida.&nbsp;</p>
<p>Esta conocida plataforma no s&oacute;lo sirve para consultar tu historial crediticio, pues por ejemplo, puedes contratar un sistema de alertas con el cual, v&iacute;a correo electr&oacute;nico se te advierte si alguien ha consultado tu historial, cambios en tu informaci&oacute;n, o movimientos en los estatus de tus cr&eacute;ditos.&nbsp;</p>
<p>Bur&oacute; de cr&eacute;dito ofrece dos opciones: Al&eacute;rtame, que es gratis, y Alertas Bur&oacute;, que tiene un costo de 232 pesos.&nbsp;</p>
<p>Otro servicio que se ofrece es el Reporte de Cr&eacute;dito Especial, documento que registra el historial crediticio de una persona y las instituciones financieras que lo consultan.&nbsp;</p>
<p>Es posible obtenerlo gratis una vez cada 12 meses, pero consultas adicionales tienen un costo de 35.60 pesos cada una.</p>
<p>Uno m&aacute;s es Consulta de &lsquo;Mi Score&rsquo;: que es una calificaci&oacute;n num&eacute;rica que otorga el Bur&oacute; de acuerdo con el comportamiento crediticio de cada usuario y complementa al Reporte de Cr&eacute;dito Especial. Tiene un costo de 58 pesos por consulta.</p>
<h2>Fraude por Bur&oacute; de Cr&eacute;dito&nbsp;</h2>
<p>No existen los fraudes a trav&eacute;s del Bur&oacute; de Cr&eacute;dito, al contrario, es una herramienta que te puede ayudar a saber si has sido v&iacute;ctima de alguna estafa.&nbsp;</p>
<p>Si no eres cuidadoso, es posible que te lleguen a clonar tu tarjeta, o bien, que seas v&iacute;ctima de un robo de identidad. En este caso, los delincuentes seguramente pedir&aacute;n cr&eacute;ditos a tu nombre sin que t&uacute; te enteres.&nbsp;</p>
<p>La manera m&aacute;s sencilla de saber si alguien te ha suplantado la identidad es consultar tu historia, pues ah&iacute; aparecen todos los cr&eacute;ditos que se han solicitado a tu nombre.&nbsp;</p>
<p>Si encuentras uno que no reconoces, debes avisar a la instituci&oacute;n financiera.&nbsp;</p>''',
      idServicio: 4,
      url: 'https://www.burodecredito.com.mx/',
      buttonTitle: 'Accede a Buró de Crédito',
    ),
    TramiteModel(
        title: 'Cómo saber si estoy en Buró de Crédito',
        description:
            '''<p class="default__StyledText-xb1qmn-0 kYamVn body-paragraph">Los clientes de cr&eacute;ditos bancarios y otros servicios de pr&eacute;stamos ya podr&aacute;n consultar su historial crediticio desde su celular a trav&eacute;s de la aplicaci&oacute;n m&oacute;vil de Bur&oacute; de Cr&eacute;dito.</p>
<p class="default__StyledText-xb1qmn-0 kYamVn body-paragraph">Esto, luego de que la Sociedad de Informaci&oacute;n Crediticia en M&eacute;xico actualizara su app disponible de forma gratuita en las tiendas de aplicaciones de <a href="https://apps.apple.com/mx/app/bur%C3%B3-de-cr%C3%A9dito/id1368278626" target="_blank" rel="noopener">Apple</a>&nbsp;y&nbsp;<a href="https://play.google.com/store/apps/details?id=com.mobile.burodecredito&amp;hl=es_MX&amp;gl=US" target="_blank" rel="noopener">Android</a>.</p>
<p class="default__StyledText-xb1qmn-0 kYamVn body-paragraph">Los usuarios pueden revisar sus cr&eacute;ditos financieros y comerciales, adem&aacute;s de su comportamiento de pago.</p>
<p class="default__StyledText-xb1qmn-0 kYamVn body-paragraph">La consulta se puede realizar de forma gratuita una vez cada 12 meses, los reportes adicionales cuestan 35.60 pesos cada uno.</p>
<div id="arcad-feature-5465" class="default__StyledAdUnit-ijbiyl-0 cXFedt arcad-feature margin-md-bottom ">
<div class="arcad-container">
<div id="lazy_66684">&nbsp;</div>
</div>
</div>
<h2 class="heading__StyledHeading-sc-5jxglz-0 jdeyiC">&iquest;C&oacute;mo obtener tu reporte en la app del Bur&oacute; de Cr&eacute;dito?</h2>
<p class="default__StyledText-xb1qmn-0 kYamVn body-paragraph">-Una vez que descargues la aplicaci&oacute;n, deber&aacute;s crear tu cuenta ingresando tu nombre completo, fecha de nacimiento, RFC y direcci&oacute;n completa.</p>
<p class="default__StyledText-xb1qmn-0 kYamVn body-paragraph">-Para obtener tu reporte crediticio deber&aacute;s indicar si tienes o has tenido en los &uacute;ltimos meses una tarjeta de cr&eacute;dito, un pr&eacute;stamo automotriz o una hipoteca.</p>
<p class="default__StyledText-xb1qmn-0 kYamVn body-paragraph">-Tambi&eacute;n deber&aacute;s otorgar el nombre o los nombres de las instituciones que te otorgaron estos pr&eacute;stamos, el l&iacute;mite de los cr&eacute;ditos, as&iacute; como el n&uacute;mero de cr&eacute;dito en caso de que sea uno automotriz o una hipoteca.</p>
<p class="default__StyledText-xb1qmn-0 kYamVn body-paragraph">-Asimismo tendr&aacute;s que brindar tu correo electr&oacute;nico y crear una contrase&ntilde;a para tu cuenta.</p>
<p class="default__StyledText-xb1qmn-0 kYamVn body-paragraph">-Ahora podr&aacute;s consultar tu historial crediticio.</p>''',
        idServicio: 4,
        url:
            'https://play.google.com/store/apps/details?id=com.mobile.burodecredito&hl=es_MX&gl=US',
        buttonTitle: 'Descargar App Buró de Crédito'),
    TramiteModel(
        title: 'Reporte Buró de Crédito',
        description:
            '''<h1 class="mb-sm-0">Tu reporte&nbsp;<strong>GRATIS</strong>&nbsp;cada 12 meses</h1>
<p class="h4 mt-4">El&nbsp;<strong>Reporte de Cr&eacute;dito Especial</strong>&nbsp;concentra la informaci&oacute;n de tus cr&eacute;ditos en un documento.&nbsp;<strong>Obtenlo GRATIS cada 12 meses.</strong></p>
<h2 class="h4 mt-4"><strong>BENEFICIOS</strong></h2>
<p>Al obtener tu&nbsp;<strong>Reporte de Cr&eacute;dito Especial</strong>&nbsp;tienes los siguientes beneficios:</p>
<ul class="listCont">
<li><strong>Conocer</strong>&nbsp;los tipos de cr&eacute;ditos que forman parte de tu historial crediticio y el comportamiento que has tenido con cada uno.</li>
<li><strong>Verificar</strong>&nbsp;que tu informaci&oacute;n est&aacute; correcta y actualizada.</li>
<li><strong>Saber</strong>&nbsp;qui&eacute;n consulta tu historial crediticio.</li>
<li><strong>Consultar</strong>&nbsp;la informaci&oacute;n actualizada de tus compromisos de pago, para que puedas tomar acciones de manera oportuna.</li>
</ul>
<p>Con tu&nbsp;<strong>Reporte de Cr&eacute;dito Especial,</strong>&nbsp;tendr&aacute;s la informaci&oacute;n de:</p>
<div class="row sinBrd">
<div class="col-md-4 col-sm-6 col-6">
<div class="card txt-rc"><br />
<div class="card-body">
<ul>
<li class="card-title">FECHAS DE APERTURA</li>
<li class="card-title">L&Iacute;MITE DE CR&Eacute;DITOS</li>
<li class="card-title">SALDO ACTUAL</li>
<li class="card-title">FECHA ESTIMADA DE ELIMINACI&Oacute;N</li>
<li class="card-title">HIST&Oacute;RICO DE PAGOS</li>
<li class="card-title">DETALLE DE CONSULTAS</li>
</ul>
<h2>REQUISITOS</h2>
<p>Para obtener tu&nbsp;<strong>Reporte de Cr&eacute;dito Especial</strong>&nbsp;ten a la mano la siguiente informaci&oacute;n de tus cr&eacute;ditos:</p>
<ul class="listCont">
<li>&nbsp;Identificaci&oacute;n oficial (Credencial de elector o Pasaporte vigente. Tarjeta de residente permanente, si eres extranjero).</li>
</ul>
<p>&nbsp;</p>
<p>Si cuentas con esta informaci&oacute;n:</p>
<div class="row sinBrd">
<div class="col-md-4 col-sm-6 col-6">
<div class="card txt-rc"><br />
<div class="card-body">
<h5 class="card-title">INFORMACI&Oacute;N DE TU TARJETA DE CR&Eacute;DITO:</h5>
<p class="txt-p">El &uacute;ltimo estado de cuenta de una tarjeta de cr&eacute;dito abierta</p>
</div>
</div>
</div>
<div class="col-md-4 col-sm-6 col-6">
<div class="card txt-rc">
<div class="card-body">
<h5 class="card-title">&nbsp;</h5>
<h5 class="card-title">CR&Eacute;DITO AUTOMOTRIZ:</h5>
<p class="txt-p">N&uacute;mero de cr&eacute;dito e instituci&oacute;n con la que se tenga o se haya tenido un cr&eacute;dito automotriz en los &uacute;ltimos 6 a&ntilde;os (abierto o cerrado)</p>
</div>
</div>
</div>
<div class="col-md-4 col-sm-6 col-6">
<div class="card txt-rc"><br />
<div class="card-body">
<h5 class="card-title">CR&Eacute;DITO HIPOTECARIO:</h5>
<p class="txt-p">N&uacute;mero de cr&eacute;dito e instituci&oacute;n con la que se tenga o se haya tenido un cr&eacute;dito hipotecario en los &uacute;ltimos 6 a&ntilde;os (abierto o cerrado)</p>
<p class="txt-p">&nbsp;</p>
<h2 class="txt-p">OTROS MEDIOS PARA OBTENERLO</h2>
<h3>Tel&eacute;fono</h3>
<div class="p-3 mb-3 bg-grey-1 rounded shadow-sm">
<p>Primer Reporte de Cr&eacute;dito Especial en un periodo de 12 meses:&nbsp;<strong>Gratis</strong>.<br />Los reportes adicionales en el mismo periodo de 12 meses:&nbsp;<strong>\$89.00 pesos</strong></p>
</div>
<p>Ll&aacute;manos desde cualquier parte de la rep&uacute;blica sin costo al (55) 5449 4954 o al 800 640 7920.<br />De lunes a viernes de 8:00 a 21:00 hrs.<br />S&aacute;bados de 9:00 a 14:00 hrs.</p>
<h3>Oficina de Atenci&oacute;n a Clientes</h3>
<div class="p-3 mb-3 bg-grey-1 rounded shadow-sm">
<p>Primer Reporte de Cr&eacute;dito Especial en un periodo de 12 meses:&nbsp;<strong>Gratis</strong>.<br />Los reportes adicionales en el mismo periodo de 12 meses:&nbsp;<strong>\$89.00 pesos</strong></p>
</div>
<p>Acude con una identificaci&oacute;n oficial (Credencial de elector o Pasaporte vigente. Tarjeta de residente permanente, si eres extranjero) a la siguiente direcci&oacute;n:<br />Av. Perif&eacute;rico Sur 4349. Plaza Imagen, Loc. 3.<br />Fracc. Jardines de la Monta&ntilde;a. Alcald&iacute;a Tlalpan<br />C.P. 14210. M&eacute;xico, CDMX<br /><strong>De lunes a viernes de 09:00 a 18:00 hrs. y s&aacute;bados de 09:00 a 13:00 hrs.</strong></p>
<p>&nbsp;</p>
<h2>COSTOS Y FORMAS DE PAGO</h2>
<p><strong>Por ley puedes solicitar un Reporte de Cr&eacute;dito Especial gratis cada 12 meses.</strong></p>
<div class="p-3 mb-3 bg-grey-1 rounded shadow-sm">
<table class="table table-bordered table-sm">
<thead>
<tr>
<th>Solicitud por dispositivos electr&oacute;nicos:</th>
<th>Primer Reporte de Cr&eacute;dito Especial en 12 meses:</th>
<th>A partir del segundo Reporte de Cr&eacute;dito Especial antes de los 12 meses:</th>
</tr>
</thead>
<tbody>
<tr>
<td>Internet</td>
<td rowspan="2" align="center" valign="middle">
<h4 class="card-titlePQ bold txt-rc">GRATIS</h4>
</td>
<td rowspan="2" align="center" valign="middle">
<h4 class="card-titlePQ bold txt-rc">\$35.60 MXN</h4>
</td>
</tr>
<tr>
<td>App m&oacute;vil</td>
</tr>
</tbody>
</table>
</div>
<h3>Cargo a tu tarjeta de cr&eacute;dito o d&eacute;bito.</h3>
<p>Si realizas tu solicitud por Internet podr&aacute;s realizar el pago en l&iacute;nea utilizando tu tarjeta de cr&eacute;dito o d&eacute;bito.</p>
<h3>Transferencia electr&oacute;nica.</h3>
<p>A nombre de&nbsp;<strong>Trans Union de M&eacute;xico, S.A. S.I.C.</strong>&nbsp;en alguno de los siguientes bancos:</p>
<ul class="listCont">
<li>Banamex cuenta: 002180-05418648041-8</li>
<li>Santander cuenta: 014180-65501152565-7</li>
<li>BBVA Bancomer cuenta: 012180-00134090365-1</li>
</ul>
<p>Una vez que hayas realizado el pago, deber&aacute;s enviar la ficha electr&oacute;nica por correo electr&oacute;nico a&nbsp;<a href="mailto:servicio.clientes@burodecredito.com.mx">servicio.clientes@burodecredito.com.mx</a></p>
<h3>Pago en efectivo en</h3>
<p>Av. Perif&eacute;rico Sur 4349. Plaza Imagen, Loc. 3.<br />Fracc. Jardines de la Monta&ntilde;a. Alcald&iacute;a Tlalpan<br />C.P. 14210. M&eacute;xico, CDMX<br /><strong>De lunes a viernes de 09:00 a 18:00 hrs. y s&aacute;bados de 09:00 a 13:00 hrs.</strong></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>''',
        idServicio: 4,
        url: 'https://wbc1.burodecredito.com.mx:543/RceOnline/index.html',
        buttonTitle: 'Obtén ya tu reporte'),
  ];
  static final List<TramiteModel> listTramites = [
    ...listTramitesImss,
    ...listTramitesCFE,
    ...listTramitesCURP,
    ...listTramitesFonacot,
    ...listTramitesCedula,
    ...listTramitesInfonavit,
    ...listTramitesBuro,
  ];
}
