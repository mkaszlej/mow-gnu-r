cat party_affiliations.txt  |  sed s/s/t/ | tr t n  | sed /[0-9]/d | sort | uniq -c | sort -rgb > licznosc_party_affiliations
