



// COME SCARICARE GLI AGGIORNAMENTI DAL REPOSITORY UFFICIALE SQLKATA
// ASSICURARSI CHE LA "NEW GIT USER EXPERIENCE" SIA DISATTIVATA NELLE PREVIEW OPTIONS

1)
Andare in Git Changes, 3 puntini, Fetch From, Upstream

2) 
Andare in Git Changes, 3 puntini, Pull From, Upstream


// SE NON COMPARE UPSTREM
Aggiungere la voce upstream come segue:

Andare in Git Changes, 3 puntini, Manager Remotes

Selezionare Add:
Name: Upstream
Fetch: https://github.com/sqlkata/querybuilder








// VECCHIA VERSIONE
1)
Team Explorer, Sync, cliccare su "Branch: master"

2)
Click destro su remotes, upstream, master (repository ufficiale su github)

3)
Selezionare fetch (sembra non succedere niente)

4) 
Andare su Branches, Merge
Selezionare in "Merge from branch": upstream/master

5)
Togliere la spunta da Commit changes per poter controllare cosa succede

6)
Premere il bottone Merge

7)
Risolvere eventuali conflitti
