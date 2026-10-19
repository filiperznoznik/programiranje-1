(*----------------------------------------------------------------------------*
   # 1. domača naloga
  [*----------------------------------------------------------------------------*)

(*----------------------------------------------------------------------------*
   ## Ogrevanje
  [*----------------------------------------------------------------------------*)

(*----------------------------------------------------------------------------*
    Vektorje v R^3 lahko v OCamlu aproksimiramo z uporabo trojic števil s
    plavajočo vejico.
  [*----------------------------------------------------------------------------*)

type vec3d = float * float * float

let e1 = (1.0, 0.0, 0.0)
let e2 = (0.0, 1.0, 0.0)
let e3 = (0.0, 0.0, 1.0)

(*----------------------------------------------------------------------------*
    Napišite naslednje funkcije, ki implementirajo osnovne operacije z vektorji:
    - `sestej_v_3d : vec3d -> vec3d -> vec3d` - sešteje dva vektorja
    - `pomnozi_skalar_3d : float -> vec3d -> vec3d` - pomnoži vektor s skalarjem
    - `skalarni_produkt_3d : vec3d -> vec3d -> float` - izračuna skalarni
      produkt dveh vektorjev
  [*----------------------------------------------------------------------------*)

let sestej_v_3d _ _ = failwith "TODO"
let pomnozi_skalar_3d _ _ = failwith "TODO"
let skalarni_produkt_3d _ _ = failwith "TODO"

(*----------------------------------------------------------------------------*
    Dimenzijo lahko posplošimo z uporabo seznamov. Vektor v R^n lahko
    predstavimo kot seznam n števil s plavajočo vejico.
  [*----------------------------------------------------------------------------*)

exception Neujemajoca_dimenzija

type vec = float list

(*----------------------------------------------------------------------------*
    Napišite naslednje funkcije, ki implementirajo osnovne operacije z vektorji:
    - `sestej_v : vec -> vec -> vec` - sešteje dva vektorja
    - `pomnozi_skalar : float -> vec -> vec` - pomnoži vektor s skalarjem
    - `skalarni_produkt : vec -> vec -> float` - izračuna skalarni produkt dveh
      vektorjev
    Če se vektorja ne ujemata po dimenziji, naj funkcija sproži izjemo
    `Neujemajoca_dimenzija`.
  [*----------------------------------------------------------------------------*)

let rec sestej_v _ _ = failwith "TODO"
let rec pomnozi_skalar _ _ = failwith "TODO"
let rec skalarni_produkt _ _ = failwith "TODO"

(*----------------------------------------------------------------------------*
   ## Seznami
  [*----------------------------------------------------------------------------*)

(*----------------------------------------------------------------------------*
    Pomembna družina funkcij na seznamih so funkcije za zlaganje.
    Napišite funkcijo `zlozi_levo : ('a -> 'b -> 'a) -> 'a -> 'b list -> 'a`, ki
    zloži seznam elementov tipa `'b` v en element tipa `'a` z uporabo funkcije
    tipa `('a -> 'b -> 'a)` in začetnega akumulatorja tipa `'a`.

    Za seznam `[x1; x2; ...; xn]` in začetni akumulator `a0` bo funkcija
    `zlozi_levo f a0 [x1; x2; ...; xn]` vrnila rezultat
    `f (... (f (f a0 x1) x2) ...) xn`.
  [*----------------------------------------------------------------------------*)

let rec zlozi_levo _ _ _ = failwith "TODO"

(*----------------------------------------------------------------------------*
    Napišite funkcijo `zlozi_desno : ('a -> 'b -> 'b) -> 'b -> 'a list -> 'b`,
    ki zloži seznam elementov tipa `'a` v en element tipa `'b` z uporabo
    funkcije tipa `('a -> 'b -> 'b)` in začetnega akumulatorja tipa `'b`.

    Za seznam `[x1; x2; ...; xn]` in začetni akumulator `b0` bo funkcija
    `zlozi_desno f b0 [x1; x2; ...; xn]` vrnila rezultat
    `f x1 (f x2 (... (f xn b0) ...))`.
  [*----------------------------------------------------------------------------*)

let rec zlozi_desno _ _ _ = failwith "TODO"

(*----------------------------------------------------------------------------*
    Napišite funkcijo
    `zlozi_levo_pretvori : ('acc -> 'a -> 'acc * 'b) -> 'acc -> 'a list -> 'acc * 'b list`,
    ki zloži seznam elementov tipa `'a` v en element tipa `'acc` in hkrati
    pretvori vsak element tipa `'a` v element tipa `'b`. Funkcija tipa
    `('acc -> 'a -> 'acc * 'b)` sprejme trenutni akumulator in element tipa `'a`
    ter vrne nov akumulator in pretvorjen element tipa `'b`.

    Za seznam `[x1; x2; ...; xn]` in začetni akumulator `a0` bo funkcija
    `zlozi_levo_pretvori f a0 [x1; x2; ...; xn]` vrnila par
    `(an, [y1; y2; ...; yn])`, kjer velja `f a0 x1 = (a1, y1)`,
    `f a1 x2 = (a2, y2)`...
  [*----------------------------------------------------------------------------*)

let rec zlozi_levo_pretvori _ _ _ = failwith "TODO"

(*----------------------------------------------------------------------------*
    Napišite funkcijo
    `zlozi_levo2 : ('acc -> 'a -> 'b -> 'acc) -> 'acc -> 'a list -> 'b list -> 'acc`,
    ki zloži dva seznama elementov tipov `'a` in `'b` v en element tipa `'acc`.

    Za seznama `[x1; x2; ...; xn]` in `[y1; y2; ...; yn]` ter začetni akumulator
    `a0` bo funkcija `zlozi_levo2 f a0 [x1; x2; ...; xn] [y1; y2; ...; yn]`
    vrnila rezultat `f (... (f (f a0 x1 y1) x2 y2) ...) xn yn`.
    Če se seznama ne ujemata po dolžini, naj funkcija sproži izjemo
    `Neujemajoca_dimenzija`.
  [*----------------------------------------------------------------------------*)

let rec zlozi_levo2 _ _ _ _ = failwith "TODO"

(*----------------------------------------------------------------------------*
   ## Uporaba zlaganja

   Naslednji funkciji na vektorjih (predstavljenih s seznami tipa `float list`)
   napišite z uporabo zgornjih funkcij za zlaganje, brez uporabe `let rec`.
  [*----------------------------------------------------------------------------*)

(*----------------------------------------------------------------------------*
    Napišite funkcijo `norma : float list -> float`, ki izračuna evklidsko normo
    vektorja, tj. koren vsote kvadratov komponent. Uporabite `zlozi_levo`.

    # norma [3.; 4.];;
    - : float = 5.
  [*----------------------------------------------------------------------------*)

let norma _ = failwith "TODO"

(*----------------------------------------------------------------------------*
    Napišite funkcijo
    `skalarni_produkt_zlozi : float list -> float list -> float`, ki
    izračuna skalarni produkt dveh vektorjev. Če se vektorja ne ujemata po
    dimenziji, naj funkcija sproži izjemo `Neujemajoca_dimenzija`. Uporabite
    `zlozi_levo2`.

    # skalarni_produkt_zlozi [1.; 2.; 3.] [4.; 5.; 6.];;
    - : float = 32.
  [*----------------------------------------------------------------------------*)

let skalarni_produkt_zlozi _ _ = failwith "TODO"

(*----------------------------------------------------------------------------*
   ## Prodajni avtomat

   V tej nalogi bomo sestavili simulacijo prodajnega avtomata za pijačo in
   prigrizke. Avtomat sprejema kovance, izdaja izdelke, vrača drobiž in ima
   poseben način vzdrževanja, v katerem ga lahko serviser dopolni.

   Vse zneske bomo predstavljali v centih s celimi števili, saj števila s
   plavajočo vejico za denar niso primerna.
  [*----------------------------------------------------------------------------*)

(*----------------------------------------------------------------------------*
   ### Kovanci
  [*----------------------------------------------------------------------------*)

type kovanec = C10 | C20 | C50 | E1 | E2

(*----------------------------------------------------------------------------*
   Sestavite funkcijo `vrednost : kovanec -> int`, ki vrne vrednost kovanca v
   centih.
  [*----------------------------------------------------------------------------*)

let vrednost _ = failwith "TODO"

(*----------------------------------------------------------------------------*
   Sestavite funkcijo `vsota : kovanec list -> int`, ki vrne skupno vrednost
   seznama kovancev.
  [*----------------------------------------------------------------------------*)

let vsota _ = failwith "TODO"

(*----------------------------------------------------------------------------*
   Sestavite funkcijo `drobiz : int -> kovanec list`, ki dani znesek izplača s
   čim manj kovanci. Kovance naj vrne urejene od največjega proti najmanjšemu.
   Predpostavite lahko, da je znesek nenegativen in deljiv z 10.

   Pri taki zasnovi kovancev lahko postopate požrešno: izberete največji
   kovanec, ki je manjši ali enak znesku, ga dodate v seznam in nato ponovite
   postopek za preostali znesek.
  [*----------------------------------------------------------------------------*)

let drobiz _ = failwith "TODO"

(*----------------------------------------------------------------------------*
   Sestavite funkcijo `v_niz : int -> string`, ki znesek v centih zapiše kot niz
   v evrih z dvema decimalkama. Namig: `Printf.sprintf` in `%02d`.

   # v_niz 1205;;
   - : string = "12.05 €"
  [*----------------------------------------------------------------------------*)

let v_niz _ = failwith "TODO"

(*----------------------------------------------------------------------------*
   ### Zaloga

   Vsak izdelek v avtomatu opišemo z zapisom, zalogo pa s seznamom izdelkov.
  [*----------------------------------------------------------------------------*)

type izdelek = { ime : string; cena : int; kolicina : int }

let zacetna_zaloga =
  [
    { ime = "voda"; cena = 80; kolicina = 3 };
    { ime = "cokolada"; cena = 120; kolicina = 1 };
    { ime = "cips"; cena = 150; kolicina = 0 };
  ]

(*----------------------------------------------------------------------------*
   Sestavite funkcijo `poisci : string -> izdelek list -> izdelek option`, ki v
   zalogi poišče izdelek z danim imenom.
  [*----------------------------------------------------------------------------*)

let rec poisci _ _ = failwith "TODO"
(*----------------------------------------------------------------------------*
   Sestavite funkcijo
   `spremeni_kolicino : string -> int -> izdelek list -> izdelek list`, ki
   količino izdelka z danim imenom spremeni za dano število (lahko je tudi
   negativno). Ostali izdelki naj ostanejo nespremenjeni.
  [*----------------------------------------------------------------------------*)

let spremeni_kolicino _ _ _ = failwith "TODO"

(*----------------------------------------------------------------------------*
   ### Stanje, vnosi in izhodi

   Avtomat je lahko v enem od dveh načinov: običajno obratuje, občasno pa ga
   serviser preklopi v način vzdrževanja. Stanje avtomata sestavljajo način,
   trenutni kredit (vstavljen, a še neporabljen denar) in zaloga.

   Uporabnik lahko vstavi kovanec, izbere izdelek ali prekliče nakup. Serviser
   lahko začne ali konča vzdrževanje, med vzdrževanjem pa lahko izdelek tudi
   dopolni.

   Na vsak vnos se avtomat odzove z natanko enim izhodom: prikaže trenutni
   kredit, izda izdelek (skupaj z drobižem), vrne kovance ali pa javi napako.
  [*----------------------------------------------------------------------------*)

type nacin = Obratuje | Vzdrzevanje
type stanje = { nacin : nacin; kredit : int; zaloga : izdelek list }

type vnos =
  | Vstavi of kovanec
  | Izberi of string
  | Preklici
  | ZacniVzdrzevanje
  | KoncajVzdrzevanje
  | Dopolni of string * int

type napaka =
  | Premalo of int
  | NiIzdelka of string
  | Razprodano of string
  | VVzdrzevanju
  | NiVVzdrzevanju

type izhod =
  | Prikazi of int
  | Izdaj of { izdelek : string; cena : int; drobiz : kovanec list }
  | Vrni of kovanec list
  | Napaka of napaka

let zacetno_stanje = { nacin = Obratuje; kredit = 0; zaloga = zacetna_zaloga }

(*----------------------------------------------------------------------------*
   Sestavite funkcijo `opis_napake : napaka -> string`, ki napako opiše z nizom,
   primernim za prikaz na zaslonu avtomata:
   - `Premalo n`: `"Vstavite še X"`, kjer je X znesek `n`, zapisan z `v_niz`,
   - `NiIzdelka ime`: `"Izdelka IME ni"`,
   - `Razprodano ime`: `"Izdelek IME je razprodan"`,
   - `VVzdrzevanju`: `"Avtomat je v vzdrževanju"`,
   - `NiVVzdrzevanju`: `"Avtomat ni v vzdrževanju"`.
  [*----------------------------------------------------------------------------*)

let opis_napake _ = failwith "TODO"

(*----------------------------------------------------------------------------*
   ### Korak avtomata

   Sestavite funkcijo `korak : stanje -> vnos -> stanje * izhod`, ki izračuna
   novo stanje avtomata in izhod za dani vnos. Avtomat naj se obnaša takole.

   Ko **obratuje**:
   - `Vstavi k`: kredit se poveča za vrednost kovanca, izhod je `Prikazi` z
     novim kreditom.
   - `Izberi ime`: če izdelka ni v zalogi, je izhod napaka `NiIzdelka`; če je
     njegova količina 0, je izhod napaka `Razprodano`; če je kredit manjši od
     cene, je izhod napaka `Premalo` z manjkajočim zneskom. Sicer avtomat
     izdelek izda, količino zmanjša za 1, kredit postavi na 0, izhod pa je
     `Izdaj` z imenom, ceno in drobižem. V primeru napake se stanje ne spremeni.
   - `Preklici`: avtomat vrne ves kredit v kovancih in ga postavi na 0.
   - `ZacniVzdrzevanje`: avtomat preide v način vzdrževanja, morebitni kredit
     pa vrne (izhod je `Vrni`, kredit postane 0).
   - `KoncajVzdrzevanje`, `Dopolni _`: napaka `NiVVzdrzevanju`.

   Ko je v **vzdrževanju**:
   - `Vstavi k`: avtomat kovanec takoj vrne.
   - `Izberi _`, `Preklici`, `ZacniVzdrzevanje`: napaka `VVzdrzevanju`.
   - `KoncajVzdrzevanje`: avtomat spet obratuje, izhod je `Prikazi` s kreditom.
   - `Dopolni (ime, n)`: količino izdelka poveča za `n`, izhod je `Prikazi` s
     kreditom. Če izdelka ni v zalogi, je izhod napaka `NiIzdelka`.

   # let stanje_1, izhod_1 = korak zacetno_stanje (Vstavi E1);;
   val stanje_1 : stanje =
     {nacin = Obratuje; kredit = 100;
      zaloga =
       [{ime = "voda"; cena = 80; kolicina = 3};
        {ime = "cokolada"; cena = 120; kolicina = 1};
        {ime = "cips"; cena = 150; kolicina = 0}]}
   val izhod_1 : izhod = Prikazi 100
   # snd (korak stanje_1 (Izberi "cokolada"));;
   - : izhod = Napaka (Premalo 20)
   # snd (korak stanje_1 (Izberi "voda"));;
   - : izhod = Izdaj {izdelek = "voda"; cena = 80; drobiz = [C20]}
   # snd (korak { zacetno_stanje with nacin = Vzdrzevanje } (Vstavi C50));;
   - : izhod = Vrni [C50]
  [*----------------------------------------------------------------------------*)

let korak _ _ = failwith "TODO"

let primer_vnosi =
  [
    Vstavi E2;
    Izberi "cips";
    Izberi "kava";
    Izberi "cokolada";
    Vstavi C50;
    Izberi "cokolada";
    ZacniVzdrzevanje;
    Izberi "voda";
    Dopolni ("cokolada", 5);
    KoncajVzdrzevanje;
    Vstavi E1;
    Vstavi C20;
    Izberi "cokolada";
  ]

(*----------------------------------------------------------------------------*
   ### Simulacija

   Sestavite funkcijo `simuliraj : stanje -> vnos list -> stanje * izhod list`,
   ki na avtomatu po vrsti izvede vse vnose ter vrne končno stanje in seznam
   vseh izhodov. Namig: `List.fold_left_map` oziroma `zlozi_levo_pretvori` iz
   naloge o zlaganju seznamov.

   # simuliraj zacetno_stanje primer_vnosi;;
   - : stanje * izhod list =
   ({nacin = Obratuje; kredit = 0;
     zaloga =
      [{ime = "voda"; cena = 80; kolicina = 3};
       {ime = "cokolada"; cena = 120; kolicina = 4};
       {ime = "cips"; cena = 150; kolicina = 0}]},
    [Prikazi 200; Napaka (Razprodano "cips"); Napaka (NiIzdelka "kava");
     Izdaj {izdelek = "cokolada"; cena = 120; drobiz = [C50; C20; C10]};
     Prikazi 50; Napaka (Razprodano "cokolada"); Vrni [C50];
     Napaka VVzdrzevanju; Prikazi 0; Prikazi 0; Prikazi 100; Prikazi 120;
     Izdaj {izdelek = "cokolada"; cena = 120; drobiz = []}])
  [*----------------------------------------------------------------------------*)

let simuliraj _ _ = failwith "TODO"

(*----------------------------------------------------------------------------*
   ### Analiza izhodov
  [*----------------------------------------------------------------------------*)

(*----------------------------------------------------------------------------*
   Sestavite funkcijo `promet : izhod list -> int`, ki vrne skupni znesek vseh
   prodanih izdelkov.

   # promet (snd (simuliraj zacetno_stanje primer_vnosi));;
   - : int = 240
  [*----------------------------------------------------------------------------*)

let promet _ = failwith "TODO"

(*----------------------------------------------------------------------------*
   Sestavite funkcijo `napake : izhod list -> napaka list`, ki vrne seznam vseh
   napak v izhodih v enakem vrstnem redu.

   # napake (snd (simuliraj zacetno_stanje primer_vnosi));;
   - : napaka list =
   [Razprodano "cips"; NiIzdelka "kava"; Razprodano "cokolada"; VVzdrzevanju]
  [*----------------------------------------------------------------------------*)

let napake _ = failwith "TODO"

(*----------------------------------------------------------------------------*
   Sestavite funkcijo `izplacani_kovanci : izhod list -> kovanec list`, ki vrne
   vse kovance, ki jih je avtomat izplačal kupcem (kot drobiž ali vračilo), v
   vrstnem redu izplačila.

   # izplacani_kovanci (snd (simuliraj zacetno_stanje primer_vnosi));;
   - : kovanec list = [C50; C20; C10; C50]
  [*----------------------------------------------------------------------------*)

let izplacani_kovanci _ = failwith "TODO"

(*----------------------------------------------------------------------------*
   Sestavite funkcijo `prodano : izhod list -> (string * int) list`, ki za vsak
   prodan izdelek vrne, kolikokrat je bil prodan. Izdelki naj bodo v vrstnem
   redu prve prodaje.

   # prodano
       (snd
          (simuliraj zacetno_stanje
             [Vstavi E1; Izberi "voda"; Vstavi E2; Izberi "cokolada";
              Vstavi E1; Izberi "voda"]));;
   - : (string * int) list = [("voda", 2); ("cokolada", 1)]
  [*----------------------------------------------------------------------------*)

let prodano _ = failwith "TODO"

(* Pripomočki za testiranje - ignorirajte *)

type ('a, 'b) test_case = {
  input : 'a;
  expected_output : ('b, exn) result;
  description : string;
}

type ('a, 'b) test_suite = {
  cases : ('a, 'b) test_case list;
  fn : 'a -> 'b;
  name : string;
}

let uncurry_f_2 f (x, y) = f x y
let uncurry_f_3 f (x, y, z) = f x y z
let uncurry_f_4 f (x, y, z, w) = f x y z w
let uncurry_f_5 f (x, y, z, w, v) = f x y z w v

let tester suite =
  List.fold_left
    (fun (correct, incorrect) { input; expected_output; description } ->
      try
        let actual_output = suite.fn input in
        match expected_output with
        | Ok expected_output when actual_output = expected_output ->
            (correct + 1, incorrect)
        | _ -> (correct, description :: incorrect)
      with e -> (
        match expected_output with
        | Error expected_exception when e = expected_exception ->
            (correct + 1, incorrect)
        | _ ->
            ( correct,
              (description ^ " (exception: " ^ Printexc.to_string e ^ ")")
              :: incorrect )))
    (0, []) suite.cases

let run_suite suite verbose =
  let correct, incorrect = tester suite in
  if verbose then (
    Printf.printf "Test suite: %s\n" suite.name;
    Printf.printf "Correct: %d\n" correct;
    Printf.printf "Incorrect: %d\n" (List.length incorrect);
    List.iter (Printf.printf "- %s\n") incorrect;
    Printf.printf "\n";
    Printf.printf "Test suite: %s - Correct: %d, Incorrect: %d, Total: %f\n"
      suite.name correct (List.length incorrect)
      (float_of_int correct /. float_of_int (correct + List.length incorrect));
    Printf.printf "\n")
  else
    Printf.printf "Test suite: %s - Correct: %d, Incorrect: %d, Total: %f\n"
      suite.name correct (List.length incorrect)
      (float_of_int correct /. float_of_int (correct + List.length incorrect));
  (correct, List.length incorrect)

(* Testiranje *)

let sestej_v_3d_suite =
  {
    name = "sestej_v_3d";
    fn = uncurry_f_2 sestej_v_3d;
    cases =
      [
        {
          input = ((1.0, 2.0, 3.0), (4.0, 5.0, 6.0));
          expected_output = Ok (5.0, 7.0, 9.0);
          description = "Seštevanje dveh vektorjev";
        };
        {
          input = (e1, e1);
          expected_output = Ok (2.0, 0.0, 0.0);
          description = "Seštevanje enotskih vektorjev e1";
        };
        {
          input = (e2, e2);
          expected_output = Ok (0.0, 2.0, 0.0);
          description = "Seštevanje enotskih vektorjev e2";
        };
        {
          input = (e3, e3);
          expected_output = Ok (0.0, 0.0, 2.0);
          description = "Seštevanje enotskih vektorjev e3";
        };
        {
          input = ((-1.0, -2.0, -3.0), (1.0, 2.0, 3.0));
          expected_output = Ok (0.0, 0.0, 0.0);
          description = "Seštevanje nasprotnih vektorjev";
        };
        {
          input = ((1.5, 2.5, 3.5), (4.5, 5.5, 6.5));
          expected_output = Ok (6.0, 8.0, 10.0);
          description = "Seštevanje decimalnih vektorjev";
        };
      ];
  }

let pomnozi_skalar_3d_suite =
  {
    name = "pomnozi_skalar_3d";
    fn = uncurry_f_2 pomnozi_skalar_3d;
    cases =
      [
        {
          input = (2.0, (1.0, 2.0, 3.0));
          expected_output = Ok (2.0, 4.0, 6.0);
          description = "Množenje vektorja s skalarjem";
        };
        {
          input = (0.0, e1);
          expected_output = Ok (0.0, 0.0, 0.0);
          description = "Množenje enotskega vektorja z 0";
        };
        {
          input = (-1.0, e2);
          expected_output = Ok (0.0, -1.0, 0.0);
          description = "Množenje enotskega vektorja z -1";
        };
        {
          input = (3.5, e3);
          expected_output = Ok (0.0, 0.0, 3.5);
          description = "Množenje enotskega vektorja s pozitivnim skalarjem";
        };
        {
          input = (-2.5, e1);
          expected_output = Ok (-2.5, -0.0, -0.0);
          description = "Množenje enotskega vektorja z negativnim skalarjem";
        };
        {
          input = (1e-9, e2);
          expected_output = Ok (0.0, 1e-9, 0.0);
          description = "Množenje enotskega vektorja z zelo majhnim skalarjem";
        };
        {
          input = (1e9, e3);
          expected_output = Ok (0.0, 0.0, 1e9);
          description = "Množenje enotskega vektorja z zelo velikim skalarjem";
        };
      ];
  }

let skalarni_produkt_3d_suite =
  {
    name = "skalarni_produkt_3d";
    fn = uncurry_f_2 skalarni_produkt_3d;
    cases =
      [
        {
          input = ((1.0, 2.0, 3.0), (4.0, 5.0, 6.0));
          expected_output = Ok 32.0;
          description = "Skalarni produkt dveh vektorjev";
        };
        {
          input = (e1, e1);
          expected_output = Ok 1.0;
          description = "Skalarni produkt enotskih vektorjev e1";
        };
        {
          input = (e2, e2);
          expected_output = Ok 1.0;
          description = "Skalarni produkt enotskih vektorjev e2";
        };
        {
          input = (e3, e3);
          expected_output = Ok 1.0;
          description = "Skalarni produkt enotskih vektorjev e3";
        };
        {
          input = ((-1.0, -2.0, -3.0), (1.0, 2.0, 3.0));
          expected_output = Ok (-14.0);
          description = "Skalarni produkt nasprotnih vektorjev";
        };
        {
          input = ((1e-9, 2e-9, 3e-9), (4e-9, 5e-9, 6e-9));
          expected_output = Ok 32e-18;
          description = "Skalarni produkt zelo majhnih vektorjev";
        };
        {
          input = ((1e9, 2e9, 3e9), (4e9, 5e9, 6e9));
          expected_output = Ok 32e18;
          description = "Skalarni produkt zelo velikih vektorjev";
        };
      ];
  }

let sestej_v_suite =
  {
    name = "sestej_v";
    fn = uncurry_f_2 sestej_v;
    cases =
      [
        {
          input = ([ 1.0; 2.0; 3.0 ], [ 4.0; 5.0; 6.0 ]);
          expected_output = Ok [ 5.0; 7.0; 9.0 ];
          description = "Seštevanje trodimenzionalnih vektorjev";
        };
        {
          input = ([ 1.0; 2.0 ], [ 3.0; 4.0 ]);
          expected_output = Ok [ 4.0; 6.0 ];
          description = "Seštevanje dvodimenzionalnih vektorjev";
        };
        (* Zelo dolgi vektorji *)
        {
          input =
            ( List.init 100 (fun i -> float_of_int i),
              List.init 100 (fun i -> float_of_int (i * 2)) );
          expected_output = Ok (List.init 100 (fun i -> float_of_int (i * 3)));
          description = "Seštevanje zelo dolgih vektorjev";
        };
        {
          input = ([], []);
          expected_output = Ok [];
          description = "Seštevanje praznih vektorjev";
        };
        {
          input = ([ 1.0 ], [ 2.0 ]);
          expected_output = Ok [ 3.0 ];
          description = "Seštevanje enodimenzionalnih vektorjev";
        };
        {
          input = ([ 1.0; 2.0 ], [ 3.0 ]);
          expected_output = Error Neujemajoca_dimenzija;
          description = "Neujemajoča se dimenzija, prvi vektor daljši";
        };
        {
          input = ([ 1.0 ], [ 2.0; 3.0 ]);
          expected_output = Error Neujemajoca_dimenzija;
          description = "Neujemajoča se dimenzija, drugi vektor daljši";
        };
      ];
  }

let pomnozi_skalar_suite =
  {
    name = "pomnozi_skalar";
    fn = uncurry_f_2 pomnozi_skalar;
    cases =
      [
        {
          input = (2.0, [ 1.0; 2.0; 3.0 ]);
          expected_output = Ok [ 2.0; 4.0; 6.0 ];
          description = "Množenje vektorja s skalarjem 2";
        };
        {
          input = (0.0, [ 1.0; 2.0; 3.0 ]);
          expected_output = Ok [ 0.0; 0.0; 0.0 ];
          description = "Množenje vektorja s skalarjem 0";
        };
        {
          input = (-1.0, [ 1.0; 2.0; 3.0 ]);
          expected_output = Ok [ -1.0; -2.0; -3.0 ];
          description = "Množenje vektorja s skalarjem -1";
        };
        {
          input = (1e-9, [ 1e-9; 2e-9 ]);
          expected_output = Ok [ 1e-18; 2e-18 ];
          description = "Množenje zelo majhnega vektorja s skalarjem";
        };
        {
          input = (1e9, [ 1e9; 2e9 ]);
          expected_output = Ok [ 1e18; 2e18 ];
          description = "Množenje zelo velikega vektorja s skalarjem";
        };
        {
          input = (3.5, []);
          expected_output = Ok [];
          description = "Množenje praznega vektorja s skalarjem";
        };
      ];
  }

let skalarni_produkt_suite =
  {
    name = "skalarni_produkt";
    fn = uncurry_f_2 skalarni_produkt;
    cases =
      [
        {
          input = ([ 1.0; 2.0; 3.0 ], [ 4.0; 5.0; 6.0 ]);
          expected_output = Ok 32.0;
          description = "Skalarni produkt trodimenzionalnih vektorjev";
        };
        {
          input = ([ 1.0; 2.0 ], [ 3.0; 4.0 ]);
          expected_output = Ok 11.0;
          description = "Skalarni produkt dvodimenzionalnih vektorjev";
        };
        {
          input = ([], []);
          expected_output = Ok 0.0;
          description = "Skalarni produkt praznih vektorjev";
        };
        {
          input = ([ 1.0 ], [ 2.0 ]);
          expected_output = Ok 2.0;
          description = "Skalarni produkt enodimenzionalnih vektorjev";
        };
        {
          input = ([ 1e-9; 2e-9 ], [ 3e-9; 4e-9 ]);
          expected_output = Ok 11e-18;
          description = "Skalarni produkt zelo majhnih vektorjev";
        };
        {
          input = ([ 1e9; 2e9 ], [ 3e9; 4e9 ]);
          expected_output = Ok 11e18;
          description = "Skalarni produkt zelo velikih vektorjev";
        };
        {
          input = ([ 1.0; 2.0 ], [ 3.0 ]);
          expected_output = Error Neujemajoca_dimenzija;
          description = "Neujemajoča se dimenzija, prvi vektor daljši";
        };
        {
          input = ([ 1.0 ], [ 2.0; 3.0 ]);
          expected_output = Error Neujemajoca_dimenzija;
          description = "Neujemajoča se dimenzija, drugi vektor daljši";
        };
      ];
  }

let zlozi_levo_suite_int =
  {
    name = "zlozi_levo (števila)";
    fn = uncurry_f_3 zlozi_levo;
    cases =
      [
        {
          input = ((fun acc x -> acc + x), 0, [ 1; 2; 3 ]);
          expected_output = Ok 6;
          description = "Seštevanje seznama";
        };
        {
          input = ((fun acc x -> acc * x), 1, [ 1; 2; 3; 4 ]);
          expected_output = Ok 24;
          description = "Množenje seznama";
        };
      ];
  }

let zlozi_levo_suite_list =
  {
    name = "zlozi_levo (seznami)";
    fn = uncurry_f_3 zlozi_levo;
    cases =
      [
        {
          input =
            ( (fun acc x -> if List.mem x acc then acc else x :: acc),
              [],
              [ 1; 2; 3; 2; 1 ] );
          expected_output = Ok [ 3; 2; 1 ];
          description = "Odstranjevanje podvojenih elementov";
        };
        {
          input =
            ( (fun acc x -> if List.length acc < 3 then x :: acc else acc),
              [],
              [ 1; 2; 3; 4; 5 ] );
          expected_output = Ok [ 3; 2; 1 ];
          description = "Omejitev dolžine seznama";
        };
      ];
  }

let zlozi_desno_suite_int =
  {
    name = "zlozi_desno (števila)";
    fn = uncurry_f_3 zlozi_desno;
    cases =
      [
        {
          input = ((fun x acc -> x - acc), 0, [ 1; 2; 3 ]);
          expected_output = Ok 2;
          description = "Odštevanje z desne";
        };
        {
          input = ((fun x acc -> (10 * acc) + x), 0, [ 1; 2; 3 ]);
          expected_output = Ok 321;
          description = "Števke od desne proti levi";
        };
      ];
  }

let zlozi_desno_suite_list =
  {
    name = "zlozi_desno (seznami)";
    fn = uncurry_f_3 zlozi_desno;
    cases =
      [
        {
          input =
            ( (fun x acc -> if List.mem x acc then acc else x :: acc),
              [],
              [ 1; 2; 3; 2; 1 ] );
          expected_output = Ok [ 3; 2; 1 ];
          description = "Odstranjevanje podvojenih elementov";
        };
        {
          input =
            ( (fun x acc -> if List.length acc < 3 then x :: acc else acc),
              [],
              [ 1; 2; 3; 4; 5 ] );
          expected_output = Ok [ 3; 4; 5 ];
          description = "Omejitev dolžine seznama";
        };
      ];
  }

let zlozi_levo_pretvori_suite =
  {
    name = "zlozi_levo_pretvori";
    fn = uncurry_f_3 zlozi_levo_pretvori;
    cases =
      [
        {
          input = ((fun acc x -> (acc + x, acc + x)), 0, [ 1; 2; 3; 4 ]);
          expected_output = Ok (10, [ 1; 3; 6; 10 ]);
          description = "Delne vsote";
        };
        {
          input = ((fun acc x -> (acc + 1, acc * x)), 0, [ 5; 6; 7 ]);
          expected_output = Ok (3, [ 0; 6; 14 ]);
          description = "Množenje z indeksom";
        };
        {
          input = ((fun acc x -> (acc + x, acc + x)), 0, []);
          expected_output = Ok (0, []);
          description = "Prazen seznam";
        };
      ];
  }

let zlozi_levo2_suite =
  {
    name = "zlozi_levo2";
    fn = uncurry_f_4 zlozi_levo2;
    cases =
      [
        {
          input = ((fun acc x y -> acc + (x * y)), 0, [ 1; 2; 3 ], [ 4; 5; 6 ]);
          expected_output = Ok 32;
          description = "Vsota produktov istoležnih elementov";
        };
        {
          input = ((fun acc x y -> (10 * acc) + x - y), 0, [ 5; 3 ], [ 1; 1 ]);
          expected_output = Ok 42;
          description = "Zlaganje od leve proti desni";
        };
        {
          input = ((fun acc x y -> acc + (x * y)), 0, [], []);
          expected_output = Ok 0;
          description = "Prazna seznama";
        };
        {
          input = ((fun acc x y -> acc + (x * y)), 0, [ 1; 2 ], [ 3 ]);
          expected_output = Error Neujemajoca_dimenzija;
          description = "Neujemajoča se dolžina, prvi seznam daljši";
        };
        {
          input = ((fun acc x y -> acc + (x * y)), 0, [ 1 ], [ 2; 3 ]);
          expected_output = Error Neujemajoca_dimenzija;
          description = "Neujemajoča se dolžina, drugi seznam daljši";
        };
      ];
  }

let norma_suite =
  {
    name = "norma";
    fn = norma;
    cases =
      [
        {
          input = [ 3.; 4. ];
          expected_output = Ok 5.;
          description = "Evklidska norma vektorja [3; 4]";
        };
        {
          input = [ 1.; 2.; 2. ];
          expected_output = Ok 3.;
          description = "Evklidska norma vektorja [1; 2; 2]";
        };
        {
          input = [ 0.; 0.; 0. ];
          expected_output = Ok 0.;
          description = "Evklidska norma vektorja [0; 0; 0]";
        };
        {
          input = List.init 100 (fun i -> float_of_int i);
          expected_output =
            Ok
              (sqrt
                 (float_of_int
                    (List.fold_left
                       (fun acc x -> acc + (x * x))
                       0
                       (List.init 100 (fun i -> i)))));
          description = "Evklidska norma zelo dolgega vektorja";
        };
        {
          input = [];
          expected_output = Ok 0.;
          description = "Evklidska norma praznega vektorja";
        };
      ];
  }

let skalarni_produkt_zlozi_suite =
  {
    name = "skalarni_produkt_zlozi";
    fn = uncurry_f_2 skalarni_produkt_zlozi;
    cases =
      [
        {
          input = ([ 1.; 2.; 3. ], [ 4.; 5.; 6. ]);
          expected_output = Ok 32.;
          description = "Skalarni produkt trodimenzionalnih vektorjev";
        };
        {
          input = ([ 1.; 2. ], [ 3.; 4. ]);
          expected_output = Ok 11.;
          description = "Skalarni produkt dvodimenzionalnih vektorjev";
        };
        {
          input = ([], []);
          expected_output = Ok 0.;
          description = "Skalarni produkt praznih vektorjev";
        };
        {
          input = ([ 1. ], [ 2. ]);
          expected_output = Ok 2.;
          description = "Skalarni produkt enodimenzionalnih vektorjev";
        };
        {
          input =
            ( List.init 100 (fun i -> float_of_int i),
              List.init 100 (fun i -> float_of_int (i * 2)) );
          expected_output =
            Ok
              (float_of_int
                 (List.fold_left
                    (fun acc x -> acc + (x * x * 2))
                    0
                    (List.init 100 (fun i -> i))));
          description = "Skalarni produkt zelo dolgih vektorjev";
        };
        {
          input = ([ 1.; 2. ], [ 3. ]);
          expected_output = Error Neujemajoca_dimenzija;
          description = "Neujemajoča se dimenzija, prvi vektor daljši";
        };
        {
          input = ([ 1. ], [ 2.; 3. ]);
          expected_output = Error Neujemajoca_dimenzija;
          description = "Neujemajoča se dimenzija, drugi vektor daljši";
        };
      ];
  }

let vrednost_suite =
  {
    name = "vrednost";
    fn = vrednost;
    cases =
      [
        {
          input = C10;
          expected_output = Ok 10;
          description = "Vrednost kovanca C10";
        };
        {
          input = C20;
          expected_output = Ok 20;
          description = "Vrednost kovanca C20";
        };
        {
          input = C50;
          expected_output = Ok 50;
          description = "Vrednost kovanca C50";
        };
        {
          input = E1;
          expected_output = Ok 100;
          description = "Vrednost kovanca E1";
        };
        {
          input = E2;
          expected_output = Ok 200;
          description = "Vrednost kovanca E2";
        };
      ];
  }

let vsota_suite =
  {
    name = "vsota";
    fn = vsota;
    cases =
      [
        {
          input = [ C10; C20; C50 ];
          expected_output = Ok 80;
          description = "Vsota kovancev C10, C20, C50";
        };
        {
          input = [ E1; E2 ];
          expected_output = Ok 300;
          description = "Vsota kovancev E1, E2";
        };
        {
          input = [];
          expected_output = Ok 0;
          description = "Vsota praznega seznama";
        };
        {
          input = [ C10; C10; C10 ];
          expected_output = Ok 30;
          description = "Vsota treh kovancev C10";
        };
        {
          input = [ C50; E1; C20 ];
          expected_output = Ok 170;
          description = "Vsota kovancev C50, E1, C20";
        };
      ];
  }

let drobiz_suite =
  {
    name = "drobiz";
    fn = drobiz;
    cases =
      [
        {
          input = 0;
          expected_output = Ok [];
          description = "Drobiž za 0 centov";
        };
        {
          input = 10;
          expected_output = Ok [ C10 ];
          description = "Drobiž za 10 centov";
        };
        {
          input = 30;
          expected_output = Ok [ C20; C10 ];
          description = "Drobiž za 30 centov";
        };
        {
          input = 80;
          expected_output = Ok [ C50; C20; C10 ];
          description = "Drobiž za 80 centov";
        };
        {
          input = 120;
          expected_output = Ok [ E1; C20 ];
          description = "Drobiž za 120 centov";
        };
        {
          input = 250;
          expected_output = Ok [ E2; C50 ];
          description = "Drobiž za 250 centov";
        };
        {
          input = 1230;
          expected_output = Ok [ E2; E2; E2; E2; E2; E2; C20; C10 ];
          description = "Drobiž za 1230 centov";
        };
        {
          input = 500;
          expected_output = Ok [ E2; E2; E1 ];
          description = "Drobiž za 500 centov";
        };
      ];
  }

let v_niz_suite =
  {
    name = "v_niz";
    fn = v_niz;
    cases =
      [
        {
          input = 0;
          expected_output = Ok "0.00 €";
          description = "Znesek 0 centov";
        };
        {
          input = 10;
          expected_output = Ok "0.10 €";
          description = "Znesek 10 centov";
        };
        {
          input = 99;
          expected_output = Ok "0.99 €";
          description = "Znesek 99 centov";
        };
        {
          input = 100;
          expected_output = Ok "1.00 €";
          description = "Znesek 100 centov";
        };
        {
          input = 1234;
          expected_output = Ok "12.34 €";
          description = "Znesek 1234 centov";
        };
        {
          input = 5000;
          expected_output = Ok "50.00 €";
          description = "Znesek 5000 centov";
        };
        {
          input = 123456;
          expected_output = Ok "1234.56 €";
          description = "Znesek 123456 centov";
        };
      ];
  }

let poisci_suite =
  {
    name = "poisci";
    fn = uncurry_f_2 poisci;
    cases =
      [
        {
          input = ("voda", zacetna_zaloga);
          expected_output = Ok (Some { ime = "voda"; cena = 80; kolicina = 3 });
          description = "Poišči izdelek 'voda'";
        };
        {
          input = ("cokolada", zacetna_zaloga);
          expected_output =
            Ok (Some { ime = "cokolada"; cena = 120; kolicina = 1 });
          description = "Poišči izdelek 'cokolada'";
        };
        {
          input = ("cips", zacetna_zaloga);
          expected_output = Ok (Some { ime = "cips"; cena = 150; kolicina = 0 });
          description = "Poišči izdelek 'cips'";
        };
        {
          input = ("čaj", zacetna_zaloga);
          expected_output = Ok None;
          description = "Poišči izdelek 'čaj' (ne obstaja)";
        };
      ];
  }

let spremeni_kolicino_suite =
  {
    name = "spremeni_kolicino";
    fn = uncurry_f_3 spremeni_kolicino;
    cases =
      [
        {
          input = ("voda", 2, zacetna_zaloga);
          expected_output =
            Ok
              [
                { ime = "voda"; cena = 80; kolicina = 5 };
                { ime = "cokolada"; cena = 120; kolicina = 1 };
                { ime = "cips"; cena = 150; kolicina = 0 };
              ];
          description = "Povečaj količino 'voda' za 2";
        };
        {
          input = ("cokolada", -1, zacetna_zaloga);
          expected_output =
            Ok
              [
                { ime = "voda"; cena = 80; kolicina = 3 };
                { ime = "cokolada"; cena = 120; kolicina = 0 };
                { ime = "cips"; cena = 150; kolicina = 0 };
              ];
          description = "Zmanjšaj količino 'cokolada' za 1";
        };
        {
          input = ("čaj", 3, zacetna_zaloga);
          expected_output =
            Ok
              [
                { ime = "voda"; cena = 80; kolicina = 3 };
                { ime = "cokolada"; cena = 120; kolicina = 1 };
                { ime = "cips"; cena = 150; kolicina = 0 };
              ];
          description =
            "Poskusi spremeniti količino neobstoječega izdelka 'čaj'";
        };
      ];
  }

let opis_napake_suite =
  {
    name = "opis_napake";
    fn = opis_napake;
    cases =
      [
        {
          input = Premalo 50;
          expected_output = Ok "Vstavite še 0.50 €";
          description = "Opis napake Premalo";
        };
        {
          input = NiIzdelka "čaj";
          expected_output = Ok "Izdelka čaj ni";
          description = "Opis napake NiIzdelka";
        };
        {
          input = Razprodano "kava";
          expected_output = Ok "Izdelek kava je razprodan";
          description = "Opis napake Razprodano";
        };
        {
          input = VVzdrzevanju;
          expected_output = Ok "Avtomat je v vzdrževanju";
          description = "Opis napake VVzdrzevanju";
        };
        {
          input = NiVVzdrzevanju;
          expected_output = Ok "Avtomat ni v vzdrževanju";
          description = "Opis napake NiVVzdrzevanju";
        };
      ];
  }

let korak_suite =
  {
    name = "korak";
    fn = uncurry_f_2 korak;
    cases =
      [
        {
          input = (zacetno_stanje, Vstavi E1);
          expected_output =
            Ok ({ zacetno_stanje with kredit = 100 }, Prikazi 100);
          description = "Vstavi kovanec E1";
        };
        {
          input = ({ zacetno_stanje with kredit = 100 }, Izberi "cokolada");
          expected_output =
            Ok ({ zacetno_stanje with kredit = 100 }, Napaka (Premalo 20));
          description = "Izberi 'cokolada' s premalo kredita";
        };
        {
          input = ({ zacetno_stanje with kredit = 80 }, Izberi "voda");
          expected_output =
            Ok
              ( {
                  nacin = Obratuje;
                  kredit = 0;
                  zaloga =
                    [
                      { ime = "voda"; cena = 80; kolicina = 2 };
                      { ime = "cokolada"; cena = 120; kolicina = 1 };
                      { ime = "cips"; cena = 150; kolicina = 0 };
                    ];
                },
                Izdaj { izdelek = "voda"; cena = 80; drobiz = [] } );
          description = "Izberi 'voda' z dovolj kredita";
        };
        {
          input = ({ zacetno_stanje with kredit = 200 }, Izberi "voda");
          expected_output =
            Ok
              ( {
                  nacin = Obratuje;
                  kredit = 0;
                  zaloga =
                    [
                      { ime = "voda"; cena = 80; kolicina = 2 };
                      { ime = "cokolada"; cena = 120; kolicina = 1 };
                      { ime = "cips"; cena = 150; kolicina = 0 };
                    ];
                },
                Izdaj { izdelek = "voda"; cena = 80; drobiz = [ E1; C20 ] } );
          description = "Izberi 'voda' z drobižem";
        };
        {
          input = ({ zacetno_stanje with kredit = 100 }, Izberi "kava");
          expected_output =
            Ok ({ zacetno_stanje with kredit = 100 }, Napaka (NiIzdelka "kava"));
          description = "Izberi izdelek, ki ga ni v zalogi";
        };
        {
          input = ({ zacetno_stanje with kredit = 200 }, Izberi "cips");
          expected_output =
            Ok ({ zacetno_stanje with kredit = 200 }, Napaka (Razprodano "cips"));
          description = "Izberi razprodan izdelek";
        };
        {
          input = ({ zacetno_stanje with kredit = 80 }, Preklici);
          expected_output = Ok (zacetno_stanje, Vrni [ C50; C20; C10 ]);
          description = "Prekliči nakup";
        };
        {
          input = (zacetno_stanje, ZacniVzdrzevanje);
          expected_output =
            Ok ({ zacetno_stanje with nacin = Vzdrzevanje }, Vrni []);
          description = "Začni vzdrževanje";
        };
        {
          input = ({ zacetno_stanje with kredit = 50 }, ZacniVzdrzevanje);
          expected_output =
            Ok ({ zacetno_stanje with nacin = Vzdrzevanje }, Vrni [ C50 ]);
          description = "Začni vzdrževanje s kreditom";
        };
        {
          input = (zacetno_stanje, KoncajVzdrzevanje);
          expected_output = Ok (zacetno_stanje, Napaka NiVVzdrzevanju);
          description = "Končaj vzdrževanje med obratovanjem";
        };
        {
          input = (zacetno_stanje, Dopolni ("cokolada", 5));
          expected_output = Ok (zacetno_stanje, Napaka NiVVzdrzevanju);
          description = "Dopolni med obratovanjem";
        };
        {
          input = ({ zacetno_stanje with nacin = Vzdrzevanje }, Vstavi C50);
          expected_output =
            Ok ({ zacetno_stanje with nacin = Vzdrzevanje }, Vrni [ C50 ]);
          description = "Vstavi kovanec med vzdrževanjem";
        };
        {
          input = ({ zacetno_stanje with nacin = Vzdrzevanje }, Izberi "voda");
          expected_output =
            Ok ({ zacetno_stanje with nacin = Vzdrzevanje }, Napaka VVzdrzevanju);
          description = "Izberi med vzdrževanjem";
        };
        {
          input =
            ({ zacetno_stanje with nacin = Vzdrzevanje }, KoncajVzdrzevanje);
          expected_output = Ok (zacetno_stanje, Prikazi 0);
          description = "Končaj vzdrževanje";
        };
        {
          input =
            ( { zacetno_stanje with nacin = Vzdrzevanje },
              Dopolni ("cokolada", 5) );
          expected_output =
            Ok
              ( {
                  nacin = Vzdrzevanje;
                  kredit = 0;
                  zaloga =
                    [
                      { ime = "voda"; cena = 80; kolicina = 3 };
                      { ime = "cokolada"; cena = 120; kolicina = 6 };
                      { ime = "cips"; cena = 150; kolicina = 0 };
                    ];
                },
                Prikazi 0 );
          description = "Dopolni med vzdrževanjem";
        };
        {
          input =
            ({ zacetno_stanje with nacin = Vzdrzevanje }, Dopolni ("kava", 5));
          expected_output =
            Ok
              ( { zacetno_stanje with nacin = Vzdrzevanje },
                Napaka (NiIzdelka "kava") );
          description = "Dopolni izdelek, ki ga ni v zalogi";
        };
      ];
  }

let simuliraj_suite =
  {
    name = "simuliraj";
    fn = uncurry_f_2 simuliraj;
    cases =
      [
        {
          input = (zacetno_stanje, [ Vstavi E1; Izberi "voda" ]);
          expected_output =
            Ok
              ( {
                  nacin = Obratuje;
                  kredit = 0;
                  zaloga =
                    [
                      { ime = "voda"; cena = 80; kolicina = 2 };
                      { ime = "cokolada"; cena = 120; kolicina = 1 };
                      { ime = "cips"; cena = 150; kolicina = 0 };
                    ];
                },
                [
                  Prikazi 100;
                  Izdaj { izdelek = "voda"; cena = 80; drobiz = [ C20 ] };
                ] );
          description = "Simulacija vstavljanja E1 in izbire 'voda'";
        };
        {
          input = (zacetno_stanje, [ Vstavi E1; Izberi "cokolada" ]);
          expected_output =
            Ok
              ( { nacin = Obratuje; kredit = 100; zaloga = zacetna_zaloga },
                [ Prikazi 100; Napaka (Premalo 20) ] );
          description =
            "Simulacija vstavljanja E1 in izbire 'cokolada' s premalo kredita";
        };
        {
          input =
            ( zacetno_stanje,
              [ ZacniVzdrzevanje; Dopolni ("cokolada", 5); KoncajVzdrzevanje ]
            );
          expected_output =
            Ok
              ( {
                  nacin = Obratuje;
                  kredit = 0;
                  zaloga =
                    [
                      { ime = "voda"; cena = 80; kolicina = 3 };
                      { ime = "cokolada"; cena = 120; kolicina = 6 };
                      { ime = "cips"; cena = 150; kolicina = 0 };
                    ];
                },
                [ Vrni []; Prikazi 0; Prikazi 0 ] );
          description = "Simulacija vzdrževanja in dopolnitve 'cokolada'";
        };
      ];
  }

let promet_suite =
  {
    name = "promet";
    fn = promet;
    cases =
      [
        {
          input =
            [
              Izdaj { izdelek = "voda"; cena = 80; drobiz = [] };
              Izdaj { izdelek = "cokolada"; cena = 120; drobiz = [] };
            ];
          expected_output = Ok 200;
          description = "Promet iz dveh prodanih izdelkov";
        };
        {
          input =
            [
              Izdaj { izdelek = "voda"; cena = 80; drobiz = [] };
              Napaka (Premalo 20);
            ];
          expected_output = Ok 80;
          description = "Promet iz enega prodanega izdelka in ene napake";
        };
        {
          input = [];
          expected_output = Ok 0;
          description = "Promet iz praznega seznama";
        };
      ];
  }

let napake_suite =
  {
    name = "napake";
    fn = napake;
    cases =
      [
        {
          input =
            [
              Napaka (Premalo 20);
              Izdaj { izdelek = "voda"; cena = 80; drobiz = [] };
              Napaka (NiIzdelka "čaj");
            ];
          expected_output = Ok [ Premalo 20; NiIzdelka "čaj" ];
          description = "Seznam napak iz izhodov";
        };
        {
          input = [ Izdaj { izdelek = "voda"; cena = 80; drobiz = [] } ];
          expected_output = Ok [];
          description = "Seznam napak iz izhodov brez napak";
        };
        {
          input = [];
          expected_output = Ok [];
          description = "Seznam napak iz praznega seznama";
        };
      ];
  }

let izplacani_kovanci_suite =
  {
    name = "izplacani_kovanci";
    fn = izplacani_kovanci;
    cases =
      [
        {
          input =
            [
              Izdaj { izdelek = "voda"; cena = 80; drobiz = [ C20; C10 ] };
              Vrni [ C50; C20 ];
            ];
          expected_output = Ok [ C20; C10; C50; C20 ];
          description = "Izplačani kovanci iz izhodov";
        };
        {
          input = [ Izdaj { izdelek = "voda"; cena = 80; drobiz = [] } ];
          expected_output = Ok [];
          description = "Izplačani kovanci iz izhodov brez drobiža";
        };
        {
          input = [];
          expected_output = Ok [];
          description = "Izplačani kovanci iz praznega seznama";
        };
      ];
  }

let prodano_suite =
  {
    name = "prodano";
    fn = prodano;
    cases =
      [
        {
          input =
            [
              Izdaj { izdelek = "voda"; cena = 80; drobiz = [] };
              Izdaj { izdelek = "cokolada"; cena = 120; drobiz = [] };
              Izdaj { izdelek = "voda"; cena = 80; drobiz = [] };
            ];
          expected_output = Ok [ ("voda", 2); ("cokolada", 1) ];
          description = "Dve prodaji izdelka 'voda' in ena izdelka 'cokolada'";
        };
        {
          input = [ Izdaj { izdelek = "voda"; cena = 80; drobiz = [] } ];
          expected_output = Ok [ ("voda", 1) ];
          description = "Ena prodaja izdelka 'voda'";
        };
        {
          input = [];
          expected_output = Ok [];
          description = "Prodano iz praznega seznama";
        };
      ];
  }
;;

run_suite sestej_v_3d_suite true;;
run_suite pomnozi_skalar_3d_suite true;;
run_suite skalarni_produkt_3d_suite true;;
run_suite sestej_v_suite true;;
run_suite pomnozi_skalar_suite true;;
run_suite skalarni_produkt_suite true;;
run_suite zlozi_levo_suite_int true;;
run_suite zlozi_levo_suite_list true;;
run_suite zlozi_desno_suite_int true;;
run_suite zlozi_desno_suite_list true;;
run_suite zlozi_levo_pretvori_suite true;;
run_suite zlozi_levo2_suite true;;
run_suite norma_suite true;;
run_suite skalarni_produkt_zlozi_suite true;;
run_suite vrednost_suite true;;
run_suite vsota_suite true;;
run_suite drobiz_suite true;;
run_suite v_niz_suite true;;
run_suite poisci_suite true;;
run_suite spremeni_kolicino_suite true;;
run_suite opis_napake_suite true;;
run_suite korak_suite true;;
run_suite simuliraj_suite true;;
run_suite promet_suite true;;
run_suite napake_suite true;;
run_suite izplacani_kovanci_suite true;;
run_suite prodano_suite true
