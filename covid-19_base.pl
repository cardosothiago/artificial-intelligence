infPatient(glaucoLindo, 24, 90, 16, 110, 98, 0, 24, 0).
infPatient(jairson, 36, 90, 16, 110, 97, 0, 24, 0).
infPatient(jubilou, 40, 111, 28, 113, 98, 1, 63, 1).
infPatient(jubilino, 24, 90, 16, 110, 95, 1, 24, 1).
infPatient(jabulinare, 41, 127, 32, 87, 94, 1, 24, 2).
  
ligh_case_covid :-
    infPatient(N, T, Bpm, Pa, Pas, Sa, Dis, Age, Com),
               
    T =< 37,
    T >= 35,
    Bpm < 100,
    Pa < 18,
    Pas > 100,
    Sa >= 95,
    Dis =:= 0,
    Age < 60,
    Com < 1,
    
    write('Light case: You must stay at home, under observation for 14 days!'),
    format('\n name: ~w \t temperature: ~d \t bpm: ~d \t pa: ~d \t pas: ~d \t sa: ~d \t dispine: ~w \t age: ~d \t comorbidities: ~d',[N, T, Bpm, Pa, Pas, Sa, Dis, Age, Com]),
    nl.

average_case_covid :-
    infPatient(N, T, Bpm, Pa, Pas, Sa, Dis, Age, Com),
               
    (T < 35; T >=37, T =<39),
    Bpm > 100,
    Pa > 19, 
    Pa =< 30,
    Age >= 60,
    Age =< 79,
    Com =:= 1,
    
    write('Light case: You must stay at home, under observation for 14 days'),
    format('\n name: ~w \t temperature: ~d \t bpm: ~d \t pa: ~d \t pas: ~d \t sa: ~d \t dispine: ~w \t age: ~d \t comorbidities: ~d',[N, T, Bpm, Pa, Pas, Sa, Dis, Age, Com]),
    nl.

serious_cases_covid :-
    infPatient(N, T, Bpm, Pa, Pas, Sa, Dis, Age, Com),
               
	T >= 39,
    Pas >= 90,
    Pas =< 100,
    Age > 80,
    Com >= 2,

    write('Serious case: Should be urgently referred to the hospital'),
    format('\n name: ~w \t temperature: ~d \t bpm: ~d \t pa: ~d \t pas: ~d \t sa: ~d \t dispine: ~w \t age: ~d \t comorbidities: ~d',[N, T, Bpm, Pa, Pas, Sa, Dis, Age, Com]),
    nl.

very_serious_case_covid :-
    infPatient(N, T, Bpm, Pa, Pas, Sa, Dis, Age, Com),
               
    Pa > 30,
    Pas < 90,
    Sa < 95,
    Dis =:= 1,

    write('Serious case: Should be urgently referred to the hospital'),
    format('\n name: ~w \t temperature: ~d \t bpm: ~d \t pa: ~d \t pas: ~d \t sa: ~d \t dispine: ~w \t age: ~d \t comorbidities: ~d',[N, T, Bpm, Pa, Pas, Sa, Dis, Age, Com]),
    nl.
