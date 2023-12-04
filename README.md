# PROJEKT PBD

## Zespół 8

Tomasz Żmuda, Konrad Konsek, Jakub Cieszewski


## 1. FUNKCJE REALIZOWANE PRZEZ SYSTEM

1. Użytkownik bez konta Użytkownik bez konta

- Zarejestrowanie konta

2. Użytkownik z kontem

- Zarządzanie koszykiem (dodaj produkt, usuń produkt, zapłać)

- Zapis na kurs/webinar/studia/praktyki

- Zalogowanie do systemu

- Podgląd dostępnych kursów/webinarów/studiów/praktyk

- Dostęp do historii swoich kursów 

- Dostęp do harmonogramu

3. Wykładowca

- Zarządzanie listą uczestników w poszczególnych kursach

- Dostęp do informacji o kursach

- Dostęp do harmonogramu (dodawanie, usuwanie, edycja)

- Możliwość generowania raportów o nadchodzących wydarzeniach i raportów obecności na poszczególnych szkoleniach

4. Dyrektor


- Zarządzanie opłatami użytkowników (dodaj rabat, pokaż długi użytkowników, wyświetl raporty finansowe)

- Zarządzanie pracownikami (dodaj, usuń, edytuj, przypisz do kursu)

- Zarządzanie kursami (dodaj, usuń, edytuj)

- Zarządzanie praktykami (dodaj, usuń, edytuj, przypisz do studiów)

5. Pani z dziekanatu

 - Dostęp do harmonogramu (dodawanie, usuwanie, edycja)

- Zarządzanie opłatami użytkowników (dodaj rabat, pokaż długi użytkowników, wyświetl raporty finansowe)

- Zarządzanie kursami (dodaj, usuń, edytuj)

- Zarządzanie praktykami (dodaj, usuń, edytuj, przypisz do studiów)

## 2. Diagram bazy danych


![](https://lh7-us.googleusercontent.com/QXKYiY50SS05bOi9T1xwafjHlmyHvvRilKaoMwR6n9ifz-eqUcvikDHZBe6TQvOXYte3xlk9r2lBJN96lNFoebdg5s6JG_wu5thFXmnc7acLHlngO-avIxOTN6kOWf-QCn3uERU7fEjpVacjOjIw8YE)

## 3. Opis tabel

1. Tabela “students”

Ogólne informacje o studentach: imię, nazwisko, adres, numer telefonu, adres mailowy oraz hasło do konta.

- student_id - numer id studenta (PK)

- name - imię studenta

- second name - drugie imię studenta

- surname - nazwisko studenta

- birth_date - data urodzenia studenta

- country - kraj zamieszkania studenta

- city - miasto zamieszkania studenta

- adress - adres zamieszkania studenta: ulica i numer mieszkania

- postal_code - kod pocztowy studenta

- phone - numer telefonu studenta

- email - adres email studenta

- password - hasło studenta


  

2. Tabela “employees”

Ogólne informacje o pracownikach: imię, nazwisko, tytuł, rola w firmie, numer telefonu, adres mailowy oraz hasło do konta.

- employee_id - numer id pracownika (PK)

- role - rola w firmie pracownika

- name - imię pracownika
   
- second_name - drugie imię pracownika
   
- surname - nazwisko pracownika
   
- birth_date - data urodzenia pracownika
   
- country - kraj zamieszkania pracownika
   
- city - miasto zamieszkania pracownika
   
- adress - adres pracownika: ulica i numer miezkania
   
- postal_code - kod pocztowy pracownika
   
- phone - numer telefonu pracownika
   
- email - adres email pracownika
   
- password - hasło pracownika
   
- title_of_courtesy - tytuł pracownika
   
- hire_date - data zatrudnienia pracownika
   

  

3. Tabela “products”

Informacje o dostępnych produktach (webinary, kursy, studia). 
Typ produktu, nazwa produktu, data rozpoczęcia i zakończenia, cena, zaliczka, opiekun, język prowadzenia, limit miejsc.

- product_id - numer id produktu (PK)
   
- product_name - nazwa produktu
   
- start_date - data rozpoczęcia dla produktu
   
- end_date - data zakończenia dla produktu
   
- type - typ produktu: webinar, kurs lub studia
   
- price - cena produktu
   
- initial_fee - zaliczka
   
- supervisor_id - numer id opiekuna produktu (FK)
   
- language - język w którym produkt jest prowadzony
   
- students_limit - limit studentów na kursie, o ile istnieje


  

4. Tabela “modules”

Informację o modułach: nazwa, typ(kurs, webinar, studium), sala lekcyjna, id prowadzącego moduł, id ewentualnego tłumacza, limit miejsc, cena dla osób spoza kursu, data rozpoczęcia i zakończenia.
Jako moduł traktowana jest każda jednostka taka jak wykład, ćwiczenia, dzień kursu, webinar.

- module_id - numer id modułu (PK)
   
- module_name - nazwa modułu
   
- type - typ prowadzenia modułu: online, stacjonarnie etc.
   
- start_date - data rozpoczęcia modułu
   
- end_date - data zakończenia modułu
   
- classroom - numer klasy lub link do spotkania online
   
- lecturer_id - numer id prowadzącego (FK)
   
- translator_id - numer id tłumacza, o ile taki jest (FK)
   
- students_limit - limit studentów na module, o ile istnieje
   
- single_buy_price - cena zakupu pojedynczego modułu 

  

5. Tabela “products_modules”

Tabela służąca do przyporządkowania modułów do studiów.

- module_id - numer id modułu (FK)

- product_id - numer id produktu (FK)


  

6. Tabela “courses”

Informacja o typie kursu – stacjonarny/online synchroniczny/online asynchroniczny/hybrydowy.

- course_id - numer kursu (PK)

- type - typ prowadzenia kursu


  

7. Tabela “webinars”

Zawiera linki do webinarów.

- webinar_id - numer id webinaru (PK)

- link - link do pokoju online w którym odbędzie się webinar


  

8. Tabela “studies”

Zawiera linki do sylabusa studiów.

- studies_id - numer id studiów (PK)

- syllabus_link - link do syllabus’u studiów


  

9. Tabela “apprenticeships”

Informację o praktykach: nazwa, data rozpoczęcia i zakończenia

- apprenticeship_id - numer id praktyk (PK)
   
- apprenticeship_name - nazwa praktyk
   
- start_date - data rozpoczęcia praktyk
   
- end_date - data zakończenia praktyk

  

10. Tabela “studies_apprenticeships”

Tabela służąca do przyporządkowania praktyk do studiów

- apprenticeship_id - numer id praktyk (FK)

- studies_id - numer id studiów (FK)
  

11. Tabela “memberships”

Tabela przechowująca kursy należące do studentów wraz z datą wygaśnięcia przynależności.

- product_id - numer id produktu (FK)

- student_id - numer id studenta (FK)

- expire_date - data wygaśnięcia przynależności
  

12. Tabela “attendance”

Tabela przechowująca informację o obecności studentów na modułach.

- student_id - numer id studenta (FK)
   
- module_id - numer id modułu (FK)
   
- attended - informacja o tym czy student był obecny na module
  

  


13. Tabela “shopping_cart”

	Tabela przechowująca przedmioty oczekujące na płatność przez studenta wraz z informacjami o kwocie do opłacenia oraz terminie opłaty.

- student_id - numer id student (FK)

- product_id - numer id produntu zakupu (FK), może być pusty

- module_id - numer id modułu do zakupu (FK), może być pusty

- paid - informacja o tym czy zakup został opłacony

- initial_fee_paid - informacja o tym czy zaliczka została wpłacona

- pay_deadline - ostateczny termin opłaty
