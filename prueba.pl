padrede('juan','maria').
padrede('pablo','juan').
padrede('pablo','marcela').
padrede('carlos','debora').
padrede('claudia', 'maria').
padrede('maria','kika').

hijode(A,B) :- padrede(B,A).

abuelode(A,B) :- padrede(A,C), padrede(C,B).

hermanode(A,B) :- padrede(C,A), padrede(C,B), A \== B.

familiarde(A,B) :- padrede(A,B).
familiarde(A,B) :- abuelode(A,B).
familiarde(A,B) :- hermanode(A,B).

tiode(A,B) :- hermanode(A,C), padrede(C,B).

casadocon(A,B) :- padrede(A,C), padrede(B,C).

feliz(A) :- casadocon(A, _).

bisabuelode(A,B) :- padrede(C,B), abuelode(A,C).

bisnieto(A,B) :- padrede(B,C), abuelode(C,A).

cuñadode(A,B) :- casadocon(A,C), hermanode(B,C).








