��    [      �     �      �     �  �   �  �   �    /	    A     G     c  >   y      �  %   �     �  4        E  "   ]  3   �     �     �     �  2   
     =     Z  3   q     �     �     �     �          0     ?     S     g     {     �     �     �  4   �  -     9   G  5   �  /   �     �  $   �     !     :  !   Q     s  Q   �     �     �  +         ,  F   =     �     �  .   �     �     �  !   �       J   9  &   �  
   �     �     �  5   �          =  A   N  	   �  ,   �  A   �  <   	  B   F  3   �  :   �  }   �     v  $   �  :   �  ,   �  :     >   Q     �     �  >   �  
   �     �  +   �  (   *  '   S  �  {       �   +  �   �  S  �    �!     �"     #  2   (#     [#  .   {#     �#  3   �#     �#  %   $  7   1$      i$     �$  !   �$  :   �$     %  $   %  2   A%     t%     �%     �%     �%     �%     �%     &     &     7&     K&     \&  %   y&  &   �&  6   �&  0   �&  ;   .'  /   j'  .   �'     �'  (   �'     (     ((  $   B(     g(  Z   �(  !   �(     )  0   )     7)  J   E)     �)  #   �)  0   �)     �)     *  &   *  !   7*  A   Y*  *   �*  	   �*  #   �*     �*  3   	+     =+     W+  ;   f+     �+  4   �+  =   �+  >   #,  >   b,  /   �,  D   �,  �   -     �-  /   �-  =   �-  4   .  9   R.  =   �.     �.     �.  =   �.     /     %/  3   ?/  4   s/  3   �/            3   [      P   ,   E                    :      !   >      M             #   ?   7   S   Z   (      X       '                    9      ;              %           +                   *   =   @       I   B   D                   $       N      R   C   K   "       .   G                  O   Y       W   -   H   1      A   &                 0          
             L      U   2   F   Q      5         6           /              4   V       )   	   J   8       <       T    
Connection timed out
 
Parameters:
  -f        Run process in foreground.
  -n        Do not use broadcast packets. Just a tad less insecure.
  -o        Use MD5 for password hashing.
  -h        This help.

 
Parameters:
  -n        Do not use broadcast packets. Just a tad less insecure.
  -o        Use MD5 for password hashing.
  -h        This help.

 
Parameters:
  MAC            MAC-Address of the RouterOS/mactelnetd device. Use mndp to
                 discover it.
  identity       The identity/name of your destination device. Uses
                 MNDP protocol to find it.
  -l             List/Search for routers nearby (MNDP). You may use -t to set timeout.
  -B             Batch mode. Use computer readable output (CSV), for use with -l.
  -n             Do not use broadcast packets. Less insecure but requires
                 root privileges.
  -a <path>      Use specified path instead of the default: %s for autologin config file.
  -A             Disable autologin feature.
  -t <timeout>   Amount of seconds to wait for a response on each interface.
  -u <user>      Specify username on command line.
  -p <password>  Specify password on command line.
  -U <user>      Drop privileges to this user. Used in conjunction with -n
                 for security.
  -q             Quiet mode.
  -o             Force old MD5 authentication algorithm.
  -h             This help.

 
Parameters:
  MAC       MAC-Address of the RouterOS/mactelnetd device.
  -f        Fast mode, do not wait before sending next ping request.
  -s        Specify size of ping packet.
  -c        Number of packets to send. (0 = unlimited)
  -h        This help.

 

Daemon shutting down.
   up %d days %d hours %d packets transmitted, %d packets received, %d%% packet loss
 %s %d byte, ping time %.2f ms%s
 %s Reply of %d bytes of unequal data
 %s ping timeout
 (%d) Connection closed because interface %s is gone. (%d) Connection closed. (%d) Connection to user %s closed. (%d) Could not log in %s (%d:%d): setuid/setgid: %s (%d) Error allocating memory. (%d) Invalid login by %s. (%d) Invalid mtwei key by %s. (%d) Login ok, but local user not accessible (%s). (%d) New connection from %s. (%d) Session timed out (%d) Unhandeled control packet type: %d, length: %d (%d) Unhandeled packet type: %d (%d) User %s disconnected with  (%d) User %s logged in. (%d) Waiting for ack
 An error occurred. aborting
 Bound to %s:%d Connecting to %s... Connection closed.
 Connection failed.
 Daemon shutting down Error binding to %s:%d
 Error binding to %s:%d, %s
 Error initializing md5 context
 Error on line %d in %s: Identifier string too long.
 Error on line %d in %s: Key string too long.
 Error on line %d in %s: New line in middle of identifier
 Error on line %d in %s: Newline before '=' character
 Error on line %d in %s: Value string too long.
 Error opening %s: %s Error opening autologin file %s: %s
 Error opening terminal
 Error sending packet.
 Error: No suitable devices found
 Error: md5 digest not found
 Failed dropping privileges. The user %s is not a valid username on local system.
 Failed to drop privileges
 IP Identity (platform version hardware) uptime Internal error
 Invalid salt length: %d (instead of 16 or 49) received from server %s
 Listening on %s for %s
 Local user not accessible
 Login failed, incorrect username or password
 Login:  MAC-Address MNDP: Error binding to %s:%d, %s
 No devices found! Exiting.
 Number of packets to send must be more than 0 and up to 100 in fast mode.
 Packet size must be between 18 and %d
 Password:  SIGHUP: Reloading interfaces Searching for '%s'... Searching for MikroTik routers... Abort with CTRL+C.
 System error, out of memory
 Terminal error
 The -U option must be used in conjunction with the -n parameter.
 Timeout
 Unable to find any valid network interfaces
 Unable to send broadcast packet: Operating in receive only mode.
 Unable to send broadcast packet: Router lookup will be slow
 Unable to send broadcast packets: Operating in receive only mode.
 Unhandeled packet type: %d received from server %s
 Usage: %s <MAC> [-h] [-f] [-c <count>] [-s <packet size>]
 Usage: %s <MAC|identity> [-nqoA] [-a <path>] [-t <timeout>] [-u <user>] [-p <password>] [-U <user>] | -l [-B] [-t <timeout>]
 Usage: %s [-fnoh]
 Using autologin credentials from %s
 Warning on line %d of %s: Unknown parameter %s, ignoring.
 You need to have root privileges to use %s.
 You need to have root privileges to use the -n parameter.
 add_control_packet: ERROR, too large packet. Exceeds %d bytes
 done
 found
 mndp_add_attribute: ERROR, too large packet. Exceeds %d bytes
 not found
 packet size too large
 round-trip min/avg/max = %.2f/%.2f/%.2f ms
 setgid: Error dropping group privileges
 setuid: Error dropping user privileges
 Project-Id-Version: mactelnet
Report-Msgid-Bugs-To: haakon.nessjoen@gmail.com
PO-Revision-Date: 2024-04-05 09:27+0200
Last-Translator: Håkon Nessjøen <haakon.nessjoen@gmail.com>
Language-Team: Håkon Nessjøen <haakon.nessjoen@gmail.com>
Language: nb
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 3.4.2
X-Poedit-SourceCharset: UTF-8
 
Tilkoblingen fikk tidsavbrudd
 
Parametere:
  -f        Kjør prosessen i forgrunn.
  -n        Ikke bruk broadcast pakker. Bare såvidt litt mer usikkert.
  -o        Bruk gammel MD5-autentiseringsalgoritme
  -h        Denne hjelpen.

 
Parametere:
  -n        Ikke bruk broadcast pakker. Bare såvidt litt mer usikkert.
  -o        Bruk gammel MD5-autentiseringsalgoritme
  -h        Denne hjelpen.

 
Parametere:
  MAC            MAC-Adressen til RouterOS/mactelnetd enheten. Bruk mndb for
                 å finne den.
  identitet      Identiteten til enheten. Bruker MNDP protokollen
                 til å finne den.
  -l             List/Søk etter routere i nærheten (bruker MNDP). Du kan 
                 bruke -t til å sette timeout.
  -B             Batch modus. Gir datamaskin-lesbar info for data fra -l.
  -n             Ikke bruk broadcast pakker. Mindre usikkert, men bruker
                 root privilegier.
  -a <path>      Bruk denne mappen isteden for: %s for autologin konfigurasjonsfil.
  -A             Skru av atuologin funksjonalitet.
  -t <tidsbegr.> Antall sekunder å vente for respons på hvert grensesnitt.
  -u <user>      Spesifiser brukernavn på kommando-linjen.
  -p <password>  Spesifiser passord på kommando-linjen.
  -U <user>      Dropp rettigheter ned til denne brukeren. Brukes i forbindelse
                 med -n for sikkerhet.
  -q             Stille-modus.
  -o             Tving bruk av gammel MD5-autentiseringsalgoritme.
  -h             Denne hjelpen.

 
Parametere:
  MAC       MAC-Adressen til RouterOS/mactelnetd enheten.
  -f        Hurtig-modus, send ping forespørsler uten pause.
  -s        Spesifiser pakkestørrelsen.
  -c        Antall pakker som skal sendes. (0 = uendelig)
  -h        Denne hjelpen.

 

Tjener avslutter.
  oppe %d dager %d timer %d pakker sendt, %d pakker mottatt, %d%% pakketap
 %s %d byte, ping tid %.2f ms%s
 %s Retur av %d byter med usammensvarende data
 %s ping tidsavbrudd
 (%d) Tilkobling lukket på grunn av at %s er borte. (%d) Tilkobling lukket. (%d) Tilkobling til bruker %s lukket. (%d) Kunne ikke logge inn %s (%d:%d): setuid/setgid: %s (%d) Klarer ikke allokere minne. (%d) Ugyldig login av %s. (%d) Ugyldig mtwei nøkkel av %s. (%d) Login ok, men lokal bruker er ikke tilgjengelig (%s). (%d) Ny tilkobling fra %s. (%d) Sesjonen utgikk på tidsavbrudd (%d) Uhåndtert kontrollpakke-type: %d, lengde: %d (%d) Uhåndtert pakke-type: %d (%d) Bruker %s frakoblet med  (%d) Bruker %s logget inn. (%d) Venter på ack
 En feil oppstod. avbryter
 Bundet to %s:%d Kobler til %s… Tilkoblingen ble lukket.
 Tilkobling feilet.
 Tjener avslutter Klarte ikke binde mot %s:%d
 Problemer med å binde til %s:%d, %s
 Klarte ikke initialisere md5 kontekst
 Feil på linje %d i %s: Identifikatorstreng for lang.
 Feil på linje %d i %s: Nøkkelstreng for lang.
 Feil på linje %d i %s: Ny linje midt inni identifikatoren
 Feil på linje %d i %s: Ny linje før '=' tegn
 Feil på linje %d i %s: Strengverdi for lang.
 Klarer ikke åpne %s: %s Klarer ikke åpne autologinfilen %s: %s
 Klarer ikke åpne terminal
 Klarte ikke sende pakke.
 Feil: Ingen brukbare enheter funnet
 Feil: md5 funksjon ikke funet
 Klarte ikke slippe tilgangsnivå. Brukernavnet %s er ikke gyldig på det lokale systemet.
 Klarte ikke slippe tilgangsnivå
 IP Identitet (plattform versjon maskinvare) oppetid Intern feil
 Ugyldig saltlengde: %d (i stedet for 16 eller 49) mottatt fra serveren %s
 Lytter på %s for %s
 Lokal bruker er ikke tilgjengelig
 Login feilet, ugyldig brukernavn eller passord
 Bruker:  MAC-Adresse MNDP: Klarte ikke binde til %s:%d, %s
 Ingen enheter funnet! Avslutter.
 Antall pakker må være mer enn 0 og opp til 100 i hurtig-modus.
 Pakkestørrelse må være mellom 18 og %d
 Passord:  SIGHUP: Laster grensesnitt på nytt Søker etter '%s'... Søker etter MikroTik rutere… Avbryt med CTRL+C.
 Systemfeil, minne fullt
 Terminalfeil
 -U parameteren må brukes i sammenheng med -n parameteren.
 Tidsavbrudd
 Klarte ikke finne noen gyldige nettverksgrensesnitt
 Klarer ikke sende broadcast pakke: Jobber i kun-motta-modus.
 Klarer ikke sende broadcast pakke: Ruter søk vil være tregt
 Klarer ikke sende broadcast pakker: Jobber i kun-motta-modus.
 Uhåndtert pakketype: %d mottatt fra server %s
 Bruksmåte: %s <MAC> [-h] [-f] [-c <antall>] [-s <pakkestørrelse>]
 Bruk: %s <MAC|identitet> [-nqoA] [-a <bane>] [-t <timeout>] [-u <bruker>] [-p <passord>] [-U <bruker>] | -l [-B] [-t <timeout>]
 Bruksmåte: %s [-fnoh]
 Bruker autologin-påloggingsinformasjon fra %s
 Advarsel på linje %d i %s: Ugyldig parameter %s, ignorerer.
 Du trenger superbruker-rettigheter for å bruke %s.
 Du trenger root privilegier for å bruke -n parameteren.
 add_control_packet: FEIL, for stor pakke. Overstiger %d byte
 ferdig
 funnet
 mndp_add_attribute: FEIL, for stor pakke. Overstiger %d byte
 ikke funnet
 pakkestørrelse for stor
 returtid min/gjennomsnitt/maks = %.2f/%.2f/%.2f ms
 setgid: Klarte ikke slippe tilgangsnivå for gruppe
 setud: Klarte ikke slippe tilgangsnivå for bruker
 