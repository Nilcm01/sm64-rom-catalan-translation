<CAT> Informació i instruccions de les eines pròpies de SM64-CAT.

    - sm64-cat_script-NSC.sh: Analitza qualsevol arxiu .txt i hi substitueix les lletres accentuades, la ç trencada i el punt volat '·' per les seves versions 'normals'. Està orientat per a ser emprat amb els arxius "/text/us/dialogs.h" i "/text/us/courses.h", on cap dels caràcters està admès. Funcionament:

        + REQUERIMENTS PREVIS: Aquest script ha de ser execuat mitjançant un terminal de llenguatge BASH (Linux com p.ex Ubuntu o terminal de Windows/PowerShell mitjançant la comanda "bash"). Cal que l'arxiu a modificar es trobi a la mateixa carpeta que l'executable i que el terminal que es vagi a fer servir es trobi en aquell directori (podeu navegar per les carpetes fent servir la comanda "cd"). Mentre l'execució es trobi en marxa NO tanqueu el terminal. Sabreu que ha acabat perquè tornarà a aparèixer el text amb el nom d'usuari i el símbol '>'
        
        + EXECUTAR A WINDOWS: Fer servir CMD/PS al directori > bash ./sm64-cat_script-NSC.sh arxiuAnalitzar.txt
        + EXECUTAR A LINUX: Fer servir el terminal al directori > ./sm64-cat_script-NSC.sh arxiuAnalitzar.txt

        + SORTIDA: L'script generarà un arxiu al mateix directori amb nom "outputNSC.txt" amb el text modificat.

    - sm64-cat_script-AtJ.sh: Analitza qualsevol arxiu .txt i hi substitueix les lletres accentuades, la ç trencada i el punt volat '·' per un caràcter japonès que el compilador fa que aparegui com el caràcter especial original. Està orientat per a ser emprat amb els arxius "/text/us/dialogs.h" i "/text/us/courses.h" Funcionament:

        + REQUERIMENTS PREVIS: Aquest script ha de ser execuat mitjançant un terminal de llenguatge BASH (Linux com p.ex Ubuntu o terminal de Windows/PowerShell mitjançant la comanda "bash"). Cal que l'arxiu a modificar es trobi a la mateixa carpeta que l'executable i que el terminal que es vagi a fer servir es trobi en aquell directori (podeu navegar per les carpetes fent servir la comanda "cd"). Mentre l'execució es trobi en marxa NO tanqueu el terminal. Sabreu que ha acabat perquè tornarà a aparèixer el text amb el nom d'usuari i el símbol '>'
        
        + EXECUTAR A WINDOWS: Fer servir CMD/PS al directori > bash ./sm64-cat_script-AtJ.sh arxiuAnalitzar.txt
        + EXECUTAR A LINUX: Fer servir el terminal al directori > ./sm64-cat_script-AtJ.sh arxiuAnalitzar.txt

        + SORTIDA: L'script generarà un arxiu al mateix directori amb nom "outputAtJ.txt" amb el text modificat.


<ENG> Information and instructions of the SM64-CAT own tools.

    - sm64-cat_script-NSC.sh: Analizes any .txt file and changes all letters with accents, the 'Ç' and the 'flying' dot '·' with the 'normal' versions of each one. It is meant to be used with "/text/us/dialogs.h" and "/text/us/courses.h" files, where any of those characters are allowed.

        + PREVIOUS REQUIREMENTS: This script has the be executed using a BASH language-based terminal (Linux i.eg Ubuntu or Windows Terminal/PowerShell via the "bash" command). The file to be modified must be located on the same directory as the executable and the terminal to be used must be on that same directory (directories can be navigated using the "cd" command). While the execution is active do NOT close the terminal. The end of the execution can be identified when the text line with the username and the '>' symbol reapear.

        + EXECUTE ON WINDOWS: Use CMD/PS on the directory > bash ./sm64-cat_script-NSC.sh arxiuAnalitzar.txt
        + EXECUTE ON LINUX: Use the terminal on the directory > ./sm64-cat_script-NSC.sh arxiuAnalitzar.txt

        + OUTPUT: The script will generate a file on the same directory with the name "outputNSC.txt" containing the modified text.

    - sm64-cat_script-NSC.sh: Analizes any .txt file and changes all letters with accents, the 'Ç' and the 'flying' dot '·' with the Japanese character for which the compilator will display the original special character. It is meant to be used with "/text/us/dialogs.h" and "/text/us/courses.h".

        + PREVIOUS REQUIREMENTS: This script has the be executed using a BASH language-based terminal (Linux i.eg Ubuntu or Windows Terminal/PowerShell via the "bash" command). The file to be modified must be located on the same directory as the executable and the terminal to be used must be on that same directory (directories can be navigated using the "cd" command). While the execution is active do NOT close the terminal. The end of the execution can be identified when the text line with the username and the '>' symbol reapear.

        + EXECUTE ON WINDOWS: Use CMD/PS on the directory > bash ./sm64-cat_script-AtJ.sh arxiuAnalitzar.txt
        + EXECUTE ON LINUX: Use the terminal on the directory > ./sm64-cat_script-AtJ.sh arxiuAnalitzar.txt

        + OUTPUT: The script will generate a file on the same directory with the name "outputAtJ.txt" containing the modified text.