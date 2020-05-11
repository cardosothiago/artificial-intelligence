from pyswip import Prolog

prolog = Prolog()
prolog.consult("covid-19_base.pl")

print(list(prolog.query("very_serious_case_covid.")))