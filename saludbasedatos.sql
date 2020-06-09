
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `salud`;
CREATE TABLE `salud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `titulo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contenido` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `salud` VALUES ('12', '2020-05-06', 'Cuide su Alimentacion', 'Mantener una buena hidartacion y llevar una dieta sana, variada y equilibrada le ayudara le ayudara a mantener un peso saludable y a reducir el riesgo de enfermedades.');
INSERT INTO `salud` VALUES ('13', '2020-05-13', 'Tener una Buena Digestion', 'la digestion es un proceso por el cual nuestro organismo descompone las moleculas de los alimentos y los transforma en nutrientes para asi generar energia.');
INSERT INTO `salud` VALUES ('14', '2020-05-12', 'Salud Mental', 'ls salud mental es, en terminos generales el estado de equilibrio entre una personas y su entorno socio-cultural que garantiza su participacion laboral , intelectual y de relaciones para alcanzar un bienestar y aclidad de vida.');
INSERT INTO `salud` VALUES ('15', '2020-05-23', 'Covid-19', 'la covid-19 es la enfermedad infecciosa causada por el coronavirus que se a descubierto mas recientemente, causa infecciones respiratorias que pueden ir desde el resfriado comun hasta enfermedades mas graves como el sintoma de sindrome respiratorio.');

  DROP TABLE IF EXISTS `usuarios`;
  CREATE TABLE `usuarios` (
  `usuario` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL)
   ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

   INSERT INTO `usuarios` VALUES ('marcos', 'm1234');
   SET FOREIGN_KEY_CHECKS=1;
