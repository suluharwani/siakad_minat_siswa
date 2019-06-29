                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        TABLE STRUCTURE FOR: admin
#

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: kelas
#

DROP TABLE IF EXISTS `kelas`;

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: mata_pelajaran
#

DROP TABLE IF EXISTS `mata_pelajaran`;

CREATE TABLE `mata_pelajaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mapel` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: nilai
#

DROP TABLE IF EXISTS `nilai`;

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(11) NOT NULL DEFAULT '0',
  `id_mapel` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `nilai` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: siswa
#

DROP TABLE IF EXISTS `siswa`;

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kelas` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `nama` int(11) DEFAULT NULL,
  `nim` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ujian
#

DROP TABLE IF EXISTS `ujian`;

CREATE TABLE `ujian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_ujian` varchar(100) DEFAULT NULL,
  `persentase` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
