# RoA-Log
Logbog til Robotter og Automatisering

22-8-2023:
Vi blev introduceret til vores NodeMCU's samt fik vi til opgave at lege og lave et lille projekt hvor vi skulle få Dioderne indbygget i NodeMCU'erne til at blinke i takt og tempo vi selv vælger.

29-8-2023
Vi fik udleveret tingene til trafiklys opgaven, samt fik udleveret en knap. Dagen gik på at Tobias fremviste hvordan man kunne registrere tryk fra knappen til at styre LED lyset på NodeMCU'en. Derudover fik valgte vi i vores gruppe at lege med en stepper motor, som vi vil arbejde videre med imorgen.

30-8-2023
Vi brugte dagen først på at få vores trafiklys til at virke, det var ret tricky da vi alle havde været syge på dagen resten af klassen fik udleveret breadboards og forklaring på hvordan det hele fungerer, så dagen startede med en del research, men vi fik til sidst trafiklyset til at virke.
Derefter begyndte vi at kigge på Steppermotoren. Vi kunne ikke få den til at virke og efter noget tids frustrationer, så sendte vi Tobias en sms om hjælp - fejlen lå i at vi ikke havde overvejet hvor meget strøm usben fra computeren giver (det var ikke nok) og at vi derfor skulle bruge en ekstern strømforsyning.
Vi fik Motoren til at steppe og lod den køre i et minuts tid, men efter det mener vi at vi har fået brændt chippen af. Vi kunne derfor ikke lave videre på den.


31-8-2023
Idag skulle vi forsøge at få en wifi forbindelse til vores NodeMCU's WiFi chip. Jeg kunne ikke få det til at fungere før jeg fik undersøgt lidt. Problemet lå i at vores Node kører med en anden BAUD rate end det vores projekt krævede (115200), jeg fik fikset problemet ved at indsætte monitor_speed = 115200 ind i platformio.ini filen, som derved sætter monitor_speed (baud raten) til 115200. derved blev det gjort muligt via koden at få opretten en forbinnelse. Igennem denne forbindelse kunne NodeMCU dioderne styres.

//Ekstra til 31-08
Baud rate er hvad der afgører hvor hurtigt der fremkommer signal skift (signal change) i sekundet, og derved afgører hastigheden på data overførelsen.

5-9-2023
Idag blev vi introduceret til 3D printerne, samt fik installeret OpenSCAD samt et overlay tobias har udviklet, så vi kan kode figurer i et miljø vi bedre kender. 


7-9-2023
Idag stod den på 3D printing, Tobias fremviste hvordan man kunne forme en lille holder til NodeMCU v2'eren. Vi fik til opgave at upscale den selvsamme model, men bare til v3'eren (den større model). Jeg fik næsten gjort det færdigt, men det lykkedes ikke helt.

22-9-2023
Idag startede vi dagen ud med, at tobias forklarede forskellige muligheder der er for 3d print. Derefter fik vi vores eksamens projekt hvor at vores består af, at vi skal lave en holder til en lille motor.
Vi startede ud med at tale om hvordan vi ville gribe opgaven an, men det endte med at vi havde misforstået hinanden på hvilken led af motoren vi lavede vores model efter, så det var noget rod med mål i starten.
Vi fik lavet det grove af den og har tænkt os at fortsætte med noget af det finere på tirsdag.

26-9-2023
Vi sad på Discord i dag, hvor vi fik extruded vores main body. Vi målte også og fik lavet hængslen i toppen. Målene vi har brugt i dag er grove da de er målt med en tommelstok, og nærmere/mere præcise mål vil blive taget i skolen.

29-9-2023
Endnu en dag med Discord. Vi fik lavet den nederste halvdel af motoren, hvor vi bestemte os for at en rektangel ville give mest mening, i stedet for 2 "cirkler" (pga. plastik beskyttelsen). Derudover fik vi tilføjet de 2 kroge på siden (ved at lave 2 firkanter - 1 på hver side), som plastik beskyttelsen sidder fast på.

3-10-2023
Vi sad på Discord igen i dag. Super produktiv dag. Vi fik finpudset den nederste halvdel af vores model, således at den fik afrundede sider frem for at være 100% rektangulære. Dertil fik vi tilføjet motorarmene til figuren. Vi fandt derudover ud af hvordan man kan se en udhulet version af modellen, via "View Wireframe (F11)", hvilket hjælper på mere præcise mål i fremtiden frem for konstante udregninger.

6-10-2023
Vi tog over på skolen idag for at få rettet på målene, samt diskutere hvordan vi skal få lavet den nedre del, således at boksen har plads til plastikken. Undervejs fandt vi ud af, at det ville give bedst mening at forskyde "main box" så den starter på 0, da det blev noget bøvl at regne de andre dele af motorens positioner ud. Plastikken er dog stadigt ikke lavet, og ville derfor give mening at lave i weekenden, så vi har tid til at lave boksen + noget kode som hører med til motoren.

//edit til 6-10-2023, jeg fik lavet plastik delen hjemmefra, samt tilføjet en lille dut på undersiden af motoren.
