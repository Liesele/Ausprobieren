# hier soll eine Übersicht entstehen, welche Dinge alle berechnet wurden, wo in welchem Skript diese Berechnungen zu finden sind und 
# eventuell eine verkürzte Version der Auswertungen entstehen


# BYLET-Pilotierung 

# Analyseschritte


# Gliederung 

# 0. benötigte Packages

# 1. Datenaufbereitung

# 1.1. Zusammenfügung der klassenweisen Datensätze
# 1.2. Löschen doppelter Fälle
# 1.3. Erstellen der Klassenstufen-Variablen aus dem Code
# 1.4. Auswertung der Tests 
# 1.5. Zusammenführung der Datensätze der Versionen (A/B/C) zu einem einzigen Datensatz
# 1.6. Zusammenführung des BLT-Datensatzes mit den anderen Tests zu einem einzigen Datensatz
# 1.7. Berechnung von Stufenscores und Abschnittsscores 
# 1.8. Abspeichern der zusammengeführten Datensätze



# 2. Deskriptive Auswertungen 

# 2.1. Summenwerte BLT nach Klassenstufen getrennt
# 2.2. Mittelwerte für alle einzelnen BLT-Items nach Klassenstufe getrennt 
# 2.3. Mittelwerte für alle einzelnen BLT-Items über Klassenstufen hinweg nicht nach Klassenstufe getrennt, aber für die unterschiedliche Anzahl pro Klassenstufe gewichtet
# 2.4. Lösungshäufigkeiten für Stufen nach Klassenstufe getrennt
# 2.5. Lösungshäufigkeiten für Stufen nicht nach Klassenstufe getrennt, aber für die unterschiedliche Anzahl pro Klassenstufe gewichtet
# 2.6. Lösungshäufigkeiten für Absschnitte nach Klassenstufe getrennt
# 2.7. Lösungshäufigkeiten für Abschnitte nicht nach Klassenstufe getrennt, aber für die unterschiedliche Anzahl pro Klassenstufe gewichtet
# 2.8  Lösungshäufigkeiten für Einzelitems nach Geschlecht getrennt 
# 2.X. Fehleranalysen 




# 3. Grafische Darstellungen 

# 3.1. Lösungshäufigkeiten für Einzelitems
# 3.2. Lösungshäufigkeiten für Einzelitems nach Klassenstufe getrennt
# 3.3. Lösungshäufigkeiten für Stufen nach Klassenstufe getrennt
# 3.4. Lösungshäufigkeiten für Stufen nicht nach Klassenstufe getrennt, aber für die unterschiedliche Anzahl pro Klassenstufe gewichtet
# 3.5. Lösungshäufigkeiten für Abschnitte nach Klassenstufe getrennt
# 3.6. Lösungshäufigkeiten für Abschnitte nicht nach Klassenstufe getrennt, aber für die unterschiedliche Anzahl pro Klassenstufe gewichtet
# 3.7. Lösungshäufigkeiten für Einzelitems nach Geschlecht getrennt 
# 3.8. Summenscore-Boxplots nach Klassenstufe getrennt




# 4. Inferenzstatistische Auswertungen

# 4.1. T-Tests 

# 4.1.1. Summenscores zwischen Parallelversionen total
# 4.1.2. Summenscores zwischen Parallelversionen nach Klassenstufe getrennt
# 4.1.3. Summenscores zwischen Mädchen und Jungen




# 4.2. Raschmodelle 

# 4.2.1. Datenaufbereitung zur Analyse 
# 4.2.2. Raschmodelle
# 4.2.2.a  Reanalyse des BLT-A ohne Item 11, das extrem schwer geschätzt wurde (brachte in Pilotierung nichts)
# 4.2.3. 2PL-Modelle
# 4.2.4. 3PL-Modelle
# 4.2.5. Grafiken der ICCs speichern
# 4.2.6. Mix-Rasch-Modelle
# 4.2.7. Grafische Darstellung der Schwellenprofile
# 4.2.8. Speicherung der Personenparameter als neue Variable 


# 4.3  Faktorenanalysen 

# 4.3.1 Über alle einzelnen Items
# 4.3.1 Faktorenanalysen über alle einzelnen Items der jeweiligen Versionen
# 4.3.2 Über Stufenscores jeweils zweier Versionen
# 4.3.3 Über die Abschnitte jeweils zweier Versionen


# 4.4 Regressionsanalysen 

# 4.4.1. Vorhersage der Personenparametern aus den Stufen- und Abschnittsscores
# 4.4.2. Vorhersage der Summenscores von VSL, SLS und FLVT aus den Stufen- und Abschnittsscores 



# 4.5. Korrelationen mit anderen Lesetests (SLS, VSL, FLVT)

# 4.5.1. Korrelationen von Summenscores, Stufenscores, Abschnittsscores, Personenparameter mit anderen Lesetests
# 4.5.2. Korrelationen von Summenscores, Stufenscores, Abschnittsscores, Personenparameter mit anderen Lesetests, nach Klassenstufe getrennt 
# 4.5.3. Korrelationen von Summenscores mit anderen Lesetests, innerhalb der Klassen 


# 4.6. Itemanalysen

# 4.6.1. Trennschärfen 
# 4.6.2. McDonald's Omega 


# 5. Normierung 


#_____________________________________________________________________________________________________________________________________________________________________________
#_____________________________________________________________________________________________________________________________________________________________________________

# 0. Benötigte Packages 

#install.packages("psych")
#install.packages ("foreign" )
#install.packages("dplyr") 
#install.packages( "ggplot2" )
#install.packages("readxl")
#install.packages( "tidyr")
#install.packages("stringr")
#install.packages("openxlsx")
#install.packages("reshape2")
#install.packages("gridExtra")
#install.packages ("lavaan")
#install.packages ("GPArotation")
#install.packages ("prettyR")
#install.packages ( "eRm")
#install.packages ( "ltm")
#install.packages  ("psychomix")
#install.packages  ("flexmix")
#install.packages ("lattice")
#install.packages  ("psychotools")
#install.packages  ("mixRasch")




library(psych)
library(foreign)
library(dplyr)
library (ggplot2)
library(readxl)
library (tidyr)
library(stringr)
library(openxlsx)
library(reshape2)
library(gridExtra)
library(lavaan)
library(GPArotation)
library(prettyR)
library (eRm)
library (ltm)   # schätzt mit MML 
library (MASS)
library (psychomix)
library (flexmix)
library (lattice)
library (psychotools)
library (mixRasch)


# 1. Datenaufbereitung

# 1.1. Zusammenfügung der klassenweisen Datensätze

#Define
setwd("WORKINGDIRECTORY")
filetype<-".xlsx"             #filetyp mit Punkt
key<-"s_code"                 #Schlüsselvariable für merge
ordner<-"ORDNER/UNTERORDNER"  #ggf. Unterordner (ohne Schrägstrich), sonst "."
output_file<-"NAME.csv"

#Hinweis: Fügt nur Datensätze mit gleichen Variablen zusammen!
#Output auf Fehler prüfen!

#read files from folder, return dataframe
f_file<-list.files(ordner, filetype,full.names = TRUE, recursive = F)
datensatz<-NULL
for (i in 1:length(f_file)){
  print(f_file[i])
  tmp<-data.frame(str_locate_all(f_file[i], "\\."))
  tmp_filetype<-substr(f_file[i], tmp[nrow(tmp),"end"], nchar(f_file[i]))
  if( (tmp_filetype == ".xlsx") & ( filetype==".xlsx") ){
    if(length(datensatz)==0){datensatz<-read.xlsx(f_file[i],sheet = 1) } 
    datensatz <- merge(datensatz, read.xlsx(f_file[i],sheet = 1), skipEmptyRows = F, all=T, by=c(key, colnames(datensatz)))
  }else if ( (tmp_filetype == ".csv") & ( filetype==".csv") ){
    if(length(datensatz)==0){datensatz<-read.csv2(f_file[i],to.data.frame = T) } 
    datensatz <- merge(datensatz, read.csv2(f_file[i], to.data.frame = T), skipEmptyRows = F, all=T, by=c(key, colnames(datensatz)))
  }else if ( (tmp_filetype == ".sav") & ( filetype==".sav") ){
    if(length(datensatz)==0){datensatz<-read.spss(f_file[i],to.data.frame = T) } 
    datensatz <- merge(datensatz, read.spss(f_file[i], to.data.frame = T), skipEmptyRows = F, all=T, by=c(key, colnames(datensatz)))
  }
  print(paste0("Reading: ", f_file[i]))
}
print(paste0("Writing: ", output_file))
write.csv2(datensatz,output_file)


# 1.2. Löschen doppelter Fälle

# allgemeine Form
setwd("DATEIPFAD")
DATENSATZ <- read.csv (file = "DATENSATZ.csv", sep = ";")     # Datensatz einlesen
DATENSATZ  <- as.data.frame(DATENSATZ )
which (duplicated (DATENSATZ$s_code))                        # Prüfung auf doppelte Fälle 
DATENSATZ [(which (duplicated (DATENSATZ$s_code))),] <- NA   # nicht ideal, aber ich finde grade keine bessere Lösung ## verwandelt doppelte Fälle in NAs
DATENSATZ <- DATENSATZ  %>% drop_na(s_code)                  # löscht die NA-Fälle raus 

#konkrete Form
setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Regensburg/Promotion/Arbeitsprozess/Daten_Prozess/Daten-final_Arbeitsdateien/BLT-A")
BLT_A <- read.csv (file = "BLT_A_alleKLassen_ausgewertet.csv", sep = ";")
BLT_A <- as.data.frame(BLT_A)
which (duplicated (BLT_A$s_code))                    # Prüfung auf doppelte Fälle 
BLT_A [(which (duplicated (BLT_A$s_code))),] <- NA   # nicht ideal, aber ich finde grade keine bessere Lösung ## verwandelt doppelte Fälle in NAs
BLT_A <- BLT_A  %>% drop_na(s_code)                  # löscht die NA-Fälle raus 


setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Regensburg/Promotion/Arbeitsprozess/Daten_Prozess/Daten-final_Arbeitsdateien/BLT-B")
BLT_B <- read.csv (file = "BLT_B_alleKLassen_ausgewertet.csv", sep = ";")
BLT_B <- as.data.frame(BLT_B)
which (duplicated (BLT_B$s_code))                    # Prüfung auf doppelte Fälle 
BLT_B [(which (duplicated (BLT_B$s_code))),] <- NA   # nicht ideal, aber ich finde grade keine bessere Lösung ## verwandelt doppelte Fälle in NAs
BLT_B <- BLT_B  %>% drop_na(s_code)                  # löscht die NA-Fälle raus 


setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Regensburg/Promotion/Arbeitsprozess/Daten_Prozess/Daten-final_Arbeitsdateien/BLT-C")
BLT_C <- read.csv (file = "BLT_C_alleKLassen_ausgewertet.csv", sep = ";")
BLT_C <- as.data.frame(BLT_C)
which (duplicated (BLT_C$s_code))                    # Prüfung auf doppelte Fälle
BLT_C [(which (duplicated (BLT_C$s_code))),] <- NA   # nicht ideal, aber ich finde grade keine bessere Lösung ## verwandelt doppelte Fälle in NAs
BLT_C <- BLT_C  %>% drop_na(s_code)                  # löscht die NA-Fälle raus 


# 1.3. Erstellen der Klassenstufen-Variablen aus dem Code

# DATENSATZ ist hier mit dem jeweiligen Datensatz zu ersetzen
#allgemeine Form
head (DATENSATZ)
DATENSATZ$V1 <- NULL  # Spalte "V1" = Nummerierung der Fälle, löschen
DATENSATZ$s_term <- NULL # Spalte "s_term" löschen
s_term <- (substr (DATENSATZ$s_code, 1,1)) # Die Klassenstufe in eigenem Objekt speichern
s_term <- as.numeric(unlist(s_term))   # Datenformat von Liste auf Numeric ändern
DATENSATZ <- cbind (DATENSATZ, s_term) # und an den Datensatz anhängen


#konkrete Form
head (BLT_A)
BLT_A$V1 <- NULL  # Spalte "V1" = Nummerierung der Fälle, löschen
BLT_A$s_term <- NULL # Spalte "s_term" löschen
s_term <- (substr (BLT_A$s_code, 1,1)) # Die Klassenstufe in eigenem Objekt speichern
s_term <- as.numeric(unlist(s_term))   # Datenformat von Liste auf Numeric ändern
BLT_A <- cbind (BLT_A, s_term) # und an den Datensatz anhängen

head (BLT_B)
BLT_B$V1 <- NULL
BLT_B$s_term <- NULL # Spalte "s_term" löschen
s_term <- (substr (BLT_B$s_code, 1,1)) # Die Klassenstufe in eigenem Objekt speichern
s_term <- as.numeric(unlist(s_term))   # Datenformat von Liste auf Numeric ändern
BLT_B <- cbind (BLT_B, s_term) # und an den Datensatz anhängen

head (BLT_C)
BLT_C$PrimaryLast <- NULL
BLT_C$V1 <- NULL
BLT_C$s_term <- NULL # Spalte "s_term" löschen
s_term <- (substr (BLT_C$s_code, 1,1)) # Die Klassenstufe in eigenem Objekt speichern
s_term <- as.numeric(unlist(s_term))   # Datenformat von Liste auf Numeric ändern
BLT_C <- cbind (BLT_C, s_term) # und an den Datensatz anhängen


# 1.4. Auswertung der Tests 

### findet momentan noch in SPSS statt




# 1.5. Zusammenführung der Datensätze der Versionen (A/B/C) zu einem einzigen Datensatz

# Indikatorvariablen für Testversion erstellen

version_a <- c(rep (1, 437))
version_a
BLT_A <- cbind (BLT_A, version_a)

version_b <- c(rep (1, 417))
version_b
BLT_B <- cbind (BLT_B, version_b)

version_c <- c(rep (1, 472))
version_c
BLT_C <- cbind (BLT_C, version_c)


# Alle drei Datensätze zu einem zusammenführen

# eindeutige Variablen schaffen 
names(BLT_A)[names(BLT_A)=="comment"] <- "comment_a"
names(BLT_A)[names(BLT_A)=="s_lrst"] <- "s_lrst_a"
names(BLT_A)[names(BLT_A)=="s_sex"] <- "s_sex_a"
names(BLT_A)[names(BLT_A)=="s_term"] <- "s_term_a"
BLT_A$V1 <- NULL

names(BLT_B)[names(BLT_B)=="comment"] <- "comment_b"
names(BLT_B)[names(BLT_B)=="s_lrst"] <- "s_lrst_b"
names(BLT_B)[names(BLT_B)=="s_sex"] <- "s_sex_b"
names(BLT_B)[names(BLT_B)=="s_term"] <- "s_term_b"
BLT_B$V1 <- NULL

names(BLT_C)[names(BLT_C)=="comment"] <- "comment_c"
names(BLT_C)[names(BLT_C)=="s_lrst"] <- "s_lrst_c"
names(BLT_C)[names(BLT_C)=="s_sex"] <- "s_sex_c"
names(BLT_C)[names(BLT_C)=="s_term"] <- "s_term_c"

ls(BLT_C)


sum( BLT_A$s_code %in% BLT_B$s_code)   # wie viele der s_codes in A finden sich auch in B?

BLT_AB <- merge (BLT_A, BLT_B, by.BLT_A = "s_code", all.x = TRUE, all.y = TRUE, no.dups = FALSE)

sum( BLT_AB$s_code %in% BLT_C$s_code) 


# BLT_AB$s_term 

BLT_ABC <- merge (BLT_AB, BLT_C, by.BLT_AB = "s_code", all.x = TRUE, all.y = TRUE, no.dups = FALSE)

which (duplicated (BLT_ABC$s_code))    # jetzt müsste alles passen :-D

# Übergreifende Variablen wiederherstellen

BLT_ABC$s_term_a <- NULL
BLT_ABC$s_term_b <- NULL
BLT_ABC$s_term_c <- NULL

s_term <- (substr (BLT_ABC$s_code, 1,1)) # Die Klassenstufe in eigenem Objekt speichern
s_term <- as.numeric(unlist(s_term))   # Datenformat von Liste auf Numeric ändern
BLT_ABC <- cbind (BLT_ABC, s_term) # und an den Datensatz anhängen


# Geschlechtsvariable wiederherstellen
s_sex <- BLT_ABC [, grep.multi(BLT_ABC, "s_sex")]

BLT_ABC$s_sex <- apply (s_sex, 1, mean, na.rm = T)



# Endprodukt 
ls (BLT_ABC)


# 1.6. Zusammenführung des BLT-Datensatzes mit den anderen Tests zu einem einzigen Datensatz


setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Regensburg/Promotion/Arbeitsprozess/Daten_Prozess/Daten-final_Arbeitsdateien/FLVT")
 #setwd("WORKINGDIRECTORY")

FLVT <- read.csv2 (file = "FLVT_zsgfgt_ausgewertet.csv", sep = ";")
FLVT <- as.data.frame(FLVT)
which (duplicated (FLVT$s_code)) # Prüfung auf doppelte Fälle 
FLVT [(which (duplicated (FLVT $s_code))),] <- NA  # doppelte Fälle umwandeln
FLVT$V1 <- NULL
FLVT$s_lrst <- NULL
FLVT$s_sex <- NULL
FLVT$s_term <- NULL
FLVT$X150 <- NULL

setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Regensburg/Promotion/Arbeitsprozess/Daten_Prozess/Daten-final_Arbeitsdateien/SLS")
SLS <- read.spss (file = "SLS_zsgfgt_ausgewertet.sav")
SLS <- as.data.frame(SLS)
which (duplicated (SLS$s_code)) # Prüfung auf doppelte Fälle 
SLS [which (duplicated (SLS$s_code)) ,] <- NA    # doppelte Fälle umwandeln
SLS$V1 <- NULL
SLS$s_lrst <- NULL
SLS$s_sex <- NULL
SLS$s_term <- NULL


setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Regensburg/Promotion/Arbeitsprozess/Daten_Prozess/Daten-final_Arbeitsdateien/VSL")
VSL <- read.spss (file = "VSL_zsgfgt_ausgewertet.sav")
VSL <- as.data.frame(VSL)
which (duplicated (VSL$s_code)) # Prüfung auf doppelte Fälle 
VSL [which (duplicated (VSL$s_code)) ,] <- NA    # doppelte Fälle umwandeln
VSL$V1 <- NULL
VSL$s_lrst <- NULL
VSL$s_sex <- NULL
VSL$s_term <- NULL

sum( BLT_ABC$s_code %in% FLVT$s_code)  # wie viele Personen sind nur in FLVT?
datenkomplett1 <- merge (BLT_ABC,FLVT, by.BLT_ABC = "s_code", all.x = TRUE, all.y = TRUE, no.dups = TRUE)    # Datensätze mergen

sum( datenkomplett1$s_code %in% SLS$s_code)  # wie viele Personen sind nur in SLS?
datenkomplett2 <- merge (datenkomplett1,SLS, by.datenkomplett1 = "s_code", all.x = TRUE, all.y = TRUE, no.dups = TRUE) # Datensätze mergen

sum( datenkomplett2$s_code %in% VSL$s_code)   # wie viele Personen sind nur in VSL?
datenkomplett <- merge (datenkomplett2,VSL, by.datenkomplett2 = "s_code", all.x = TRUE, all.y = TRUE, no.dups = TRUE) # Datensätze mergen


datenkomplett [which (duplicated (datenkomplett$s_code)) ,] <- NA    # doppelte Personen entfernen
datenkomplett <- datenkomplett %>% drop_na(s_code)                   # doppelte Personen entfernen


# 1.7. Berechnung von Stufenscores und Abschnittsscores 

# Abschnittsscores berechnen


attach(datenkomplett)

Abschnitt_A_A <-  (bla_a_1 + bla_a_2 + bla_a_3 + bla_a_4 )/4
Abschnitt_B_A <- ( bla_b_5 + bla_b_6+ bla_b_7 + bla_b_8)/4
Abschnitt_C_A <- (bla_c_10 + bla_c_11 + bla_c_12 + bla_c_9 )/4
Abschnitt_D_A <- ( bla_d_13 + bla_d_14 + bla_d_15 + bla_d_16 )/4

Abschnitt_A_B <-  (blb_a_1 + blb_a_2 + blb_a_3 + blb_a_4 )/4
Abschnitt_B_B <- ( blb_b_5 + blb_b_6+ blb_b_7 + blb_b_8)/4
Abschnitt_C_B <- (blb_c_10 + blb_c_11 + blb_c_12 + blb_c_9 )/4
Abschnitt_D_B <- ( blb_d_13 + blb_d_14 + blb_d_15 + blb_d_16 )/4

Abschnitt_A_C <-  (blc_a_1 + blc_a_2 + blc_a_3 + blc_a_4 )/4
Abschnitt_B_C <- ( blc_b_5 + blc_b_6+ blc_b_7 + blc_b_8)/4
Abschnitt_C_C <- (blc_c_10 + blc_c_11 + blc_c_12 + blc_c_9 )/4
Abschnitt_D_C <- ( blc_d_13 + blc_d_14 + blc_d_15 + blc_d_16 )/4


# Scores für Kompetenz-Stufen berechnen 



Stufe_II_A <-  (bla_a_1 + bla_b_5 + bla_c_9 + bla_d_13)/4
Stufe_II_B <-  (blb_a_1 + blb_b_5 + blb_c_9 + blb_d_13)/4
Stufe_II_C <-  (blc_a_1 + blc_b_5 + blc_c_9 + blc_d_13)/4

Stufe_III_A <- (bla_a_2 + bla_a_3 + bla_b_6 + bla_b_7 + bla_c_10 + bla_c_11 + bla_d_14 + bla_d_15)/8
Stufe_III_B <- (blb_a_2 + blb_a_3 + blb_b_6 + blb_b_7 + blb_c_10 + blb_c_11 + blb_d_14 + blb_d_15)/8
Stufe_III_C <- (blc_a_2 + blc_a_3 + blc_b_6 + blc_b_7 + blc_c_10 + blc_c_11 + blc_d_14 + blc_d_15)/8


Stufe_IV_A <- (bla_a_4 + bla_b_8 + bla_c_12 + bla_d_16)/4
Stufe_IV_B <- (blb_a_4 + blb_b_8 + blb_c_12 + blb_d_16)/4
Stufe_IV_C <- (blc_a_4 + blc_b_8 + blc_c_12 + blc_d_16)/4


Stufe_V_A <- (bla_g_17 + bla_g_18 + bla_g_19 + bla_g_20)/4
Stufe_V_B <- (blb_g_17 + blb_g_18 + blb_g_19 + blb_g_20)/4
Stufe_V_C <- (blc_g_17 + blc_g_18 + blc_g_19 + blc_g_20)/4

detach (datenkomplett)

datenkomplett <- cbind (datenkomplett, Stufe_II_A, Stufe_II_B, Stufe_II_C, Stufe_III_A, Stufe_III_B, Stufe_III_C, Stufe_IV_A, Stufe_IV_B, Stufe_IV_C,Stufe_V_A, Stufe_V_B, Stufe_V_C, Abschnitt_A_A, Abschnitt_B_A, Abschnitt_C_A, Abschnitt_D_A, Abschnitt_A_B, Abschnitt_B_B, Abschnitt_C_B, Abschnitt_D_B, Abschnitt_A_C, Abschnitt_B_C, Abschnitt_C_C, Abschnitt_D_C)


# 1.8. Abspeichern der zusammengeführten Datensätze

setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Regensburg/Promotion/Arbeitsprozess/Daten_Prozess/Daten-final_Arbeitsdateien")
write.csv2(BLT_ABC, file = "BLT_ABC.csv")

BLT_ABC <- read.csv2 (file = "BLT_ABC.csv")

setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Regensburg/Promotion/Arbeitsprozess/Daten_Prozess/Daten-final_Arbeitsdateien")
write.csv2 (x = datenkomplett, file = "Datenkomplett.csv")   # kompletten Datensatz speichern

datenkomplett <- read.csv (file = "Datenkomplett.csv")


# ________________________________________________________________________________________________________________________________________________________________
##################################################################################################################################################################
# ________________________________________________________________________________________________________________________________________________________________


# 2. Deskriptive Auswertungen 

# 2.1. Summenwerte BLT nach Klassenstufen getrennt


# Summenwert des Tests in Abhängigkeit der Klassenstufe erstellen

# BLT-A
mean_vector_A <- c (2:7)  # Vektor anlegen

for (i in 2:7) {
mean_vector_A [i-1] <- mean(subset(BLT_ABC$bla_score,BLT_ABC$s_term == i), na.rm = TRUE) # Vektor der nach Klassenstufe aufgeschlüsselten Mittelwerte erzeugen
}    


# BLT-B 
mean_vector_B <- c (2:7)  # Vektor anlegen

for (i in 2:7) {
  mean_vector_B [i-1] <- mean(subset(BLT_ABC$blb_score,BLT_ABC$s_term == i), na.rm = TRUE) # Vektor der nach Klassenstufe aufgeschlüsselten Mittelwerte erzeugen
}    


# BLT-C 
mean_vector_C <- c (2:7)  # Vektor anlegen

for (i in 2:7) {
  mean_vector_C [i-1] <- mean(subset(BLT_ABC$blc_score,BLT_ABC$s_term == i), na.rm = TRUE) # Vektor der nach Klassenstufe aufgeschlüsselten Mittelwerte erzeugen
}    


# Vergleichende Tabelle der nach Klassen gruppierten Score-Mittelwerte

Mittelwerttabelle <- rbind (mean_vector_A, mean_vector_B, mean_vector_C)
colnames (Mittelwerttabelle) <- c("Klasse 2", "Klasse 3", "Klasse 4", "Klasse 5", "Klasse 6", "Klasse 7")
as.data.frame(Mittelwerttabelle)
Mittelwerttabelle # Zeilen sind BLT-Versionen, Spalten die Klassenstufen (2-7)




# 2.2. Mittelwerte für alle einzelnen BLT-Items nach Klassenstufe getrennt 



mydata <- BLT_ABC [, c ("bla_a_1" , "bla_a_2" , "bla_a_3", "bla_a_4" , "bla_b_5" , "bla_b_6" ,"bla_b_7" ,"bla_b_8" , "bla_c_9", "bla_c_10" ,"bla_c_11" ,"bla_c_12",  
         "bla_d_13" ,"bla_d_14", "bla_d_15" ,"bla_d_16" ,"bla_g_17" ,"bla_g_18" ,"bla_g_19" ,"bla_g_20", "blb_a_1" ,"blb_a_2" ,"blb_a_3", "blb_a_4" 
         ,"blb_b_5" ,"blb_b_6" ,"blb_b_7" ,"blb_b_8" ,"blb_c_9","blb_c_10" ,"blb_c_11" ,"blb_c_12"  ,"blb_d_13", "blb_d_14" ,"blb_d_15" 
         ,"blb_d_16", "blb_g_17" ,"blb_g_18" ,"blb_g_19", "blb_g_20" ,"blc_a_1" ,"blc_a_2", "blc_a_3" ,"blc_a_4" ,"blc_b_5", "blc_b_6" ,"blc_b_7" ,"blc_b_8" 
         ,"blc_c_9"  ,"blc_c_10" ,"blc_c_11" ,"blc_c_12" ,"blc_d_13" ,"blc_d_14" ,"blc_d_15" ,"blc_d_16" ,"blc_g_17" ,"blc_g_18" ,"blc_g_19" 
         ,"blc_g_20", "s_term" )]

blt_all_c_all_item_means <- apply(mydata[1:60],2, function(x) tapply(x, mydata$s_term, mean, na.rm=T)) # 1. Objekt, 2. Splitter, 3. Was passiert




# 2.3. Mittelwerte für alle einzelnen BLT-Items nicht nach Klassenstufe getrennt, aber für die unterschiedliche Anzahl pro Klassenstufe gewichtet

blt_all_item_means <- apply (blt_all_c_all_item_means, 2, mean, na.rm = T)



# 2.4. Lösungshäufigkeiten für Stufen nach Klassenstufe getrennt

grep.multi <- function(x, ein, aus = NA){
  rein <- unique(grep(paste(ein, collapse ="|"), names(x), value=TRUE))
  if(is.na(aus[1]) == F) {
    rein.ohne <- unique(grep(paste(aus,collapse ="|"), rein, invert = T, value=TRUE))
    return(rein.ohne)
  } else {
    return(rein)  
  }
}                # Funktion von Sven, mit der man Variablen nach Namen auswählen kann 


mydata <- datenkomplett [, c(grep.multi (datenkomplett, "Stufe"), "s_term")]  # Alle Stufenvariablen und die Klassenvariable auswählen

blt_all_c_all_stufen_means <- apply(mydata[1:12],2, function(x) tapply(x, mydata$s_term, mean, na.rm=T))




# 2.5. Lösungshäufigkeiten für Stufen nicht nach Klassenstufe getrennt, aber für die unterschiedliche Anzahl pro Klassenstufe gewichtet

blt_all_stufen_means <- apply (blt_all_c_all_stufen_means, 2, mean, na.rm = T)




# 2.6. Lösungshäufigkeiten für Absschnitte nach Klassenstufe getrennt

mydata <- datenkomplett [, c(grep.multi (datenkomplett, "Abschnitt"), "s_term")]  # Alle Abschnittsvariablen und die Klassenvariable auswählen

blt_all_c_all_abschnitte_means <- apply(mydata[1:12],2, function(x) tapply(x, mydata$s_term, mean, na.rm=T))





# 2.7. Lösungshäufigkeiten für Abschnitte nicht nach Klassenstufe getrennt, aber für die unterschiedliche Anzahl pro Klassenstufe gewichtet

blt_all_abschnitte_means <- apply (blt_all_c_all_abschnitte_means, 2, mean, na.rm = T)




# 2.8  Lösungshäufigkeiten für Einzelitems nach Geschlecht getrennt 

mydata <- BLT_ABC [, c ("bla_a_1" , "bla_a_2" , "bla_a_3", "bla_a_4" , "bla_b_5" , "bla_b_6" ,"bla_b_7" ,"bla_b_8" , "bla_c_9", "bla_c_10" ,"bla_c_11" ,"bla_c_12",  
                        "bla_d_13" ,"bla_d_14", "bla_d_15" ,"bla_d_16" ,"bla_g_17" ,"bla_g_18" ,"bla_g_19" ,"bla_g_20", "blb_a_1" ,"blb_a_2" ,"blb_a_3", "blb_a_4" 
                        ,"blb_b_5" ,"blb_b_6" ,"blb_b_7" ,"blb_b_8" ,"blb_c_9","blb_c_10" ,"blb_c_11" ,"blb_c_12"  ,"blb_d_13", "blb_d_14" ,"blb_d_15" 
                        ,"blb_d_16", "blb_g_17" ,"blb_g_18" ,"blb_g_19", "blb_g_20" ,"blc_a_1" ,"blc_a_2", "blc_a_3" ,"blc_a_4" ,"blc_b_5", "blc_b_6" ,"blc_b_7" ,"blc_b_8" 
                        ,"blc_c_9"  ,"blc_c_10" ,"blc_c_11" ,"blc_c_12" ,"blc_d_13" ,"blc_d_14" ,"blc_d_15" ,"blc_d_16" ,"blc_g_17" ,"blc_g_18" ,"blc_g_19" 
                        ,"blc_g_20", "s_sex" )]

blt_all_w.vs.m_item_means <- apply(mydata[1:60],2, function(x) tapply(x, mydata$s_sex, mean, na.rm=T)) # 1. Objekt, 2. Splitter, 3. Was passiert

blt_all_w.vs.m_item_means [c(2,4),] <- NA
blt_all_w.vs.m_item_means <- as.data.frame(blt_all_w.vs.m_item_means)
blt_all_w.vs.m_item_means <- blt_all_w.vs.m_item_means  %>% drop_na(bla_a_1)  



# 2.X. Fehleranalysen 

# weiß ich nicht mehr, was wir noch groß geändert hatten?

#________________________________________________________________________________________________________________________________________________________________
#################################################################################################################################################################
#________________________________________________________________________________________________________________________________________________________________



# 3. Grafische Darstellungen 

setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Regensburg/Promotion/Arbeitsprozess/Daten_Prozess/Grafiken")    # hier werden die Grafiken hingespeichert


# 3.1. Lösungshäufigkeiten für Einzelitems

#BLT-A
jpeg (filename = "LsgPr_BLT_A_ohneKlassen.jpeg" , width = 1500, height = 1000)
barplot(blt_all_item_means [1:20], beside = T, axisnames = TRUE, cex.names = 0.75, ylab = "Lösungshäufigkeit in %", xlab = "Version A")
dev.off()

#BLT-B
jpeg (filename = "LsgPr_BLT_B_ohneKlassen.jpeg" , width = 1500, height = 1000)
barplot(blt_all_item_means [21:40], beside = T, axisnames = TRUE, cex.names = 0.75, ylab = "Lösungshäufigkeit in %", xlab = "Version B")
dev.off()

#BLT-C
jpeg (filename = "LsgPr_BLT_C_ohneKlassen.jpeg" , width = 1500, height = 1000)
barplot(blt_all_item_means [41:60], beside = T , axisnames = TRUE, cex.names = 0.75, ylab = "Lösungshäufigkeit in %", xlab = "Version C")
dev.off()




# 3.2. Lösungshäufigkeiten für Einzelitems nach Klassenstufe getrennt



#BLT-A
jpeg (filename = "LsgPr_BLT_A.jpeg" , width = 1500, height = 1000)
barplot (blt_all_c_all_item_means [, 1:20] , beside = TRUE, axisnames = TRUE, cex.names = 0.75, ylab = "Lösungshäufigkeit in %", xlab = "Version A, Farben sind Klassenstufen")  # Version A
dev.off()

#BLT-B
jpeg (filename = "LsgPr_BLT_B.jpeg" , width = 1500, height = 1000)
barplot (blt_all_c_all_item_means [, 21:40], beside = TRUE , cex.names = 0.75 , ylab = "Lösungshäufigkeit in %" , xlab = "Version B, Farben sind Klassenstufen") # Version B 
dev.off()

#BLT-C
jpeg ( filename = "LsgPr_BLT_C.jpeg" , width = 1500, height = 1000)
barplot (blt_all_c_all_item_means [, 41:60], beside = TRUE, cex.names = 0.75 , ylab = "Lösungshäufigkeit in %", xlab = "Version C, Farben sind Klassenstufen")  # Version C
dev.off()



# 3.3. Lösungshäufigkeiten für Stufen nach Klassenstufe getrennt


#BLT-A
jpeg (filename = "LsgPr_BLT_A_Stufen_Klassen.jpeg" , width = 1500, height = 1000)
barplot (blt_all_c_all_stufen_means [, c(1, 4, 7, 10)] , beside = TRUE, axisnames = TRUE, cex.names = 0.75, ylab = "Lösungshäufigkeit in %", xlab = "Version A, Farben sind Klassenstufen")  # Version A
dev.off()

#BLT-B
jpeg (filename = "LsgPr_BLT_B_Stufen_Klassen.jpeg" , width = 1500, height = 1000)
barplot (blt_all_c_all_stufen_means [, c(2,5,8,11)], beside = TRUE , cex.names = 0.75 , ylab = "Lösungshäufigkeit in %" , xlab = "Version B, Farben sind Klassenstufen") # Version B 
dev.off()

#BLT-C
jpeg ( filename = "LsgPr_BLT_C_Stufen_Klassen.jpeg" , width = 1500, height = 1000)
barplot (blt_all_c_all_stufen_means [, c(3,6,9,12)], beside = TRUE, cex.names = 0.75 , ylab = "Lösungshäufigkeit in %", xlab = "Version C, Farben sind Klassenstufen")  # Version C
dev.off()




# 3.4 Lösungshäufigkeiten für Stufen nicht nach Klassenstufe getrennt, aber für die unterschiedliche Anzahl pro Klassenstufe gewichtet


#BLT-A
jpeg (filename = "LsgPr_BLT_A_Stufen_ohneKlassen.jpeg" , width = 1500, height = 1000)
barplot (blt_all_stufen_means [c(1, 4, 7, 10)] , beside = TRUE, axisnames = TRUE, cex.names = 0.75, ylab = "Lösungshäufigkeit in %", xlab = "Version A, Farben sind Klassenstufen")  # Version A
dev.off()

#BLT-B
jpeg (filename = "LsgPr_BLT_B_Stufen_ohneKlassen.jpeg" , width = 1500, height = 1000)
barplot (blt_all_stufen_means [c(2,5,8,11)], beside = TRUE , cex.names = 0.75 , ylab = "Lösungshäufigkeit in %" , xlab = "Version B, Farben sind Klassenstufen") # Version B 
dev.off()

#BLT-C
jpeg ( filename = "LsgPr_BLT_C_Stufen_ohneKlassen.jpeg" , width = 1500, height = 1000)
barplot (blt_all_stufen_means [ c(3,6,9,12)], beside = TRUE, cex.names = 0.75 , ylab = "Lösungshäufigkeit in %", xlab = "Version C, Farben sind Klassenstufen")  # Version C
dev.off()




# 3.5. Lösungshäufigkeiten für Abschnitte nach Klassenstufe getrennt


blt_all_c_all_abschnitte_means

#BLT-A
jpeg (filename = "LsgPr_BLT_A_Abschnitte_Klassen.jpeg" , width = 1500, height = 1000)
barplot (blt_all_c_all_abschnitte_means [, c(1:4)] , beside = TRUE, axisnames = TRUE, cex.names = 0.75, ylab = "Lösungshäufigkeit in %", xlab = "Version A, Farben sind Klassenstufen")  # Version A
dev.off()

#BLT-B
jpeg (filename = "LsgPr_BLT_B_Abschnitte_Klassen.jpeg" , width = 1500, height = 1000)
barplot (blt_all_c_all_abschnitte_means [, c(5:8)], beside = TRUE , cex.names = 0.75 , ylab = "Lösungshäufigkeit in %" , xlab = "Version B, Farben sind Klassenstufen") # Version B 
dev.off()

#BLT-C
jpeg ( filename = "LsgPr_BLT_C_Abschnitte_Klassen.jpeg" , width = 1500, height = 1000)
barplot (blt_all_c_all_abschnitte_means[, c(9:12)], beside = TRUE, cex.names = 0.75 , ylab = "Lösungshäufigkeit in %", xlab = "Version C, Farben sind Klassenstufen")  # Version C
dev.off()




# 3.6. Lösungshäufigkeiten für Abschnitte nicht nach Klassenstufe getrennt, aber für die unterschiedliche Anzahl pro Klassenstufe gewichtet


#BLT-A
jpeg (filename = "LsgPr_BLT_A_Abschnitte_ohneKlassen.jpeg" , width = 1500, height = 1000)
barplot (blt_all_abschnitte_means [c(1:4)] , beside = TRUE, axisnames = TRUE, cex.names = 0.75, ylab = "Lösungshäufigkeit in %", xlab = "Version A, Farben sind Klassenstufen")  # Version A
dev.off()

#BLT-B
jpeg (filename = "LsgPr_BLT_B_Abschnitte_ohneKlassen.jpeg" , width = 1500, height = 1000)
barplot (blt_all_abschnitte_means[c(5:8)], beside = TRUE , cex.names = 0.75 , ylab = "Lösungshäufigkeit in %" , xlab = "Version B, Farben sind Klassenstufen") # Version B 
dev.off()

#BLT-C
jpeg ( filename = "LsgPr_BLT_C_Abschnitte_ohneKlassen.jpeg" , width = 1500, height = 1000)
barplot (blt_all_abschnitte_means[c(9:12)], beside = TRUE, cex.names = 0.75 , ylab = "Lösungshäufigkeit in %", xlab = "Version C, Farben sind Klassenstufen")  # Version C
dev.off()



# 3.7 Lösungshäufigkeiten für Einzelitems nach Geschlecht getrennt 

# Datensatz reduzieren
data_ABC_sex <- BLT_ABC [, c("bla_a_1" , "bla_a_2" , "bla_a_3", "bla_a_4" , "bla_b_5" , "bla_b_6" ,"bla_b_7" ,"bla_b_8" , "bla_c_9", "bla_c_10" ,"bla_c_11" ,"bla_c_12",  
                             "bla_d_13" ,"bla_d_14", "bla_d_15" ,"bla_d_16" ,"bla_g_17" ,"bla_g_18" ,"bla_g_19" ,"bla_g_20", "blb_a_1" ,"blb_a_2" ,"blb_a_3", "blb_a_4" 
                             ,"blb_b_5" ,"blb_b_6" ,"blb_b_7" ,"blb_b_8" ,"blb_c_9","blb_c_10" ,"blb_c_11" ,"blb_c_12"  ,"blb_d_13", "blb_d_14" ,"blb_d_15" 
                             ,"blb_d_16", "blb_g_17" ,"blb_g_18" ,"blb_g_19", "blb_g_20" ,"blc_a_1" ,"blc_a_2", "blc_a_3" ,"blc_a_4" ,"blc_b_5", "blc_b_6" ,"blc_b_7" ,"blc_b_8" 
                             ,"blc_c_9"  ,"blc_c_10" ,"blc_c_11" ,"blc_c_12" ,"blc_d_13" ,"blc_d_14" ,"blc_d_15" ,"blc_d_16" ,"blc_g_17" ,"blc_g_18" ,"blc_g_19" 
                             ,"blc_g_20", "s_sex")]  


# Mittelwert weiblich

data_ABC_sex_w <- data_ABC_sex [data_ABC_sex [,"s_sex"] == 0, ]

m <- c(1)
data_ABC_sex_w_m <- vapply (data_ABC_sex_w , mean, m, na.rm = TRUE)
#data_ABC_sex_w_m


# Mittelwert männlich 
data_ABC_sex_m <- data_ABC_sex [data_ABC_sex [,"s_sex"] == 1, ]

data_ABC_sex_m_m <- vapply (data_ABC_sex_m , mean, m, na.rm = TRUE)
#data_ABC_sex_m_m

# Mittelwerte gegenüberstellen 
all_items_sex <- rbind (data_ABC_sex_w_m, data_ABC_sex_m_m)


jpeg ( filename = "LsgPr_BLT_alleVersionen_Geschlechtervergleich.jpeg" , width = 1500, height = 1000)
barplot (all_items_sex, beside = TRUE, axisnames = TRUE, cex.names = 0.75, ylab = "Lösungshäufigkeit in %", xlab = "dunkel = weiblich, hell = männlich")  
dev.off ()

jpeg ( filename = "LsgPr_BLT_A_Geschlechtervergleich.jpeg" , width = 1500, height = 1000)
barplot (all_items_sex [,1:20], beside = TRUE, axisnames = TRUE, cex.names = 0.5, ylab = "Lösungshäufigkeit in %", xlab = "Version A: dunkel = weiblich, hell = männlich")  
dev.off ()

jpeg ( filename = "LsgPr_BLT_B_Geschlechtervergleich.jpeg" , width = 1500, height = 1000)
barplot (all_items_sex [,21:40], beside = TRUE, axisnames = TRUE, cex.names = 0.5, ylab = "Lösungshäufigkeit in %", xlab = "Version B: dunkel = weiblich, hell = männlich")  
dev.off ()

jpeg ( filename = "LsgPr_BLT_C_Geschlechtervergleich.jpeg" , width = 1500, height = 1000)
barplot (all_items_sex [,41:60], beside = TRUE, axisnames = TRUE, cex.names = 0.5, ylab = "Lösungshäufigkeit in %", xlab = "Version C: dunkel = weiblich, hell = männlich")  
dev.off ()




# 3.8. Summenscore-Boxplots nach Klassenstufe getrennt (Hannes Code)

datensatz <- BLT_ABC
#Variablen für x-Achse:
#array_vars<- c("bla_a_1", "bla_a_2", "bla_a_3", "bla_a_4","bla_b_5", "bla_b_6", "bla_b_7", "bla_b_8","bla_c_9", "bla_c_10", "bla_c_11", "bla_c_12","bla_d_13", "bla_d_14", "bla_d_15", "bla_d_16", "bla_g_17", "bla_g_18", "bla_g_19", "bla_g_20")
#array_vars<- c("blb_a_1", "blb_a_2", "blb_a_3", "blb_a_4","blb_b_5", "blb_b_6", "blb_b_7", "blb_b_8","blb_c_9", "blb_c_10", "blb_c_11", "blb_c_12","blb_d_13", "blb_d_14", "blb_d_15", "blb_d_16", "blb_g_17", "blb_g_18", "blb_g_19", "blb_g_20")
#array_vars<- c("blc_a_1", "blc_a_2", "blc_a_3", "blc_a_4","blc_b_5", "blc_b_6", "blc_b_7", "blc_b_8","blc_c_9", "blc_c_10", "blc_c_11", "blc_c_12","blc_d_13", "blc_d_14", "blc_d_15", "blc_d_16", "blc_g_17", "blc_g_18", "blc_g_19", "blc_g_20")
array_vars<- c("bla_score", "blb_score", "blc_score")


split_by_var<- "s_term" #Gruppen/Gruppierungsvariable im Datensatz
toplot<-"box" #Ausgabe eines ..., mögliche Werte: box, line, bar
legende<-T #Legende anzeigen?

output_file<-"Plot.png" #Speichern: Dateiname des Bildes


#ab hier nichts mehr ändern
#box, line oder bar plotten
if(toplot=="box"){
  iplot <- list()  # new empty list
  for(k in 1:length(array_vars)){
    dat <- data.frame(group=datensatz[,split_by_var], variable=datensatz[,array_vars[k]])
    dat<-subset(dat,!(is.na(dat["group"]) | is.na(dat["variable"]) ) )
    iplot[[k]]<-ggplot(data = dat, aes(x=group, y=variable, fill=group)) + geom_boxplot(aes(group=group)) + guides(fill=guide_legend(title=paste0("Mittelwerte von ",split_by_var))) + theme(axis.text.x  = element_text(angle=90, size=10)) +
      labs(x = split_by_var, y = array_vars[k]) + theme(legend.position='none') 
  }
  iplot<-do.call("grid.arrange", c(iplot, ncol = trunc(sqrt(length(array_vars))) ))
}else{
  #Umstrukturierung für bar&line: variable und value = Spaltennamen in df.m
  grouplevel<-levels(factor(datensatz[,split_by_var]))
  df.tmp<-setNames(data.frame(matrix(ncol = length(array_vars)+1, nrow = length(grouplevel)) ), c(split_by_var, array_vars))
  df.tmp[,split_by_var]<-grouplevel
  for (i in 1:length(array_vars)){
    for (j in 1:length(grouplevel)){ 
      df.tmp[j,i+1]<-mean(subset(datensatz[,array_vars[i]],datensatz[,split_by_var]==grouplevel[j]), na.rm = TRUE)
    }
  }
  df.m <- melt(df.tmp, id.var = split_by_var)
  #plot ausgeben
  if (toplot=="bar"){
    iplot<-ggplot(data=df.m, aes(fill=factor(df.m[,split_by_var]), y=value, x=variable)) + geom_bar(position="dodge", stat="identity") + guides(fill=guide_legend(title=paste0("Mittelwerte von ",split_by_var))) + theme(axis.text.x  = element_text(angle=90, size=10)) #+theme(legend.position='none')
  }else if (toplot=="line"){
    iplot <- ggplot(data=df.m, aes(x=variable, y=value, group=factor(df.m[,split_by_var]))) + geom_line(aes(color=factor(df.m[,split_by_var]))) + geom_point(aes(color=factor(df.m[,split_by_var]), shape = factor(df.m[,split_by_var]))) + theme(axis.text.x  = element_text(angle=90, size=10)) #+ theme(legend.position='none')
  }else{
    print("Fehler: kein Diagrammtyp definiert")  
  }
  iplot
}

if (legende==F){iplot<-iplot + theme(legend.position='none')}

#speichern
ggsave(iplot, file=output_file, width=150, height=150, units="mm", dpi=300)





#___________________________________________________________________________________________________________________________________________________________________________________________________
########################################################################################################################################################################################
#_____________________________________________________________________________________________________________________________________________________________________________________


# 4. Inferenzstatistische Auswertungen

# 4.1. T-Tests 

# 4.1.1. Summenscores zwischen Parallelversionen total

t.test(BLT_ABC$bla_score,BLT_ABC$blb_score,paired=TRUE)
t.test(BLT_ABC$blc_score,BLT_ABC$blb_score,paired=TRUE)
t.test(BLT_ABC$bla_score,BLT_ABC$blc_score,paired=TRUE)




# 4.1.1. Summenscores zwischen Parallelversionen nach Klassenstufe getrennt


mydata <- BLT_ABC [, c(grep.multi (BLT_ABC, "score"),"s_term")]   # Scorevariablen und Klassenvariable auswählen


for (i in 2:7) {
  a <- BLT_ABC [BLT_ABC [,"s_term"] == i,]
  print ("Klassenstufe", quote = F) 
  print (a$s_term, max = 1)
  print (t.test (a$bla_score, a$blb_score, paired= TRUE)) 
  print (t.test (a$blc_score, a$blb_score, paired= TRUE))
  print (t.test (a$bla_score, a$blc_score, paired= TRUE))
}

?t.test


# 4.1.3. Summenscores zwischen Mädchen und Jungen

# Datenaufbereitung
BLT_ABC$s_sex <- as.factor (BLT_ABC$s_sex)
BLT_ABC[BLT_ABC == 0.5] <- NA 

# BLT-A
tt1 <- lm (BLT_ABC$bla_score ~ BLT_ABC$s_sex )
summary (tt1)


# BLT-B
tt2 <- lm (BLT_ABC$blb_score ~ BLT_ABC$s_sex )
summary (tt2)


# BLT-C
tt3 <- lm (BLT_ABC$blc_score ~ BLT_ABC$s_sex )
summary (tt3)






# 4.2. Raschmodelle 

# 4.2.1. Datenaufbereitung zur Analyse 


# Datensatz auf ausgewertete Items reduzieren

data_ABC <- BLT_ABC [, c("bla_a_1" , "bla_a_2" , "bla_a_3", "bla_a_4" , "bla_b_5" , "bla_b_6" ,"bla_b_7" ,"bla_b_8" , "bla_c_9", "bla_c_10" ,"bla_c_11" ,"bla_c_12",  
                         "bla_d_13" ,"bla_d_14", "bla_d_15" ,"bla_d_16" ,"bla_g_17" ,"bla_g_18" ,"bla_g_19" ,"bla_g_20", "blb_a_1" ,"blb_a_2" ,"blb_a_3", "blb_a_4" 
                         ,"blb_b_5" ,"blb_b_6" ,"blb_b_7" ,"blb_b_8" ,"blb_c_9","blb_c_10" ,"blb_c_11" ,"blb_c_12"  ,"blb_d_13", "blb_d_14" ,"blb_d_15" 
                         ,"blb_d_16", "blb_g_17" ,"blb_g_18" ,"blb_g_19", "blb_g_20" ,"blc_a_1" ,"blc_a_2", "blc_a_3" ,"blc_a_4" ,"blc_b_5", "blc_b_6" ,"blc_b_7" ,"blc_b_8" 
                         ,"blc_c_9"  ,"blc_c_10" ,"blc_c_11" ,"blc_c_12" ,"blc_d_13" ,"blc_d_14" ,"blc_d_15" ,"blc_d_16" ,"blc_g_17" ,"blc_g_18" ,"blc_g_19" 
                         ,"blc_g_20")]  

# Datensatz nach Versionen aufteilen 

data_A <- data_ABC [, 1:20]
data_B <- data_ABC [, 21:40]
data_C <- data_ABC [, 41:60]



# fehlende Daten ausschließen

summary (is.na (data_A))
data_a <- drop_na (data_A)

summary (is.na (data_B))
data_b <- drop_na (data_B)

summary (is.na (data_C))
data_c <- drop_na (data_C)



# 4.2.2. Raschmodelle

# BLT-A
mod1A <- RM (data_a, se = TRUE)
summary (mod1A) 

plotjointICC (mod1A, legend = FALSE)

pp <- person.parameter(mod1A)

LRtest(mod1A, splitcr = "median", se = FALSE)
LRtest(mod1A, splitcr = "mean", se = FALSE)

plotGOF(LRtest(mod1A), xlim = c(-4, 4) , ylim = c(-4, 5), ctrline = list(gamma = 0.95, col = "red", lty = "dashed") )

IC(pp)


# BLT-B
mod1B <- RM (data_b, se = TRUE)
summary (mod1B)

plotjointICC (mod1B, legend = FALSE)

ppb <- person.parameter(mod1B)

LRtest(mod1B, splitcr = "median", se = FALSE)
LRtest(mod1B, splitcr = "mean", se = FALSE)

plotGOF(LRtest(mod1B), xlim = c(-4, 4) , ylim = c(-4, 5), ctrline = list(gamma = 0.95, col = "red", lty = "dashed") )

IC(ppb)


# BLT-C
mod1C <- RM (data_c, se = TRUE)
summary (mod1C)

plotjointICC (mod1C, legend = FALSE)

ppc <- person.parameter(mod1C)

LRtest(mod1C, splitcr = "median", se = FALSE)
LRtest(mod1C, splitcr = "mean", se = FALSE)

plotGOF(LRtest(mod1C), xlim = c(-6, 6) , ylim = c(-6, 5), ctrline = list(gamma = 0.95, col = "red", lty = "dashed"), type = "p")

IC(ppc)


# 4.2.2.a  Reanalyse des BLT-A ohne Item 11, das extrem schwer geschätzt wurde (brachte in Pilotierung nichts)

# BLT-A

data_a11 <- data_a [, -11]

mod1A11 <- RM (data_a11, se = TRUE)
summary (mod1A11)

plotjointICC (mod1A11, legend = FALSE)

pp11 <- person.parameter(mod1A11)

LRtest(mod1A11, splitcr = "median", se = FALSE)
LRtest(mod1A11, splitcr = "mean", se = FALSE)

plotGOF(LRtest(mod1A11), xlim = c(-4, 4) , ylim = c(-4, 5), ctrline = list(gamma = 0.95, col = "red", lty = "dashed") )

IC(pp11)



# 4.2.3. 2PL-Modelle

#  BLT-A
two_pla<-ltm(data_a~z1)
two_pl_identa <- rasch(data = data_a)
summary (two_pla)

anova(two_pl_identa, two_pla) # Raschmodell ist besser in Pilotierung

plot(two_pla)



# BLT-B
two_plb<-ltm(data_b~z1)
two_pl_identb <- rasch(data = data_b)
summary (two_plb)

anova(two_pl_identb, two_plb) # Raschmodell ist besser in Pilotierung

plot(two_plb)



# BLT-C
two_plc<-ltm(data_c~z1)
two_pl_identc <- rasch(data = data_c)
summary (two_plc)

anova(two_pl_identc, two_plc) # 2-PL-Modell ist besser in Pilotierung 

plot(two_plc)   



# 4.2.4. 3PL-Modelle

# BLT-A
three_pl<-tpm(data_a,type = "rasch", control=list(optimizer="nlminb"))
summary(three_pl)                                           # AIC lohnt sich kaum, BIC ist größer

plot (three_pl)

three_pl<-tpm(data_a,type = "rasch", max.guessing = 0.25, control=list(optimizer="nlminb"))
plot (three_pl)




# BLT-B
three_plb<-tpm(data_b,type = "rasch", control=list(optimizer="nlminb"))
summary(three_plb)                                         

plot (three_plb)

three_plb<-tpm(data_b,type = "rasch", max.guessing = 0.25, control=list(optimizer="nlminb"))
plot (three_plb)


# BLT-C
three_plc<-tpm(data_c,type = "rasch", control=list(optimizer="nlminb"))
summary(three_plc)                                           # AIC lohnt sich kaum, BIC ist größer

plot (three_plc)

three_plc<-tpm(data_c,type = "rasch", max.guessing = 0.25, control=list(optimizer="nlminb"))
plot (three_plc)




# 4.2.5. Grafiken der ICCs speichern

setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Regensburg/Promotion/Arbeitsprozess/Daten_Prozess/Grafiken/Raschmodelle")    # hier werden die Grafiken hingespeichert


# Raschmodelle 
jpeg ( filename = "Rasch_ICC_BLT_A.jpeg" , width = 1500, height = 1000)
plotjointICC (mod1A, legend = FALSE)
dev.off ()

jpeg ( filename = "Rasch_GOP_BLT_A.jpeg" , width = 1500, height = 1000)
plotGOF(LRtest(mod1A), xlim = c(-4, 4) , ylim = c(-4, 5), ctrline = list(gamma = 0.95, col = "red", lty = "dashed") )
dev.off ()


jpeg ( filename = "Rasch_ICC_BLT_B.jpeg" , width = 1500, height = 1000)
plotjointICC (mod1B, legend = FALSE)
dev.off ()

jpeg ( filename = "Rasch_GOP_BLT_B.jpeg" , width = 1500, height = 1000)
plotGOF(LRtest(mod1B), xlim = c(-4, 4) , ylim = c(-4, 5), ctrline = list(gamma = 0.95, col = "red", lty = "dashed") )
dev.off ()

jpeg ( filename = "Rasch_ICC_BLT_C.jpeg" , width = 1500, height = 1000)
plotjointICC (mod1C, legend = FALSE)
dev.off ()

jpeg ( filename = "Rasch_GOP_BLT_C.jpeg" , width = 1500, height = 1000)
plotGOF(LRtest(mod1C), xlim = c(-6, 6) , ylim = c(-6, 5), ctrline = list(gamma = 0.95, col = "red", lty = "dashed"), type = "p")
dev.off ()


# 2PL-Modelle
jpeg ( filename = "2PL_ICC_BLT_A.jpeg" , width = 1500, height = 1000)
plot(two_pla)
dev.off ()

jpeg ( filename = "2PL_ICC_BLT_B.jpeg" , width = 1500, height = 1000)
plot(two_plb)
dev.off ()

jpeg ( filename = "2PL_ICC_BLT_C.jpeg" , width = 1500, height = 1000)
plot(two_plc)
dev.off ()



# 3PL-Modelle 
jpeg ( filename = "3PL_ICC_BLT_A.jpeg" , width = 1500, height = 1000)
plot (three_pl)
dev.off ()

jpeg ( filename = "3PL_ICC_BLT_B.jpeg" , width = 1500, height = 1000)
plot (three_plb)
dev.off ()

jpeg ( filename = "3PL_ICC_BLT_C.jpeg" , width = 1500, height = 1000)
plot (three_plc)
dev.off ()




# 4.2.6. Mix-Rasch-Modelle


set.seed (12345)

# BLT-A
raschmix <- mixRasch(data_a, steps = 1 , max.iter = 50, conv.crit = 0.05, model = "RSM", 
                     n.c = 2, info.fit = TRUE, treat.extreme = 0.3, 
                     maxchange = 1.5, maxrange = c(-4, 4), as.LCA = FALSE)

# BLT-B
raschmixb <- mixRasch(data_b, steps = 1 , max.iter = 50, conv.crit = 0.05, model = "RSM", 
                     n.c = 2, info.fit = TRUE, treat.extreme = 0.3, 
                     maxchange = 1.5, maxrange = c(-4, 4), as.LCA = FALSE)

# BLT-C
raschmixc <- mixRasch(data_c, steps = 1 , max.iter = 50, conv.crit = 0.05, model = "RSM", 
                     n.c = 2, info.fit = TRUE, treat.extreme = 0.3, 
                     maxchange = 1.5, maxrange = c(-4, 4), as.LCA = FALSE)



# 4.2.7. Grafische Darstellung der Schwellenprofile 


setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Regensburg/Promotion/Arbeitsprozess/Daten_Prozess/Grafiken/Raschmodelle")    # hier werden die Grafiken hingespeichert

# BLT-A 
thresholds_a <- data.frame (m = numeric (20) , n = numeric (2))   # Dataframe anlegen

for (i in 1:20) {
c1 <- getItemDetails (raschmix, i, class=1)
c2 <- getItemDetails (raschmix, i, class=2)
thresholds_a [i, 1] <- c1$deltaI
thresholds_a [i, 2] <- c2$deltaI
}                                           # Aus dem Raschmodell-Output für alle Items die Schwellenparameter extrahieren und in Dataframe speichern


jpeg ( filename = "MixRasch_Schwellenprofil_BLT_A.jpeg" , width = 1500, height = 1000)
plot (thresholds_a$m, type = "b", col = "blue", main = "Itemschwellenprofile des Mix-Rasch-Modells: BLT-A", sub = "Farben sind Klassen",  xlab = "Itemnummer", ylab = "Schwellenparamter")
lines (thresholds_a$n, type = "b", col = "red")   
dev.off ()




# BLT-B 
thresholds_b <- data.frame (m = numeric (20) , n = numeric (2))   # Dataframe anlegen

for (i in 1:20) {
  c1 <- getItemDetails (raschmixb, i, class=1)
  c2 <- getItemDetails (raschmixb, i, class=2)
  thresholds_b [i, 1] <- c1$deltaI
  thresholds_b [i, 2] <- c2$deltaI
}


jpeg ( filename = "MixRasch_Schwellenprofil_BLT_B.jpeg" , width = 1500, height = 1000)
plot (thresholds_b$m, type = "b", col = "blue", main = "Itemschwellenprofile des Mix-Rasch-Modells: BLT-B", sub = "Farben sind Klassen",  xlab = "Itemnummer", ylab = "Schwellenparamter")
lines (thresholds_b$n, type = "b", col = "red")   
dev.off ()




# BLT-C 
thresholds_c <- data.frame (m = numeric (20) , n = numeric (2))   # Dataframe anlegen

for (i in 1:20) {
  c1 <- getItemDetails (raschmixc, i, class=1)
  c2 <- getItemDetails (raschmixc, i, class=2)
  thresholds_c [i, 1] <- c1$deltaI
  thresholds_c [i, 2] <- c2$deltaI
}


jpeg ( filename = "MixRasch_Schwellenprofil_BLT_C.jpeg" , width = 1500, height = 1000)
plot (thresholds_c$m, type = "b", col = "blue", main = "Itemschwellenprofile des Mix-Rasch-Modells: BLT-C", sub = "Farben sind Klassen",  xlab = "Itemnummer", ylab = "Schwellenparamter")
lines (thresholds_c$n, type = "b", col = "red")    #funktioniert 
dev.off ()



# 4.2.8. Speicherung der Personenparameter des Raschmodells als neue Variable 

# BLT-A
# pp                #Personenparameter aus dem Raschmodell
pp <- cbind (pp)

ppp <- as.data.frame(pp)
Raschwerte <- ppp$pp$pred.list$`1`$y
Rohwerte <- ppp$pp$pred.list$`1`$x


datenkomplett$ppar_A <- NA   # Variable anlegen 

werte <- cbind (Rohwerte, Raschwerte) # alte Werte und neue Werte zu Tabelle zusammenfügen
werte <- as.data.frame(werte)     # in data.frame umwandeln
dim (werte)[1]                # Dimension feststellen


for (i in 1:dim(werte)[1]) {
  datenkomplett$ppar_A [datenkomplett$bla_score == werte$Rohwerte [i]] <- Raschwerte [i]
}               
# Funktion, um Rohwerten die Raschwerte zuzuordnen und in einer neuen Variable zu speichern


# BLT-B
# ppb                #Personenparameter aus dem Raschmodell
ppb <- cbind (ppb)

pppb <- as.data.frame(ppb)
Raschwerteb <- pppb$pp$pred.list$`1`$y
Rohwerteb <- pppb$pp$pred.list$`1`$x


datenkomplett$ppar_B <- NA   # Variable anlegen 

werteb <- cbind (Rohwerteb, Raschwerteb) # alte Werte und neue Werte zu Tabelle zusammenfügen
werteb <- as.data.frame(werteb)     # in data.frame umwandeln
dim (werteb)[1]                # Dimension feststellen


for (i in 1:dim(werteb)[1]) {
  datenkomplett$ppar_B [datenkomplett$blb_score == werteb$Rohwerteb [i]] <- Raschwerteb [i]
}               
# Funktion, um Rohwerten die Raschwerte zuzuordnen und in einer neuen Variable zu speichern



# BLT-C
# ppc                #Personenparameter aus dem Raschmodell
ppc <- cbind (ppc)

pppc <- as.data.frame(ppc)
Raschwertec <- pppc$pp$pred.list$`1`$y
Rohwertec <- pppc$pp$pred.list$`1`$x

datenkomplett$ppar_C <- NA   # Variable anlegen 

wertec <- cbind (Rohwertec, Raschwertec) # alte Werte und neue Werte zu Tabelle zusammenfügen
wertec <- as.data.frame(wertec)     # in data.frame umwandeln
dim (wertec)[1]                # Dimension feststellen

for (i in 1:dim(wertec)[1]) {
  datenkomplett$ppar_C [datenkomplett$blc_score == wertec$Rohwertec [i]] <- Raschwertec [i]
}               
# Funktion, um Rohwerten die Raschwerte zuzuordnen und in einer neuen Variable zu speichern





# 4.3  Faktorenanalysen 

# 4.3.0 Datenaufbereitung für Faktorenanalysen

# Datensatz mit A/B-Einzelitems herstellen
data_AB <- BLT_ABC [, c("bla_a_1" , "bla_a_2" , "bla_a_3", "bla_a_4" , "bla_b_5" , "bla_b_6" ,"bla_b_7" ,"bla_b_8" , "bla_c_9", "bla_c_10" ,"bla_c_11" ,"bla_c_12",  
                        "bla_d_13" ,"bla_d_14", "bla_d_15" ,"bla_d_16" ,"bla_g_17" ,"bla_g_18" ,"bla_g_19" ,"bla_g_20", "blb_a_1" ,"blb_a_2" ,"blb_a_3", "blb_a_4" 
                        ,"blb_b_5" ,"blb_b_6" ,"blb_b_7" ,"blb_b_8" ,"blb_c_9","blb_c_10" ,"blb_c_11" ,"blb_c_12"  ,"blb_d_13", "blb_d_14" ,"blb_d_15" 
                        ,"blb_d_16", "blb_g_17" ,"blb_g_18" ,"blb_g_19", "blb_g_20")] 

data_AB <- na.omit (data_AB)        # fehlende Daten löschen
summary (is.na (data_AB))           # Kontrolle 

# Stufendatensätze
data_AB_St <- datenkomplett [, c("Stufe_II_A",  "Stufe_II_B",  "Stufe_III_A",  "Stufe_III_B",  "Stufe_IV_A", "Stufe_IV_B", "Stufe_V_A", "Stufe_V_B")]
data_AB_St <- na.omit (data_AB_St)        # fehlende Daten löschen
summary (is.na (data_AB_St)) 


data_AC_St <- datenkomplett [, c("Stufe_II_A",  "Stufe_II_C",  "Stufe_III_A",  "Stufe_III_C",  "Stufe_IV_A", "Stufe_IV_C", "Stufe_V_A", "Stufe_V_C")]
data_AC_St <- na.omit (data_AC_St)        # fehlende Daten löschen
summary (is.na (data_AC_St)) 


data_BC_St <- relvariablen [, c("Stufe_II_B",  "Stufe_II_C",  "Stufe_III_B",  "Stufe_III_C",  "Stufe_IV_B", "Stufe_IV_C", "Stufe_V_B", "Stufe_V_C")]
data_BC_St <- na.omit (data_BC_St)        # fehlende Daten löschen
summary (is.na (data_BC_St)) 

# Abschnittsdatensätze
abschnittAB <- mydata [, c("Abschnitt_A_A", "Abschnitt_B_A" ,"Abschnitt_C_A" ,"Abschnitt_D_A", "Abschnitt_A_B", "Abschnitt_B_B", "Abschnitt_C_B", "Abschnitt_D_B")]


abschnittAC <- regression [, c("Abschnitt_A_A", "Abschnitt_B_A" ,"Abschnitt_C_A" ,"Abschnitt_D_A", "Abschnitt_A_C", "Abschnitt_B_C", "Abschnitt_C_C", "Abschnitt_D_C")]



abschnittBC <- regression [, c("Abschnitt_A_B", "Abschnitt_B_B" ,"Abschnitt_C_B" ,"Abschnitt_D_B", "Abschnitt_A_C", "Abschnitt_B_C", "Abschnitt_C_C", "Abschnitt_D_C")]





# 4.3.1 Über alle einzelnen Items (funktionierte nicht)

# BLT-A und BLT-B

#fa.parallel.poly(data_AB, n.iter = 100, fm = "ml") # sagt wir brauchen 12 Faktoren
fa (data_AB, nfactors = 12, rotate = "Promax" ) #nicht zu interpretieren

# 4 Faktoren
resultfa4 <- fa (data_AB, nfactors = 4, rotate = "Promax" )

resultsfa4w <- resultfa4$weights
resultsfa4w <- as.data.frame(resultsfa4w)

resultsfa4w [order (resultsfa4w$MR1, resultsfa4w$MR4, resultsfa4w$MR3), ]

bsp4[order(bsp4$Geschlecht, bsp4$Einkommen), ]

# alles sehr großer Mist

# 8 Faktoren

resultfa8 <- fa (data_AB, nfactors = 8, rotate = "Promax" )

resultsfa8w <- resultfa8$loadings

setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Regensburg/Promotion/Arbeitsprozess/Daten_Prozess/Daten-final_Arbeitsdateien")
write.csv2 (resultsfa8w , file="FA_pattern8Faktoren.csv", quote=FALSE)


# Idee nicht weiterverfolgt, da es nicht sinnvoll zu interpretieren war 


# 4.3.1. Faktorenanalysen über alle einzelnen Items der jeweiligen Versionen


# BLT-A 
fa.parallel.poly (data_a, n.iter = 100, fm = "ml")  # Parallelanalyse (7 Faktoren in der Pilotierung)
fa (data_a, nfactors = 7, rotate = "Promax", fm = "ml" )
fa (data_a, nfactors = 2, rotate = "Promax", fm = "ml")


# BLT-B 
fa.parallel.poly(data_b, n.iter = 100, fm = "ml")  # Parallelanalyse (4 Faktoren in der Pilotierung)
fa (data_b, nfactors = 4, rotate = "Promax" , fm = "ml")
fa (data_b, nfactors = 2, rotate = "Promax", fm = "ml" )


# BLT-C 
fa.parallel.poly(data_c, n.iter = 100, fm = "ml")  # Parallelanalyse (3 Faktoren in der Pilotierung)
fa (data_c, nfactors = 3, rotate = "Promax", fm = "ml" )




# 4.3.2 Über Stufenscores jeweils zweier Versionen

# Version A und B
fa.parallel (data_AB_St, n.iter = 500, fm = "ml") # schlägt nur einen Faktor vor 
#fa.parallel (data_AB_St, n.iter = 500, fm = "ml", cor = "poly") # funktioniert nicht gut, 7 Faktoren
fa (data_AB_St, nfactors = 1 ) #Stufe V misst etwas anderes
fa (data_AB_St, nfactors = 2 )


# Version A und C
fa.parallel(data_AC_St, n.iter = 500, fm = "ml") # schlägt 2 Faktoren vor 
fa (data_AC_St, nfactors = 2, rotate = "Promax" ) # Stufe IV C und V C messen iwas anderes, 
fa (data_AC_St, nfactors = 1, rotate = "Promax" ) # Stufe IV-C misst etwas anderes


# Version B und C
fa.parallel(data_BC_St, n.iter = 500, fm = "ml") # schlägt 1 Faktor vor 
#fa.parallel(data_BC_St, n.iter = 500, fm = "ml", cor= "poly") # funktioniert nicht gut, 3 Faktoren vorgeschlagen
fa (data_BC_St, nfactors = 3, rotate = "Promax" ) #  ein Faktor für Stufe II-V C, einer für B II-IV, und einer für B V
fa (data_BC_St, nfactors = 1, rotate = "Promax" ) # C IV misst etwas anderes




# 4.3.3 Über die Abschnitte jeweils zweier Versionen

# Abschnitts-FA-Version A/B
fa.parallel(abschnittAB, n.iter = 500, fm = "ml")     # 4 Faktoren vorgeschlagen
#fa.parallel(abschnittAB, n.iter = 500, fm = "ml", cor = "poly") # 7 Faktoren vorgeschlagen

fa (abschnittAB, nfactors = 4, rotate = "Promax",fm = "ml")   # kein konsistentes Muster, eigentlich alle auf 1 Faktor außer: A2, B3, A3 
fa (abschnittAB, nfactors = 1, fm = "ml")  # sieht eigentlich ganz gut aus 
fa (abschnittAB, nfactors = 2, fm = "ml")  # A3 ist verschieden vom Rest 



# Abschnitts-FA-Version A/C
fa.parallel(abschnittAC, n.iter = 500, fm = "ml")     # 3 Faktoren vorgeschlagen
#fa.parallel(abschnittAC, n.iter = 500, fm = "ml", cor = "poly") # 7 Faktoren vorgeschlagen

fa (abschnittAC, nfactors = 3, rotate = "Promax",fm = "ml") # alle auf einen Faktor, außer A2 und A4
fa (abschnittAC, nfactors = 1, fm = "ml") # C lädt schwächer, A lädt konsistent
fa (abschnittAC, nfactors = 2, fm = "ml")  # A und C bilden jeweils einen eigenen Faktor.... nicht so gut....


# Abschnitts-FA-Version B/C 
fa.parallel(abschnittBC, n.iter = 500, fm = "ml") # 4 Faktoren vorgeschlagen 
#fa.parallel(abschnittBC, n.iter = 500, fm = "ml", cor = "poly")   # 6 Faktoren vorgeschlagen

fa (abschnittBC, nfactors = 4, rotate = "Promax",fm = "ml")  # nicht sinnvoll interpretierbar 
fa (abschnittBC, nfactors = 1, rotate = "Promax",fm = "ml")   # C lädt schwächer, B relativ konsistent
fa (abschnittBC, nfactors = 2, rotate = "Promax",fm = "ml")   # jeweils die ersten beiden Abschnitte bilden einen eigenen Faktor 






# 4.4 Regressionsanalysen 

# 4.4.1. Vorhersage der Personenparametern aus den Stufen- und Abschnittsscores

# BLT-A
mod1 <- lm (datenkomplett$ppar_A ~ datenkomplett$Stufe_II_A + datenkomplett$Stufe_III_A + datenkomplett$Stufe_IV_A + datenkomplett$Stufe_V_A + datenkomplett$Abschnitt_A_A + datenkomplett$Abschnitt_B_A + datenkomplett$Abschnitt_C_A + datenkomplett$Abschnitt_D_A) 
summary (mod1)   

# BLT-B
mod2 <- lm (datenkomplett$ppar_B ~ datenkomplett$Stufe_II_B + datenkomplett$Stufe_III_B + datenkomplett$Stufe_IV_B + datenkomplett$Stufe_V_B + datenkomplett$Abschnitt_A_B + datenkomplett$Abschnitt_B_B + datenkomplett$Abschnitt_C_B) 
summary (mod2) 

# BLT-C
mod3 <- lm (datenkomplett$ppar_C ~ datenkomplett$Stufe_II_C + datenkomplett$Stufe_III_C + datenkomplett$Stufe_IV_C + datenkomplett$Stufe_V_C + datenkomplett$Abschnitt_A_C + datenkomplett$Abschnitt_B_C + datenkomplett$Abschnitt_C_C) 
summary (mod3)



# 4.4.2. Vorhersage der Summenscores von VSL, SLS und FLVT aus den Stufen- und Abschnittsscores 

# VSL aus BLT-A vorhersagen
mod4 <- lm (datenkomplett$vsl_score ~ datenkomplett$Stufe_II_A + datenkomplett$Stufe_III_A + datenkomplett$Stufe_IV_A + datenkomplett$Stufe_V_A + datenkomplett$Abschnitt_A_A + datenkomplett$Abschnitt_B_A + datenkomplett$Abschnitt_C_A + datenkomplett$Abschnitt_D_A )
summary (mod4) 

# VSL aus BLT-B vorhersagen
mod5 <- lm (datenkomplett$vsl_score ~ datenkomplett$Stufe_II_B+ datenkomplett$Stufe_III_B+ datenkomplett$Stufe_IV_B+ datenkomplett$Stufe_V_B+ datenkomplett$Abschnitt_A_B+ datenkomplett$Abschnitt_B_B+ datenkomplett$Abschnitt_C_B+ datenkomplett$Abschnitt_D_B)
summary (mod5)

# FLVT aus BLT-B vorhersagen
mod6 <- lm (datenkomplett$flvt_score ~ datenkomplett$Stufe_II_B+ datenkomplett$Stufe_III_B+ datenkomplett$Stufe_IV_B+ datenkomplett$Stufe_V_B+ datenkomplett$Abschnitt_A_B+ datenkomplett$Abschnitt_B_B+ datenkomplett$Abschnitt_C_B+ datenkomplett$Abschnitt_D_B)
summary (mod6)

# FLVT aus BLT-C vorhersagen
mod7 <- lm (datenkomplett$flvt_score ~ datenkomplett$Stufe_II_C+ datenkomplett$Stufe_III_C+ datenkomplett$Stufe_IV_C+ datenkomplett$Stufe_V_C+ datenkomplett$Abschnitt_A_C+ datenkomplett$Abschnitt_B_C+ datenkomplett$Abschnitt_C_C+ datenkomplett$Abschnitt_D_C)
summary (mod7)

# SLS aus BLT-A vorhersagen 
mod8 <- lm (datenkomplett$sls_score ~ datenkomplett$Stufe_II_A + datenkomplett$Stufe_III_A + datenkomplett$Stufe_IV_A + datenkomplett$Stufe_V_A + datenkomplett$Abschnitt_A_A + datenkomplett$Abschnitt_B_A + datenkomplett$Abschnitt_C_A + datenkomplett$Abschnitt_D_A )
summary (mod8)

# SLS aus BLT-B vorhersagen
mod9 <- lm (datenkomplett$sls_score ~ datenkomplett$Stufe_II_B+ datenkomplett$Stufe_III_B+ datenkomplett$Stufe_IV_B+ datenkomplett$Stufe_V_B+ datenkomplett$Abschnitt_A_B+ datenkomplett$Abschnitt_B_B+ datenkomplett$Abschnitt_C_B+ datenkomplett$Abschnitt_D_B)
summary (mod9)

# SLS aus BLT-C vorhersagen
mod10 <- lm (datenkomplett$sls_score ~ datenkomplett$Stufe_II_C+ datenkomplett$Stufe_III_C+ datenkomplett$Stufe_IV_C+ datenkomplett$Stufe_V_C+ datenkomplett$Abschnitt_A_C+ datenkomplett$Abschnitt_B_C+ datenkomplett$Abschnitt_C_C+ datenkomplett$Abschnitt_D_C)
summary (mod10)





# 4.5. Korrelationen mit anderen Lesetests (SLS, VSL, FLVT)

# relevante Variablen auswählen
mydata <- datenkomplett [, (grep.multi(datenkomplett, c("Stufe", "Abschnitt", "score", "ppar", "s_term")))]



# 4.5.1. Korrelationen von Summenscores, Stufenscores, Abschnittsscores, Personenparameter mit anderen Lesetests

# Korrelationstabelle erstellen und abspeichern
korrelationen <- cor (mydata, use = "pairwise.complete.obs")

setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Regensburg/Promotion/Arbeitsprozess/Daten_Prozess/Daten-final_Arbeitsdateien/Tabellen")
write.csv2 (korrelationen, file="Korrelationen.csv", quote=FALSE)


# 4.5.2. Korrelationen von Summenscores, Stufenscores, Abschnittsscores, Personenparameter mit anderen Lesetests, nach Klassenstufe getrennt 
classcor <- by(mydata, mydata$s_term, cor, use = "pairwise.complete.obs")

df = do.call(rbind, classcor)
write.xlsx(df, "Korrelationen.getrenntnachKlassenstufe.xlsx", sheetName="data", row.names=T)




# 4.5.3. Korrelationen von Summenscores mit anderen Lesetests, innerhalb der Klassen 


# Klassenweise, Korrleationen von bla_score und vsl_score berechnen

# Variablen auswählen, nötige Variablen erstellen
datenkomplett$class <- NA
datenkomplett$class <- (substr (datenkomplett$s_code, 3,4)) # Die Klasse in eigenem Objekt speichern

data <- datenkomplett [, c("class", "bla_score", "vsl_score")]
data <- na.omit (data)

data$class <- as.factor(data$class)   # ist wichtig, sonst rechnet er so viele leere Fälle
data$class <- as.numeric (data$class)


# Berechnung
for (i in 1: max(data$class)) {
  group <- data[data$class== i,]
  k <- cor (group$bla_score, group$vsl_score, use = "pairwise.complete.obs")
  print (k)
}



# und jetzt Korrelationen der Klassenmittelwerte
t.i <- data.frame (bla_score = numeric (4), vsl_score = numeric (4))  # Dataframe anlegen

for (i in 1: max(data$class)) {
  group <- data[data$class== i,]           # Gruppierte Daten erstellen
  m <- mean (group$bla_score)             # Gruppenmittelwerte erstellen
  n <- mean (group$vsl_score)
  t.i [i, 1] <- m                       # diese in ein Dataframe speichern
  t.i [i, 2] <- n
  print (t.i)
  print (cor (t.i))                  # die Korrelationen der Mittelwerte ausrechnen
}



# Klassenweise, Korrleationen von blb_score und vsl_score berechnen 

# Variablen auswählen, nötige Variablen erstellen
data <- datenkomplett [, c("class", "blb_score", "vsl_score")]
data <- na.omit (data)

data$class <- as.factor(data$class)
data$class <- as.numeric (data$class)

# Berechnung 
for (i in 1: max(data$class)) {
  group <- data[data$class== i,]
  k <- cor (group)
  print (k)
}


# und jetzt Korrelationen der Klassenmittelwerte
t.i <- data.frame (blb_score = numeric (2), vsl_score = numeric (2))  # Dataframe anlegen

for (i in 1: max(data$class)) {
  group <- data[data$class== i,]           # Gruppierte Daten erstellen
  m <- mean (group$blb_score)             # Gruppenmittelwerte erstellen
  n <- mean (group$vsl_score)
  t.i [i, 1] <- m                       # diese in ein Dataframe speichern
  t.i [i, 2] <- n
  print (t.i)
  print (cor (t.i))                  # die Korrelationen der Mittelwerte ausrechnen
}

# da kommt iwie auch Bullshit raus... ,aber immerhin stimmen die Korrelationen innerhalb der Klassen einigermaßen




# 4.6. Itemanalysen

# 4.6.1. Trennschärfen (Code von Hannes)

#benötigte Objekte
datensatz <- datenkomplett     # Umbenennung, um existierenden Code nutzen zu können
datnew<-data.frame() 

# BLT-A 
array_vars <- c(grep.multi(data_a, "bla"))  # Erstellung eines Vektors, der alle Variablennamen enthält

datensatz$pbis<-NULL
for(j in 1:(length(array_vars))){
  for(i in 1:length(datensatz[,array_vars[j]]) ){
    datensatz[i,"pbis"]<- sum( datensatz[i,array_vars], na.rm =F )
  }
datensatz$pbisj<-datensatz[,"pbis"]-datensatz[,array_vars[j]]
cortmp<-cor.test(datensatz[,array_vars[j]], datensatz[,"pbisj"], method="pearson")
#Trennschärfe (Part-Whole-korrgiert)
datensatz$pbisj<-datensatz[,"pbis"]-datensatz[,array_vars[j]]
cortmp<-cor.test(datensatz[,array_vars[j]], datensatz[,"pbisj"], method="pearson")
datnew[j,"vtrennsch"]<-round(cortmp$estimate, 2)
datnew[j,"vtrennsch.sign"]<-round(cortmp$p.value, 4)
}

datnew
setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Regensburg/Promotion/Arbeitsprozess/Daten_Prozess/Daten-final_Arbeitsdateien/Tabellen")
write.csv2(datnew, file="Trennschärfen_BLT-A.csv")



# BLT-B
array_vars <- c(grep.multi(data_b, "blb"))  # Erstellung eines Vektors, der alle Variablennamen enthält

datensatz$pbis<-NULL
for(j in 1:(length(array_vars))){
  for(i in 1:length(datensatz[,array_vars[j]]) ){
    datensatz[i,"pbis"]<- sum( datensatz[i,array_vars], na.rm =F )
  }
  datensatz$pbisj<-datensatz[,"pbis"]-datensatz[,array_vars[j]]
  cortmp<-cor.test(datensatz[,array_vars[j]], datensatz[,"pbisj"], method="pearson")
  #Trennschärfe (Part-Whole-korrgiert)
  datensatz$pbisj<-datensatz[,"pbis"]-datensatz[,array_vars[j]]
  cortmp<-cor.test(datensatz[,array_vars[j]], datensatz[,"pbisj"], method="pearson")
  datnew[j,"vtrennsch"]<-round(cortmp$estimate, 2)
  datnew[j,"vtrennsch.sign"]<-round(cortmp$p.value, 4)
}

datnew
setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Regensburg/Promotion/Arbeitsprozess/Daten_Prozess/Daten-final_Arbeitsdateien/Tabellen")
write.csv2(datnew, file="Trennschärfen_BLT-B.csv")



# BLT-C
array_vars <- c(grep.multi(data_c, "blc"))  # Erstellung eines Vektors, der alle Variablennamen enthält

datensatz$pbis<-NULL
for(j in 1:(length(array_vars))){
  for(i in 1:length(datensatz[,array_vars[j]]) ){
    datensatz[i,"pbis"]<- sum( datensatz[i,array_vars], na.rm =F )
  }
  datensatz$pbisj<-datensatz[,"pbis"]-datensatz[,array_vars[j]]
  cortmp<-cor.test(datensatz[,array_vars[j]], datensatz[,"pbisj"], method="pearson")
  #Trennschärfe (Part-Whole-korrgiert)
  datensatz$pbisj<-datensatz[,"pbis"]-datensatz[,array_vars[j]]
  cortmp<-cor.test(datensatz[,array_vars[j]], datensatz[,"pbisj"], method="pearson")
  datnew[j,"vtrennsch"]<-round(cortmp$estimate, 2)
  datnew[j,"vtrennsch.sign"]<-round(cortmp$p.value, 4)
}

datnew
setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Regensburg/Promotion/Arbeitsprozess/Daten_Prozess/Daten-final_Arbeitsdateien/Tabellen")
write.csv2(datnew, file="Trennschärfen_BLT-C.csv")



# 4.6.2. McDonald's Omega 


#benötigte Objekte 
#data_a    # nur die ausgewerteten Items von BLT-A 
#data_b
#data_c

# BLT-A 
omega(data_a ,nfactors=1,fm="ml",n.iter=1,p=.05,poly=T,
      flip=TRUE,digits=2, title="Omega",sl=TRUE,labels=NULL,
      rotate="oblimin",Phi=NULL,option="equal",covar=FALSE)

# BLT-B 
omega(data_b ,nfactors=1,fm="ml",n.iter=1,p=.05,poly=T,
      flip=TRUE,digits=2, title="Omega",sl=TRUE,labels=NULL,
      rotate="oblimin",Phi=NULL,option="equal",covar=FALSE)

# BLT-C
omega(data_c ,nfactors=1,fm="ml",n.iter=1,p=.05,poly=T,
      flip=TRUE,digits=2, title="Omega",sl=TRUE,labels=NULL,
      rotate="oblimin",Phi=NULL,option="equal",covar=FALSE)



#____________________________________________________________________________________________________________________________________________________________________________________
######################################################################################################################################################################################
#____________________________________________________________________________________________________________________________________________________________________________________


# 5. Normierung (Code von Hannes) erstmal ohne die Berücksichtigung nach Klassenstufen, die müsste man mit ner apply, oder schleife noch einfügen


# nicht nach Geschlechtern getrennt 

# BLT-A 
datensatz <- datenkomplett [, c("bla_score", "s_code")]
datensatz <- na.omit (datensatz)
datensatz <- as.data.frame(datensatz)

mode (datensatz)


var1<-"bla_score"#Input: Rohwerte in Datensatz
var2<-"T_bla_score" #Output: Name der neuen Variable für T-wert o.a.
flaechentransformation<-T # bei nicht normalverteilten Daten

#ggf. filtern, z.B. nach Geschlecht
#x_fb0_gender
#datensatz<-subset(datensatz, x_fb0_gender==1 & jgst==5 )
#datensatz<-subset(datensatz, x_fb0_gender==1 )

#automatisch
#Prozentraenge wenn nicht-normalverteilt
percent.ranks<- function(x){round( (rank(x, ties.method = "average", na.last = T)/length(x)*100),2 )} #habe ties.method = M, auf = average geändert, Liesel 23.8.
if (flaechentransformation = T){
  datensatz$dpr<-percent.ranks(datensatz[, var1])
}else{
  datensatz$dpr<-datensatz[, var1]
}



#z-Wert berechnen 
datensatz$z <- (datensatz$dpr - mean(datensatz$dpr, na.rm=T)) / sd(datensatz$dpr, na.rm=T)

#T-Wert berechnen
datensatz$Tvalue<-50+10*datensatz$z

#Rohwerte und T-Werte zuordnen
nfactors<-levels(factor(datensatz$Tvalue))
dnorm<-data.frame()
dnorm[i,var1]<-NULL
for(i in 1:length(nfactors) ){
  print( nfactors[i] )
  #Rohwert
  dnorm[i,var1]<-round ( mean( datensatz[ datensatz[, "Tvalue"]==nfactors[i], var1 ], na.rm = T ),1 )
  #T-Wert neu
  dnorm[i,var2]<-round( as.double(nfactors[i]), 2)
}

#Kontrolle
print( paste0("M: ", mean(datensatz$Tvalue, na.rm = T) ))
print( paste0("SD: ", sd(datensatz$Tvalue, na.rm = T) ))
print( "Roh- und T-Werte: ") 
dnorm

write.csv2(dnorm, paste0("T-Werte-",var2,".csv"))



hist (datensatz$Tvalue)   # da stimmt iwas nicht, die Verteilung ist total zerschossen
hist (datensatz$dpr) 


#liesel
# BLT-A
datensatz$pr <- percent.ranks(datensatz$bla_score)


# Umrechnungstabelle erstellen
prnorma <- data.frame (raw = numeric (19), prwert = numeric (19))
prnorma [, 1] <- c (0:18)


for (i in 0:18) {
  d <- datensatz [(datensatz$bla_score == i) ,]
  prnorma [i+1 , 2] <- max (d$pr)
}

prnorma



# BLT-B
datensatz <- datenkomplett [, c("blb_score", "s_code")]
datensatz <- na.omit (datensatz)
datensatz <- as.data.frame(datensatz)

datensatz$pr <- percent.ranks(datensatz$blb_score)
a <- max (datensatz$blb_score)

# Umrechnungstabelle erstellen
prnormb <- data.frame (raw = numeric (a+1), prwert = numeric (a+1))
prnormb [, 1] <- c (0:(a))


for (i in 0:a) {
  d <- datensatz [(datensatz$blb_score == i) ,]
  prnormb [i+1 , 2] <- max (d$pr)
}

prnormb 



# BLT-C
datensatz <- datenkomplett [, c("blc_score", "s_code")]
datensatz <- na.omit (datensatz)
datensatz <- as.data.frame(datensatz)

datensatz$pr <- percent.ranks(datensatz$blc_score)
a <- max (datensatz$blc_score)

# Umrechnungstabelle erstellen
prnormc <- data.frame (raw = numeric (a+1), prwert = numeric (a+1))
prnormc [, 1] <- c (0:(a))


for (i in 0:a) {
  d <- datensatz [(datensatz$blc_score == i) ,]
  prnormc [i+1 , 2] <- max (d$pr)
}

prnormc 


# Normtabellen speichern
setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Regensburg/Promotion/Arbeitsprozess/Daten_Prozess/Daten-final_Arbeitsdateien/Tabellen")

write.csv2(prnorm, file= "BLT-A_Prozentnormen.csv")
write.csv2(prnormb, file= "BLT-B_Prozentnormen.csv")
write.csv2(prnormc, file= "BLT-C_Prozentnormen.csv")




