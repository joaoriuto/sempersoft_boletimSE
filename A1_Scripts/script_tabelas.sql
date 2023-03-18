-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_sempersoft
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_sempersoft
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_sempersoft` DEFAULT CHARACTER SET utf8mb3 ;
USE `db_sempersoft` ;

-- -----------------------------------------------------
-- Table `db_sempersoft`.`TB_aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_sempersoft`.`TB_aluno` (
  `id_aluno` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `registro` VARCHAR(45) NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  `turma` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id_aluno`),
  UNIQUE INDEX `registro_UNIQUE` (`registro` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_sempersoft`.`TB_professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_sempersoft`.`TB_professor` (
  `id_professor` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `disciplina` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`id_professor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_sempersoft`.`TB_disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_sempersoft`.`TB_disciplina` (
  `id_disciplina` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `FK_professor` INT NULL,
  `titulo` VARCHAR(25) NOT NULL,
  `descricao` VARCHAR(50) NULL,
  PRIMARY KEY (`id_disciplina`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_sempersoft`.`TB_indicador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_sempersoft`.`TB_indicador` (
  `id_indicador` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `sigla` CHAR(2) NOT NULL,
  `descricao` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id_indicador`),
  UNIQUE INDEX `sigla_UNIQUE` (`sigla` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_sempersoft`.`TB_sub_indicador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_sempersoft`.`TB_sub_indicador` (
  `id_sub_indicador` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(150) NULL,
  PRIMARY KEY (`id_sub_indicador`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_sempersoft`.`TB_parametro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_sempersoft`.`TB_parametro` (
  `id_parametro` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ano_letivo` DATE NULL,
  `trimestre` VARCHAR(12) NULL,
  PRIMARY KEY (`id_parametro`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_sempersoft`.`TB_comentario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_sempersoft`.`TB_comentario` (
  `id_comentario` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comentario` VARCHAR(1000) NULL,
  PRIMARY KEY (`id_comentario`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
