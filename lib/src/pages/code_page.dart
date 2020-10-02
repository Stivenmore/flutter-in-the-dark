import 'package:flutter/material.dart';
import 'package:flutter_in_the_dark/src/layout/sizes.dart';

class CodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor);
    final subtitleStyle = TextStyle(fontSize: 18, color: Theme.of(context).primaryColor);
    final contentStyle = TextStyle(fontSize: 14, fontFamily: 'Roboto', height: 1.6);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Sizes.isWeb(context) ? 120.0 : 40),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Text('CÓDIGO DE CONDUCTA / Flutter in the Dark 2020', textAlign: TextAlign.justify, style: titleStyle),
                  SizedBox(
                    width: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text('1. Propósito', style: subtitleStyle),
                        SizedBox(height: 10),
                        Text(
                            'Un objetivo prioritario para Flutter in the Dark es ser inclusivo para el mas amplio número de asistentes con el mas variado y diverso recorrido posible. Como tal, estamos comprometid@s en proveer un entorno amigable y seguro para tod@s, independientemente el género, orientación sexual, capacidad, etnia, estatus económico o religión. Flutterconf se enorgullece de ser una comunidad abierta, respetuosa e inclusiva.\nEste código de conducta describe nuestras expectativas con todos los que participan en nuestra comunidad, así como las consecuencias de un comportamiento inaceptable. Invitamos a to@s los que participan en Flutter in the Dark a crear experiencias positivas y seguras para tod@s.',
                            style: contentStyle),
                        SizedBox(height: 10),
                        Text('2. Comunidad abierta', style: subtitleStyle),
                        SizedBox(height: 10),
                        Text(
                            'Un objetivo complementario de este código de conducta es hacer crecer una comunidad (código / cultura / tecnología) abierta alentando a los participantes a reconocer y fortalecer las relación de nuestras acciones y sus efectos en nuestra comunidad. Las comunidades reflejan la sociedad en la cual existimos, las acciones positivas son esenciales para contrarrestar las muchas formas de desigualdad y abusos de poder que existen en la sociedad. Si ves a alguien haciendo un especial esfuerzo para hacer nuestra comunidad más segura, acogedora, amigable y alienta a todos los participantes a contribuir en su más amplio sentido, háznoslo saber.',
                            style: contentStyle),
                        SizedBox(height: 10),
                        Text('3. Comportamiento esperado', style: subtitleStyle),
                        SizedBox(height: 10),
                        Text(
                            'Los siguientes comportamientos son los que esperamos y solicitamos a todos los miembros de la comunidad:\n· Participar de forma activa y genuina. Al hacerlo contribuyes a la salud y longevidad de la comunidad.\n· Ejerce consideración y respeto en tu discurso y acciones\n· Anteponer la colaboración al conflicto.\n· Abstenerse de comportamientos y discursos degradantes, discriminatorios o acosadores.\n· Se consciente del entorno y los participantes. Alerta a los responsables de la comunidad si observas una situación peligrosa, angustiosa para alguien o violaciones de este Código de Conducta, incluso si parecen intrascendentes.',
                            style: contentStyle),
                        SizedBox(height: 10),
                        Text('4. Comportamientos inaceptables', style: subtitleStyle),
                        SizedBox(height: 10),
                        Text(
                            'Los siguientes comportamientos son considerados acoso y son inaceptables dentro de nuestra comunidad:\n· Violencia, amenazas de violencia o lenguaje violento dirigido contra otra persona\n· Sexismo, racismo, homofobia, transfobia u otras bromas o lenguaje discriminatorio\n· Publicar o mostrar material sexualmente explícito o violento\n· Publicar o amenazar con publicar información personal de otras personas\n· Insultos personales, particularmente relacionados con género, orientación sexual, raza, religión o discapacidad.\n· Fotografías o grabaciones inapropiadas\n· Comentarios o bromas sexualizadas\n· Intimidación, acecho o persecución online intencionada\n· Abogar por, o alentar, cualquiera de los anteriores comportamientos\n· Interrumpir el evento de manera reiterada, incluyendo charlas o presentaciones',
                            style: contentStyle),
                        SizedBox(height: 10),
                        Text('5. Consecuencias de un comportamiento inaceptable', style: subtitleStyle),
                        SizedBox(height: 10),
                        Text(
                            'Un comportamiento inaceptable de cualquier miembro de la comunidad, incluyendo sponsors y aquellos con autoridad para tomar decisiones, no serán tolerados. Se espera que alguien exhortado a detener un comportamiento inaceptable lo cumpla inmediatamente. Si un miembro de la comunidad se involucra en un comportamiento inaceptable, los organizadores pueden tomar cualquier acción que consideren apropiada, incluyendo una expulsión permanente o temporal sin previo aviso ( y sin reembolso en caso de que el evento sea de pago)',
                            style: contentStyle),
                        SizedBox(height: 10),
                        Text('6. Ámbito', style: subtitleStyle),
                        SizedBox(height: 10),
                        Text(
                            'Esperamos que todos los participantes acaten este Código de Conducta en todo el evento así como en las comunicaciones un@ a un@. Este Código de Conducta y los procedimientos recogidos también aplican para comportamientos inaceptables que ocurran fuera del ámbito de las actividades de la comunidad cuando el comportamiento tiene potencial de afectar negativamente a  la seguridad y bienestar de los miembros de la comunidad.',
                            style: contentStyle),
                        SizedBox(height: 40)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
