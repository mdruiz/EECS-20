
               .ORIG x4000

               LEA R0, LABEL1

               TRAP x22

               LEA R0, LABEL4

               TRAP x22

	       LEA R0, LABEL2

	       TRAP X22

	       LEA R0, LABEL4

               TRAP x22

	       LEA R0, LABEL3

	       TRAP X22

               TRAP x25

LABEL1 .STRINGZ "MARIO"

LABEL2 .STRINGZ "RUIZ"

LABEL3 .STRINGZ "COMPUTER ENGINEERING"

LABEL4 .STRINGZ "\n"

                .END