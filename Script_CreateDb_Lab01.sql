-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`endereco` (
  `idEndereco` INT NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `numero` INT NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `uf` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEndereco`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`plano_saude`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`plano_saude` (
  `idplano_saude` INT NOT NULL,
  `nome_plano` VARCHAR(45) NOT NULL,
  `tipo_plano` VARCHAR(45) NULL,
  PRIMARY KEY (`idplano_saude`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`paciente` (
  `idPaciente` INT NOT NULL,
  `nome_crianca` VARCHAR(45) NOT NULL,
  `nome_responsavel` VARCHAR(45) NOT NULL,
  `data_nascimento` VARCHAR(45) NOT NULL,
  `sexo` VARCHAR(45) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `idEndereco` INT NOT NULL,
  `idplano_saude` INT NULL,
  PRIMARY KEY (`idPaciente`),
  INDEX `fk_Paciente_Endereco_idx` (`idEndereco` ASC) ,
  INDEX `fk_Paciente_Plano_saude1_idx` (`idplano_saude` ASC) ,
  CONSTRAINT `fk_Paciente_Endereco`
    FOREIGN KEY (`idEndereco`)
    REFERENCES `mydb`.`endereco` (`idEndereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Paciente_Plano_saude1`
    FOREIGN KEY (`idplano_saude`)
    REFERENCES `mydb`.`plano_saude` (`idplano_saude`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`medico` (
  `idMedico` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `CRM` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idMedico`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`consulta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`consulta` (
  `idConsulta` INT NOT NULL,
  `data_consulta` VARCHAR(45) NOT NULL,
  `horario_consulta` VARCHAR(45) NOT NULL,
  `idPaciente` INT NOT NULL,
  `idMedico` INT NOT NULL,
  PRIMARY KEY (`idConsulta`),
  INDEX `fk_Consulta_Paciente1_idx` (`idPaciente` ASC) ,
  INDEX `fk_Consulta_Medico1_idx` (`idMedico` ASC) ,
  CONSTRAINT `fk_Consulta_Paciente1`
    FOREIGN KEY (`idPaciente`)
    REFERENCES `mydb`.`paciente` (`idPaciente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Consulta_Medico1`
    FOREIGN KEY (`idMedico`)
    REFERENCES `mydb`.`medico` (`idMedico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`pontuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pontuario` (
  `idPontuario` INT NOT NULL auto_increment,
  `descricao_sintomas` VARCHAR(100) NULL,
  `peso` DECIMAL(5,2) NULL,
  `altura` DECIMAL(5,2) NULL,
  `idConsulta` INT NOT NULL,
  PRIMARY KEY (`idPontuario`),
  INDEX `fk_Pontuario_Consulta1_idx` (`idConsulta` ASC) ,
  CONSTRAINT `fk_Pontuario_Consulta1`
    FOREIGN KEY (`idConsulta`)
    REFERENCES `mydb`.`consulta` (`idConsulta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`medicamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`medicamento` (
  `idmedicamento` INT NOT NULL,
  `nome_medicamento` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idmedicamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`prescricao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`prescricao` (
  `idPrescricao` INT NOT NULL,
  `dosagem` VARCHAR(45) NULL,
  `administracao` VARCHAR(45) NULL,
  `tempo_uso` VARCHAR(45) NULL,
  `idPontuario` INT NOT NULL,
  `idmedicamento` INT NULL,
  PRIMARY KEY (`idPrescricao`),
  INDEX `fk_Prescricao_Pontuario1_idx` (`idPontuario` ASC) ,
  INDEX `fk_Prescricao_medicamento1_idx` (`idmedicamento` ASC) ,
  CONSTRAINT `fk_Prescricao_Pontuario1`
    FOREIGN KEY (`idPontuario`)
    REFERENCES `mydb`.`pontuario` (`idPontuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Prescricao_medicamento1`
    FOREIGN KEY (`idmedicamento`)
    REFERENCES `mydb`.`medicamento` (`idmedicamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`exame`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`exame` (
  `idExame` INT NOT NULL auto_increment,
  `nome_exame` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idExame`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`telefone` (
  `idTelefone` INT NOT NULL,
  `numero` VARCHAR(45) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `idPaciente` INT NOT NULL,
  PRIMARY KEY (`idTelefone`),
  INDEX `fk_Telefone_Paciente1_idx` (`idPaciente` ASC) ,
  CONSTRAINT `fk_Telefone_Paciente1`
    FOREIGN KEY (`idPaciente`)
    REFERENCES `mydb`.`paciente` (`idPaciente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`pontuario_exame`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pontuario_exame` (
  `Pontuario_idPontuario` INT NOT NULL,
  `idExame` INT NULL,
  PRIMARY KEY (`Pontuario_idPontuario`),
  INDEX `fk_Pontuario_has_exame_Pontuario1_idx` (`Pontuario_idPontuario` ASC) ,
  INDEX `fk_Pontuario_has_exame_exame1_idx` (`idExame` ASC) ,
  CONSTRAINT `fk_Pontuario_has_exame_Pontuario1`
    FOREIGN KEY (`Pontuario_idPontuario`)
    REFERENCES `mydb`.`pontuario` (`idPontuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pontuario_has_exame_exame1`
    FOREIGN KEY (`idExame`)
    REFERENCES `mydb`.`exame` (`idExame`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
