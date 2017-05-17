/*--------------------------------------------------------------------------*/
/* Application : VITL                                                       */
/* Version     : 1.0                                                        */
/* Societe     :                                                            */
/* Fonction    : Suppression des objets existants                           */
/* Historique  : Creation le 17/05/2017                                     */
/* Commentaire :                                                            */
/*------------------------------------------------------ www.desirade.fr ---*/

-- "=============================="
-- "Debut du script vital_drop.sql"
-- "=============================="


USE VITL;
GO

-- "Suppression de la clef etrangere de la table VTL_VACCINATION vers la table VTL_CONSULTATION"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_VACCINATION_ID_CONSULTATION_VTL_CONSULTATION_FK' AND type in (N'F'))
ALTER TABLE VTL_VACCINATION DROP CONSTRAINT VTL_VACCINATION_ID_CONSULTATION_VTL_CONSULTATION_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_VACCINATION vers la table VTL_VACCIN"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_VACCINATION_ID_VACCIN_VTL_VACCIN_FK' AND type in (N'F'))
ALTER TABLE VTL_VACCINATION DROP CONSTRAINT VTL_VACCINATION_ID_VACCIN_VTL_VACCIN_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_VACCINATION vers la table VTL_ANIMAL"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_VACCINATION_ID_ANIMAL_VTL_ANIMAL_FK' AND type in (N'F'))
ALTER TABLE VTL_VACCINATION DROP CONSTRAINT VTL_VACCINATION_ID_ANIMAL_VTL_ANIMAL_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_TRAITEMENT_MEDICAMENT vers la table VTL_MEDICAMENT"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_TRAITEMENT_MEDICAMENT_ID_MEDICAMENT_VTL_MEDICAMENT_FK' AND type in (N'F'))
ALTER TABLE VTL_TRAITEMENT_MEDICAMENT DROP CONSTRAINT VTL_TRAITEMENT_MEDICAMENT_ID_MEDICAMENT_VTL_MEDICAMENT_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_TRAITEMENT_MEDICAMENT vers la table VTL_TRAITREMENT"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_TRAITEMENT_MEDICAMENT_ID_TRAITEMENT_VTL_TRAITREMENT_FK' AND type in (N'F'))
ALTER TABLE VTL_TRAITEMENT_MEDICAMENT DROP CONSTRAINT VTL_TRAITEMENT_MEDICAMENT_ID_TRAITEMENT_VTL_TRAITREMENT_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_POSITION vers la table VTL_ANIMAL"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_POSITION_ID_ANIMAL_VTL_ANIMAL_FK' AND type in (N'F'))
ALTER TABLE VTL_POSITION DROP CONSTRAINT VTL_POSITION_ID_ANIMAL_VTL_ANIMAL_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_HISTO_TAILLE vers la table VTL_ANIMAL"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_HISTO_TAILLE_ID_ANIMAL_VTL_ANIMAL_FK' AND type in (N'F'))
ALTER TABLE VTL_HISTO_TAILLE DROP CONSTRAINT VTL_HISTO_TAILLE_ID_ANIMAL_VTL_ANIMAL_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_HISTO_POIDS vers la table VTL_ANIMAL"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_HISTO_POIDS_ID_ANIMAL_VTL_ANIMAL_FK' AND type in (N'F'))
ALTER TABLE VTL_HISTO_POIDS DROP CONSTRAINT VTL_HISTO_POIDS_ID_ANIMAL_VTL_ANIMAL_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_CONTRAT vers la table VTL_ASSURANCE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CONTRAT_ID_ASSURANCE_VTL_ASSURANCE_FK' AND type in (N'F'))
ALTER TABLE VTL_CONTRAT DROP CONSTRAINT VTL_CONTRAT_ID_ASSURANCE_VTL_ASSURANCE_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_CONTRAT vers la table VTL_PROPRIETAIRE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CONTRAT_ID_PROPRIETAIRE_VTL_PROPRIETAIRE_FK' AND type in (N'F'))
ALTER TABLE VTL_CONTRAT DROP CONSTRAINT VTL_CONTRAT_ID_PROPRIETAIRE_VTL_PROPRIETAIRE_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_CONTRAT vers la table VTL_ANIMAL"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CONTRAT_ID_ANIMAL_VTL_ANIMAL_FK' AND type in (N'F'))
ALTER TABLE VTL_CONTRAT DROP CONSTRAINT VTL_CONTRAT_ID_ANIMAL_VTL_ANIMAL_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_CONSULTATION vers la table VTL_PROPRIETAIRE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CONSULTATION_ID_PROPRIETAIRE_VTL_PROPRIETAIRE_FK' AND type in (N'F'))
ALTER TABLE VTL_CONSULTATION DROP CONSTRAINT VTL_CONSULTATION_ID_PROPRIETAIRE_VTL_PROPRIETAIRE_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_CONSULTATION vers la table VTL_ANIMAL"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CONSULTATION_L_VTL_ANIMAL_FK' AND type in (N'F'))
ALTER TABLE VTL_CONSULTATION DROP CONSTRAINT VTL_CONSULTATION_L_VTL_ANIMAL_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_CONSULTATION vers la table VTL_VETERINAIRE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CONSULTATION_ID_VETERINAIRE_VTL_VETERINAIRE_FK' AND type in (N'F'))
ALTER TABLE VTL_CONSULTATION DROP CONSTRAINT VTL_CONSULTATION_ID_VETERINAIRE_VTL_VETERINAIRE_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_ANIMAL vers la table VTL_TYPE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_ANIMAL_ID_TYPE_VTL_TYPE_FK' AND type in (N'F'))
ALTER TABLE VTL_ANIMAL DROP CONSTRAINT VTL_ANIMAL_ID_TYPE_VTL_TYPE_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_ANIMAL vers la table VTL_CARTE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_ANIMAL_ID_CARTE_VTL_CARTE_FK' AND type in (N'F'))
ALTER TABLE VTL_ANIMAL DROP CONSTRAINT VTL_ANIMAL_ID_CARTE_VTL_CARTE_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_ANIMAL vers la table VTL_RACE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_ANIMAL_ID_RACE_VTL_RACE_FK' AND type in (N'F'))
ALTER TABLE VTL_ANIMAL DROP CONSTRAINT VTL_ANIMAL_ID_RACE_VTL_RACE_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_ADOPTER vers la table VTL_ANIMAL"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_ADOPTER_ID_ANIMAL_VTL_ANIMAL_FK' AND type in (N'F'))
ALTER TABLE VTL_ADOPTER DROP CONSTRAINT VTL_ADOPTER_ID_ANIMAL_VTL_ANIMAL_FK;
GO
-- "Suppression de la clef etrangere de la table VTL_ADOPTER vers la table VTL_PROPRIETAIRE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_ADOPTER_ID_PROPRIETAIRE_VTL_PROPRIETAIRE_FK' AND type in (N'F'))
ALTER TABLE VTL_ADOPTER DROP CONSTRAINT VTL_ADOPTER_ID_PROPRIETAIRE_VTL_PROPRIETAIRE_FK;
GO

-- "Suppression de la clef primaire de la table VTL_VETERINAIRE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_VETERINAIRE_PK' AND type in (N'PK'))
ALTER TABLE VTL_VETERINAIRE DROP CONSTRAINT VTL_VETERINAIRE_PK;
GO
-- "Suppression de la clef primaire de la table VTL_VETERINAIRE_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_VETERINAIRE_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_VETERINAIRE_HISTO DROP CONSTRAINT VTL_VETERINAIRE_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_VACCINATION"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_VACCINATION_PK' AND type in (N'PK'))
ALTER TABLE VTL_VACCINATION DROP CONSTRAINT VTL_VACCINATION_PK;
GO
-- "Suppression de la clef primaire de la table VTL_VACCINATION_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_VACCINATION_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_VACCINATION_HISTO DROP CONSTRAINT VTL_VACCINATION_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_VACCIN"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_VACCIN_PK' AND type in (N'PK'))
ALTER TABLE VTL_VACCIN DROP CONSTRAINT VTL_VACCIN_PK;
GO
-- "Suppression de la clef primaire de la table VTL_VACCIN_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_VACCIN_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_VACCIN_HISTO DROP CONSTRAINT VTL_VACCIN_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_USER"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_USER_PK' AND type in (N'PK'))
ALTER TABLE VTL_USER DROP CONSTRAINT VTL_USER_PK;
GO
-- "Suppression de la clef primaire de la table VTL_USER_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_USER_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_USER_HISTO DROP CONSTRAINT VTL_USER_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_TYPE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_TYPE_PK' AND type in (N'PK'))
ALTER TABLE VTL_TYPE DROP CONSTRAINT VTL_TYPE_PK;
GO
-- "Suppression de la clef primaire de la table VTL_TYPE_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_TYPE_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_TYPE_HISTO DROP CONSTRAINT VTL_TYPE_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_TRAITREMENT"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_TRAITREMENT_PK' AND type in (N'PK'))
ALTER TABLE VTL_TRAITREMENT DROP CONSTRAINT VTL_TRAITREMENT_PK;
GO
-- "Suppression de la clef primaire de la table VTL_TRAITREMENT_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_TRAITREMENT_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_TRAITREMENT_HISTO DROP CONSTRAINT VTL_TRAITREMENT_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_TRAITEMENT_MEDICAMENT"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_TRAITEMENT_MEDICAMENT_PK' AND type in (N'PK'))
ALTER TABLE VTL_TRAITEMENT_MEDICAMENT DROP CONSTRAINT VTL_TRAITEMENT_MEDICAMENT_PK;
GO
-- "Suppression de la clef primaire de la table VTL_TRAITEMENT_MEDICAMENT_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_TRAITEMENT_MEDICAMENT_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_TRAITEMENT_MEDICAMENT_HISTO DROP CONSTRAINT VTL_TRAITEMENT_MEDICAMENT_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_RACE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_RACE_PK' AND type in (N'PK'))
ALTER TABLE VTL_RACE DROP CONSTRAINT VTL_RACE_PK;
GO
-- "Suppression de la clef primaire de la table VTL_RACE_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_RACE_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_RACE_HISTO DROP CONSTRAINT VTL_RACE_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_PROPRIETAIRE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_PROPRIETAIRE_PK' AND type in (N'PK'))
ALTER TABLE VTL_PROPRIETAIRE DROP CONSTRAINT VTL_PROPRIETAIRE_PK;
GO
-- "Suppression de la clef primaire de la table VTL_PROPRIETAIRE_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_PROPRIETAIRE_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_PROPRIETAIRE_HISTO DROP CONSTRAINT VTL_PROPRIETAIRE_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_POSITION"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_POSITION_PK' AND type in (N'PK'))
ALTER TABLE VTL_POSITION DROP CONSTRAINT VTL_POSITION_PK;
GO
-- "Suppression de la clef primaire de la table VTL_POSITION_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_POSITION_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_POSITION_HISTO DROP CONSTRAINT VTL_POSITION_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_MEDICAMENT"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_MEDICAMENT_PK' AND type in (N'PK'))
ALTER TABLE VTL_MEDICAMENT DROP CONSTRAINT VTL_MEDICAMENT_PK;
GO
-- "Suppression de la clef primaire de la table VTL_MEDICAMENT_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_MEDICAMENT_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_MEDICAMENT_HISTO DROP CONSTRAINT VTL_MEDICAMENT_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_HISTO_TAILLE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_HISTO_TAILLE_PK' AND type in (N'PK'))
ALTER TABLE VTL_HISTO_TAILLE DROP CONSTRAINT VTL_HISTO_TAILLE_PK;
GO
-- "Suppression de la clef primaire de la table VTL_HISTO_TAILLE_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_HISTO_TAILLE_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_HISTO_TAILLE_HISTO DROP CONSTRAINT VTL_HISTO_TAILLE_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_HISTO_POIDS"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_HISTO_POIDS_PK' AND type in (N'PK'))
ALTER TABLE VTL_HISTO_POIDS DROP CONSTRAINT VTL_HISTO_POIDS_PK;
GO
-- "Suppression de la clef primaire de la table VTL_HISTO_POIDS_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_HISTO_POIDS_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_HISTO_POIDS_HISTO DROP CONSTRAINT VTL_HISTO_POIDS_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_CONTRAT"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CONTRAT_PK' AND type in (N'PK'))
ALTER TABLE VTL_CONTRAT DROP CONSTRAINT VTL_CONTRAT_PK;
GO
-- "Suppression de la clef primaire de la table VTL_CONTRAT_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CONTRAT_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_CONTRAT_HISTO DROP CONSTRAINT VTL_CONTRAT_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_CONSULTATION"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CONSULTATION_PK' AND type in (N'PK'))
ALTER TABLE VTL_CONSULTATION DROP CONSTRAINT VTL_CONSULTATION_PK;
GO
-- "Suppression de la clef primaire de la table VTL_CONSULTATION_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CONSULTATION_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_CONSULTATION_HISTO DROP CONSTRAINT VTL_CONSULTATION_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_CARTE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CARTE_PK' AND type in (N'PK'))
ALTER TABLE VTL_CARTE DROP CONSTRAINT VTL_CARTE_PK;
GO
-- "Suppression de la clef primaire de la table VTL_CARTE_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CARTE_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_CARTE_HISTO DROP CONSTRAINT VTL_CARTE_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_ASSURANCE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_ASSURANCE_PK' AND type in (N'PK'))
ALTER TABLE VTL_ASSURANCE DROP CONSTRAINT VTL_ASSURANCE_PK;
GO
-- "Suppression de la clef primaire de la table VTL_ASSURANCE_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_ASSURANCE_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_ASSURANCE_HISTO DROP CONSTRAINT VTL_ASSURANCE_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_ANIMAL"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_ANIMAL_PK' AND type in (N'PK'))
ALTER TABLE VTL_ANIMAL DROP CONSTRAINT VTL_ANIMAL_PK;
GO
-- "Suppression de la clef primaire de la table VTL_ANIMAL_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_ANIMAL_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_ANIMAL_HISTO DROP CONSTRAINT VTL_ANIMAL_HISTO_PK;
GO
-- "Suppression de la clef primaire de la table VTL_ADOPTER"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_ADOPTER_PK' AND type in (N'PK'))
ALTER TABLE VTL_ADOPTER DROP CONSTRAINT VTL_ADOPTER_PK;
GO
-- "Suppression de la clef primaire de la table VTL_ADOPTER_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_ADOPTER_HISTO_PK' AND type in (N'PK'))
ALTER TABLE VTL_ADOPTER_HISTO DROP CONSTRAINT VTL_ADOPTER_HISTO_PK;
GO

-- "Suppression de la table VTL_VETERINAIRE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_VETERINAIRE' AND type in (N'U'))
DROP TABLE VTL_VETERINAIRE;
GO
-- "Suppression de la table VTL_VETERINAIRE_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_VETERINAIRE_HISTO' AND type in (N'U'))
DROP TABLE VTL_VETERINAIRE_HISTO;
GO
-- "Suppression de la table VTL_VACCINATION"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_VACCINATION' AND type in (N'U'))
DROP TABLE VTL_VACCINATION;
GO
-- "Suppression de la table VTL_VACCINATION_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_VACCINATION_HISTO' AND type in (N'U'))
DROP TABLE VTL_VACCINATION_HISTO;
GO
-- "Suppression de la table VTL_VACCIN"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_VACCIN' AND type in (N'U'))
DROP TABLE VTL_VACCIN;
GO
-- "Suppression de la table VTL_VACCIN_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_VACCIN_HISTO' AND type in (N'U'))
DROP TABLE VTL_VACCIN_HISTO;
GO
-- "Suppression de la table VTL_USER"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_USER' AND type in (N'U'))
DROP TABLE VTL_USER;
GO
-- "Suppression de la table VTL_USER_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_USER_HISTO' AND type in (N'U'))
DROP TABLE VTL_USER_HISTO;
GO
-- "Suppression de la table VTL_TYPE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_TYPE' AND type in (N'U'))
DROP TABLE VTL_TYPE;
GO
-- "Suppression de la table VTL_TYPE_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_TYPE_HISTO' AND type in (N'U'))
DROP TABLE VTL_TYPE_HISTO;
GO
-- "Suppression de la table VTL_TRAITREMENT"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_TRAITREMENT' AND type in (N'U'))
DROP TABLE VTL_TRAITREMENT;
GO
-- "Suppression de la table VTL_TRAITREMENT_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_TRAITREMENT_HISTO' AND type in (N'U'))
DROP TABLE VTL_TRAITREMENT_HISTO;
GO
-- "Suppression de la table VTL_TRAITEMENT_MEDICAMENT"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_TRAITEMENT_MEDICAMENT' AND type in (N'U'))
DROP TABLE VTL_TRAITEMENT_MEDICAMENT;
GO
-- "Suppression de la table VTL_TRAITEMENT_MEDICAMENT_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_TRAITEMENT_MEDICAMENT_HISTO' AND type in (N'U'))
DROP TABLE VTL_TRAITEMENT_MEDICAMENT_HISTO;
GO
-- "Suppression de la table VTL_RACE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_RACE' AND type in (N'U'))
DROP TABLE VTL_RACE;
GO
-- "Suppression de la table VTL_RACE_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_RACE_HISTO' AND type in (N'U'))
DROP TABLE VTL_RACE_HISTO;
GO
-- "Suppression de la table VTL_PROPRIETAIRE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_PROPRIETAIRE' AND type in (N'U'))
DROP TABLE VTL_PROPRIETAIRE;
GO
-- "Suppression de la table VTL_PROPRIETAIRE_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_PROPRIETAIRE_HISTO' AND type in (N'U'))
DROP TABLE VTL_PROPRIETAIRE_HISTO;
GO
-- "Suppression de la table VTL_POSITION"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_POSITION' AND type in (N'U'))
DROP TABLE VTL_POSITION;
GO
-- "Suppression de la table VTL_POSITION_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_POSITION_HISTO' AND type in (N'U'))
DROP TABLE VTL_POSITION_HISTO;
GO
-- "Suppression de la table VTL_MEDICAMENT"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_MEDICAMENT' AND type in (N'U'))
DROP TABLE VTL_MEDICAMENT;
GO
-- "Suppression de la table VTL_MEDICAMENT_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_MEDICAMENT_HISTO' AND type in (N'U'))
DROP TABLE VTL_MEDICAMENT_HISTO;
GO
-- "Suppression de la table VTL_HISTO_TAILLE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_HISTO_TAILLE' AND type in (N'U'))
DROP TABLE VTL_HISTO_TAILLE;
GO
-- "Suppression de la table VTL_HISTO_TAILLE_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_HISTO_TAILLE_HISTO' AND type in (N'U'))
DROP TABLE VTL_HISTO_TAILLE_HISTO;
GO
-- "Suppression de la table VTL_HISTO_POIDS"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_HISTO_POIDS' AND type in (N'U'))
DROP TABLE VTL_HISTO_POIDS;
GO
-- "Suppression de la table VTL_HISTO_POIDS_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_HISTO_POIDS_HISTO' AND type in (N'U'))
DROP TABLE VTL_HISTO_POIDS_HISTO;
GO
-- "Suppression de la table VTL_CONTRAT"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CONTRAT' AND type in (N'U'))
DROP TABLE VTL_CONTRAT;
GO
-- "Suppression de la table VTL_CONTRAT_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CONTRAT_HISTO' AND type in (N'U'))
DROP TABLE VTL_CONTRAT_HISTO;
GO
-- "Suppression de la table VTL_CONSULTATION"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CONSULTATION' AND type in (N'U'))
DROP TABLE VTL_CONSULTATION;
GO
-- "Suppression de la table VTL_CONSULTATION_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CONSULTATION_HISTO' AND type in (N'U'))
DROP TABLE VTL_CONSULTATION_HISTO;
GO
-- "Suppression de la table VTL_CARTE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CARTE' AND type in (N'U'))
DROP TABLE VTL_CARTE;
GO
-- "Suppression de la table VTL_CARTE_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_CARTE_HISTO' AND type in (N'U'))
DROP TABLE VTL_CARTE_HISTO;
GO
-- "Suppression de la table VTL_ASSURANCE"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_ASSURANCE' AND type in (N'U'))
DROP TABLE VTL_ASSURANCE;
GO
-- "Suppression de la table VTL_ASSURANCE_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_ASSURANCE_HISTO' AND type in (N'U'))
DROP TABLE VTL_ASSURANCE_HISTO;
GO
-- "Suppression de la table VTL_ANIMAL"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_ANIMAL' AND type in (N'U'))
DROP TABLE VTL_ANIMAL;
GO
-- "Suppression de la table VTL_ANIMAL_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_ANIMAL_HISTO' AND type in (N'U'))
DROP TABLE VTL_ANIMAL_HISTO;
GO
-- "Suppression de la table VTL_ADOPTER"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_ADOPTER' AND type in (N'U'))
DROP TABLE VTL_ADOPTER;
GO
-- "Suppression de la table VTL_ADOPTER_HISTO"
IF EXISTS (SELECT * FROM sys.objects WHERE name = N'VTL_ADOPTER_HISTO' AND type in (N'U'))
DROP TABLE VTL_ADOPTER_HISTO;
GO


-- "=============================="
-- "Fin du script vital_drop.sql"
-- "=============================="

