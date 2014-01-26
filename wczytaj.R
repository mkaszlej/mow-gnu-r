#
# Dane o glosowaniach pos?w w VI kadencji sejmu
# zebrane przez January Weiner
# na podstawie systemu orka.sejm.gov.pl
#

glosowania = read.table("http://tofesi.mimuw.edu.pl/~cogito/smarterpoland/GlosowaniaPoslow/glosowania.txt", sep="\t", header=T, row.names=1, nrows=10000) 
#head(glosowania[,1:10])

#                    X29021 X29023 X29024 X29025 X29026 X29027 X29028 X29029 X29030 X29031
#Abramowicz Adam          1     -1      1     -1      1      1      1      1      1     -1
#Adamczyk Andrzej         1     -1      1     -1      1      1      1      1      1     -1
#Ajchler Romuald          1      1      1      1      1      1      1     -1      1      1
#Aleksandrzak Leszek      1      1      1      1      1      1      1     -1      1      1
#Andzel Waldemar          1     -1      1     -1      1      1      1      1      1     -1
#Arent Iwona              1     -1      1     -1      1      1      1      1      1     -1
 

glosowaniaPartie = read.table("http://tofesi.mimuw.edu.pl/~cogito/smarterpoland/GlosowaniaPoslow/party_affiliations.txt", sep="\t", header=T, row.names=1) 
#head(glosowaniaPartie[,1:10])

#                    X29021 X29125 X29225 X29327 X29447 X29547 X29650 X29754 X29856 X29957
#Abramowicz Adam        PiS    PiS    PiS    PiS    PiS    PiS    PiS    PiS    PiS    PiS
#Adamczyk Andrzej       PiS    PiS    PiS    PiS    PiS    PiS    PiS    PiS    PiS    PiS
#Ajchler Romuald        LiD    LiD    LiD    LiD    LiD Lewica Lewica Lewica Lewica Lewica
#Aleksandrzak Leszek    LiD    LiD    LiD    LiD    LiD Lewica Lewica Lewica Lewica Lewica
#Andzel Waldemar        PiS    PiS    PiS    PiS    PiS    PiS    PiS    PiS    PiS    PiS
#Arent Iwona            PiS    PiS    PiS    PiS    PiS    PiS    PiS    PiS    PiS    PiS


glosowaniaMeta = read.table("http://tofesi.mimuw.edu.pl/~cogito/smarterpoland/GlosowaniaPoslow/glosowania_metadata.txt", sep="\t", header=T, row.names=-1) 
dim(glosowaniaMeta)
head(glosowaniaMeta)

#          ID posiedzenie glosowanie      dzien godzina                                                                                              nazwa1
#X29021 29021           1          2 05-11-2007   19:20                           1. posiedzenie Sejmu Rzeczypospolitej Polskiej w dniu 5 listopada 2007 r.
#X29023 29023           1          3 06-11-2007   14:15 Pkt 2. porz. dzien. Poselskie projekty uchwał w sprawie ustalenia liczby wicemarszałków Sejmu RP
#X29024 29024           1          4 06-11-2007   15:13                                                Pkt 3. porz. dzien. Wybór Wicemarszałków Sejmu RP
#X29025 29025           1          5 06-11-2007   15:15                                                Pkt 3. porz. dzien. Wybór Wicemarszałków Sejmu RP
#X29026 29026           1          6 06-11-2007   15:16                                                Pkt 3. porz. dzien. Wybór Wicemarszałków Sejmu RP
#X29027 29027           1          7 06-11-2007   15:17                                                Pkt 3. porz. dzien. Wybór Wicemarszałków Sejmu RP
#                                                                                                                                                                                                                                                                                 nazwa2
#X29021 Głosowanie nad przyjęciem propozycji pana posła Kuchcińskiego, aby niezwłocznie przejść do głosowania w kwestiach wyboru wicemarszałków, co by oznaczało, że nie zostanie na jutro na godz. 14 zwołane posiedzenie Sejmu, tylko odbędzie się ono w innym terminie
#X29023                                                                                         Głosowanie nad przyjęciem w całości projektu uchwały w sprawie ustalenia liczby wicemarszałków Sejmu Rzeczypospolitej Polskiej, w brzmieniu przedłożenia zawartego w druku nr 1
#X29024                                                                                                                                                                                  Głosowanie nad wyborem pana posła Jarosława Kalinowskiego na stanowisko wicemarszałka Sejmu
#X29025                                                                                                                                                                                  Głosowanie nad wyborem pana posła Stefana Niesiołowskiego na stanowisko wicemarszałka Sejmu
#X29026                                                                                                                                                                                          Głosowanie nad wyborem pana posła Krzysztofa Putry na stanowisko wicemarszałka Sejmu
#X29027                                                                                                                                                                                  Głosowanie nad wyborem pana posła Jerzego Szmajdzińskiego na stanowisko wicemarszałka Sejmu
#       przeciw  za wstrzym na           disc       date                                                       link
#X29021     235 211       1 73         PiS,PO 2007-11-05 http://orka.sejm.gov.pl/SQL.nsf/glosowania?OpenAgent&6&1&2
#X29023     160 288       0 72     LiD,PiS,PO 2007-11-06 http://orka.sejm.gov.pl/SQL.nsf/glosowania?OpenAgent&6&1&3
#X29024       1 453       0 66 LiD,PiS,PO,PSL 2007-11-06 http://orka.sejm.gov.pl/SQL.nsf/glosowania?OpenAgent&6&1&4
#X29025     158 292       4 66 LiD,PiS,PO,PSL 2007-11-06 http://orka.sejm.gov.pl/SQL.nsf/glosowania?OpenAgent&6&1&5
#X29026       9 408      36 67        PiS,PSL 2007-11-06 http://orka.sejm.gov.pl/SQL.nsf/glosowania?OpenAgent&6&1&6
#X29027       6 427      16 71     LiD,PO,PSL 2007-11-06 http://orka.sejm.gov.pl/SQL.nsf/glosowania?OpenAgent&6&1&7


poslowieMeta = read.table("http://tofesi.mimuw.edu.pl/~cogito/smarterpoland/GlosowaniaPoslow/poslowie_metadata.txt", sep="\t", header=T, row.names=1) 
dim(poslowieMeta)
head(poslowieMeta)

#                    last absences last.vote first.vote votings.absences votings.n
#Abramowicz Adam      PiS      784    X37493     X29021              784      8402
#Adamczyk Andrzej     PiS      296    X37493     X29021              296      8402
#Ajchler Romuald      SLD     1383    X37493     X29021             1383      8402
#Aleksandrzak Leszek  SLD     1318    X37483     X29021             1308      8392
#Andzel Waldemar      PiS      140    X37493     X29021              140      8402
#Arent Iwona          PiS      656    X37493     X29021              656      8402


