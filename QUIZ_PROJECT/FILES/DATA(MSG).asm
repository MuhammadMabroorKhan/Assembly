;MENU
    QUIZ DB 0AH,0DH,0AH,0DH,'                  *             QUIZ GAME               *$' 
    A11 DB 0AH,0DH,0AH,0DH,'                  *************************************** ',0AH,0DH,'$'
    A12 DB '                  *                                     *$'
    A13 DB 0AH,0DH,'                  *                                     *$'
    A14 DB 0AH,0DH,'                  *************************************** ',0AH,0DH,'$'
    SPAC DB 20H,20H,20H,20H,20H,20H,20H,20H,20H,20H,20H,20H,20H,20H,20H,20H,20H,20H,'$'
    ONE DB 0AH,0DH,'                  *     1: MATH QUIZ                    *$'
    TWO DB 0AH,0DH,'                  *     2: PAKISTAN GK QUIZ             *$'
    THREE DB 0AH,0DH,'                  *     3: ISLAMIC STUDIES QUIZ         *$'
    FOUR DB 0AH,0DH,'                  *     4: COMPUTER SCIENCE QUIZ        *$'
    FIVE DB 0AH,0DH,'                  *     5: EXIT                         *$'
    CHOOSE DB 0AH,0DH,'                  *     ENTER CHOICE:                   *$'



 ;MESSAGES   
    MSG1 DB 0AH,0DH,'                .....WELCOME TO YOUR  QUIZ.....$'
    MSG2 DB 0AH,0DH,0AH,0DH,'Rules : ',0AH,0DH,"$"
    MSG3 DB 0AH,0DH,'*. For Every Correct answer you will get 1 point.$'
    MSG4 DB 0AH,0DH,'*. For Every Wrong answer YOU WILL GET 0 POINT.$'
    MSG5 DB 0AH,0DH,0AH,0DH,'Press Enter to start the quiz : $'
    MSG6 DB 0AH,0DH,'Right Answer....',0AH,0DH,"$"
    MSG7 DB 0AH,0DH,'Wrong Answer....',0AH,0DH,"$"
    MSG8 DB 0AH,0DH,0AH,0DH,'You have successfully completed your quiz.$'
    MSG9 DB 0AH,0DH,0AH,0DH,'Your Total obtained point is : $'
    MSG10 DB 0AH,0DH,0AH,0DH,'Press 1 FOR MENU or 0 to Exit.$' 
    MSG11 DB 0AH,0DH,0AH,0DH,0AH,0DH,'                    ***Thank you.! ***$'
        

;;; QUESTIONS
    Q1 DB 0AH,0DH,0AH,0DH,0AH,0DH,'1. 2+3=?$'
    QA1 DB 0AH,0DH,'   a) 5    b) 6    c) 7',0AH,0DH,"$"
    Q2 DB 0AH,0DH,0AH,0DH,'2. 5+6=?$'
    QA2 DB 0AH,0DH,'   a) 10    b) 11    c) 12',0AH,0DH,"$"
    Q3 DB 0AH,0DH,0AH,0DH,'3. 15-12=?$'
    QA3 DB 0AH,0DH,'   a) 5    b) 1    c) 3',0AH,0DH,"$"
    Q4 DB 0AH,0DH,0AH,0DH,'4. 3*6=?$'
    QA4 DB 0AH,0DH,'   a) 10    b) 18    c) 12',0AH,0DH,"$"
    Q5 DB 0AH,0DH,0AH,0DH,'5. 6/3=?$'
    QA5 DB 0AH,0DH,'   a) 2    b) 1    c) 12',0AH,0DH,"$"
    Q6 DB 0AH,0DH,0AH,0DH,'6. 8-8=?$'
    QA6 DB 0AH,0DH,'   a) -1    b) -2    c) 0',0AH,0DH,"$"
    Q7 DB 0AH,0DH,0AH,0DH,'7. 3*12=?$'
    QA7 DB 0AH,0DH,'   a) 33    b) 36    c) 38',0AH,0DH,"$"
    Q8 DB 0AH,0DH,0AH,0DH,'8. 9*9=?$'
    QA8 DB 0AH,0DH,'   a) 72    b) 91    c) 81',0AH,0DH,"$"
    Q9 DB 0AH,0DH,0AH,0DH,'9. 11+13=?$'
    QA9 DB 0AH,0DH,'   a) 24    b) 26    c) 19',0AH,0DH,"$"
    Q10 DB 0AH,0DH,0AH,0DH,'10. 56/8=?$'
    QA10 DB 0AH,0DH,'   a) 7    b) 9    c) 6',0AH,0DH,"$" 

    COUNT DB 0
    NL DB 0AH,0DH,"$" 

;GK PAKISTAN
    ;A
    P1 DB 0AH,0DH,0AH,0DH,"1. According to population, which is the largest city in Pakistan?$ "
    PA1 DB 0AH,0DH,'   a) KARACHI    b) ISLAMABAD    c) LAHORE',0AH,0DH,"$"
    ;A
    P2 DB 0AH,0DH,0AH,0DH,"2. What is the name of the highest peak of Pakistan?$ "
    PA2 DB 0AH,0DH,'   a) K-2    b) MOUNT EVEREST    c) HIMALIYA',0AH,0DH,"$"
    ;A  
    P3 DB 0AH,0DH,0AH,0DH,"3. In which year did Pakistan win the Cricket World Cup?$ "
    PA3 DB 0AH,0DH,'   a) 1992    b) 1996    c) 1987',0AH,0DH,"$"
    ;A
    P4 DB 0AH,0DH,0AH,0DH,"4. What is the national flower of Pakistan?$ "
    PA4 DB 0AH,0DH,'   a) JASMINE    b) ROSE    c) LOTUS',0AH,0DH,"$"
    ;B
    P5 DB 0AH,0DH,0AH,0DH,"5. Which is the national language of Pakistan?$ "
    PA5 DB 0AH,0DH,'   a) HINDI    b) URDU    c) ENGLISH',0AH,0DH,"$"
    ;B
    P6 DB 0AH,0DH,0AH,0DH,"6. Which is the national animal of Pakistan?$ "
    PA6 DB 0AH,0DH,'   a) LION    b) MARKHOR    c) TIGER',0AH,0DH,"$"
    ;B
    P7 DB 0AH,0DH,0AH,0DH,"7. Which is the national bird of Pakistan?$ "
    PA7 DB 0AH,0DH,'   a) PEACOCK   b) EAGLE    c) CROW',0AH,0DH,"$"
    ;B
    P8 DB 0AH,0DH,0AH,0DH,"8. Which is the national GAME of Pakistan?$ "
    PA8 DB 0AH,0DH,'   a) CRICKET   b) HOCKEY    c) BADMENTON',0AH,0DH,"$"
    ;B 
    P9 DB 0AH,0DH,0AH,0DH,"9. Pakistan successfully conducted its nuclear tests on 28 May$ "
    PA9 DB 0AH,0DH,'   a) 1996   b) 1998    c) 2000',0AH,0DH,"$"
    ;C 
    P10 DB 0AH,0DH,0AH,0DH,"10. K2 the second highest mountain in the world is located along the border of Pakistan and$ "
    PA10 DB 0AH,0DH,'   a) INDIA   b) IRAN    c) CHINA',0AH,0DH,"$"


;;;ISLAMIC
    ;A
    IS1 DB 0AH,0DH,0AH,0DH,0AH,0DH,'1.  _____ is the shortest Surah Of the Holy Quran.$'
    ISA1 DB 0AH,0DH,'   a) AL-Kauthar    b) Al-Naas    c) Al-Ikhlas',0AH,0DH,"$"
    ;A
    IS2 DB 0AH,0DH,0AH,0DH,'2. The longest Surah Of the Holy Quran is _____.$'
    ISA2 DB 0AH,0DH,'   a) AL-Baqarah    b) Al-Nisa    c) Al-Maida',0AH,0DH,"$"
    ;A
    IS3 DB 0AH,0DH,0AH,0DH,'3. There are_____ Makki Surahs in the Holy Quran.$'
    ISA3 DB 0AH,0DH,'   a) 86    b) 88    c) 84',0AH,0DH,"$"
    ;A
    IS4 DB 0AH,0DH,0AH,0DH,'4. 32. There are_____ Madani Surahs in the Holy Quran.$'
    ISA4 DB 0AH,0DH,'   a) 28    b) 26    c) 24',0AH,0DH,"$"
    ;A
    IS5 DB 0AH,0DH,0AH,0DH,'5. 31. There are_____ Prostration (Sajdas)in the Holy Quran.$'
    ISA5 DB 0AH,0DH,'   a) 14    b) 13    c) 11',0AH,0DH,"$"
    ;B
    IS6 DB 0AH,0DH,0AH,0DH,'6. The Holy Quran was revealed in _____.$'
    ISA6 DB 0AH,0DH,'   a) Persian    b) Arabic   c) ENGLISH',0AH,0DH,"$"
    ;B
    IS7 DB 0AH,0DH,0AH,0DH,'7. 2. _____ is referred in the Quran as Rooh-ul-Ameen.$'
    ISA7 DB 0AH,0DH,'   a) All of the above   b) Hazrat Jibrael (AS)    c) Hazrat Israfeel (AS)',0AH,0DH,"$"
    ;B
    IS8 DB 0AH,0DH,0AH,0DH,'8. 10. Which Surah of Quran has Bismillah twice?$'
    ISA8 DB 0AH,0DH,'   a) Al Noor    b) Al Namal    c) Al Ahzaab',0AH,0DH,"$"
    ;C
    IS9 DB 0AH,0DH,0AH,0DH,'9. 9. In which Surah the of Holy Quran there is mention of Zulqarnain?$'
    ISA9 DB 0AH,0DH,'   a) Yusuf    b) Al Mujadala    c) Alkahaf',0AH,0DH,"$"
    ;C
    IS10 DB 0AH,0DH,0AH,0DH,'10. The Angel who delivered messages to Prophet Muhammad (PBUH) from Allah was?$'
    ISA10 DB 0AH,0DH,'   a) Mikael (A.S)    b) Izraeel (A.S)    c) Jibrael (A.S)',0AH,0DH,"$"

              ;COMPUTER SCIENCE
    ;A
    F1 DB 0AH,0DH,0AH,0DH,"1. WWW stands for___________?$ "
    FA1 DB 0AH,0DH,'   a) World Wide Web    b) Web World Wide    c) World Whole Web',0AH,0DH,"$"
    ;A
    F2 DB 0AH,0DH,0AH,0DH,"2. Gigabyte is equal to ____________?$ "
    FA2 DB 0AH,0DH,'   a) 1024 megabytes    b) 1024 KILObytes    c) 1024 bits',0AH,0DH,"$"
     ;A  
    F3 DB 0AH,0DH,0AH,0DH,"3. The brain of any computer system is___________?$ "
    FA3 DB 0AH,0DH,'   a) CPU    b) ALU    c) MEMORY',0AH,0DH,"$"
 ;A
    F4 DB 0AH,0DH,0AH,0DH,"4. which one is Digital device, select from the choices below??$ "
    FA4 DB 0AH,0DH,'   a) Digital Clock    b) Clock with a dial and two hands    c) BOTH (a & b)',0AH,0DH,"$"
    ;B
    F5 DB 0AH,0DH,0AH,0DH,"5. The computer that process both analog and digital is called____________?$ "
    FA5 DB 0AH,0DH,'   a) Digital computer    b) Hybrid computer    c) Analog computer',0AH,0DH,"$"
    ;B
    F6 DB 0AH,0DH,0AH,0DH,"6. ALU is____________?$ "
    FA6 DB 0AH,0DH,'   a) Array Logic Unit    b) Arithmetic Logic Unit    c) Application Logic Unit',0AH,0DH,"$"
    ;B
    F7 DB 0AH,0DH,0AH,0DH,"7. Which device is required for the Internet connection?$ "
    FA7 DB 0AH,0DH,'   a) Joystick   b) Modem    c) CD DRIVE',0AH,0DH,"$"
    ;B
    F8 DB 0AH,0DH,0AH,0DH,"8. Which of the following is a part of the Central Processing Unit?$ "
    FA8 DB 0AH,0DH,'   a) MOUSE   b) . Arithmetic & Logic unit    c) PRINTER',0AH,0DH,"$"
    ;B 
    F9 DB 0AH,0DH,0AH,0DH,"9. Junk e-mail is also called_________?$ "
    FA9 DB 0AH,0DH,'   a) SPOOF   b) spam    c) SPOOL',0AH,0DH,"$"
    ;C 
    F10 DB 0AH,0DH,0AH,0DH,"10. __________represents raw facts, where-as__________is data made meaningful?$ "
    FA10 DB 0AH,0DH,'   a) Information, reporting   b) Information, BITS    c)  Data, information',0AH,0DH,"$"

