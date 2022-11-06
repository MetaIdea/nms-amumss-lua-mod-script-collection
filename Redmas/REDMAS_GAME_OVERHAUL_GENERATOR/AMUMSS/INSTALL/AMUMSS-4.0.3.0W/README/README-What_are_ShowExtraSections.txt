What are ShowExtraSections?

If you turn on '-SHOWEXTRASECTIONS' with 'Y' in BUILDMOD_AUTO.bat, what does it show?
___________________________________________________________________________________
It is mainly used for debugging purposes

Extra Sections (the 'X  n:' where 'n' is a number) show up after 'Section(s) found:'
and are of the form:

      Section(s) found:
                                Section
X  1:                    'Value'  'start - end' ('Trigger line')
___________________________________________________________________________________
They show the trail of operations from top to bottom leading to the sections used
The sections without the leading 'X:' (which are the '-SHOWSECTIONS' with 'Y')
that will be used by the '    Looking to >>>' requested actions based on
your script rules
___________________________________________________________________________________
SHOWEXTRASECTIONS Meaning:

Always start with 'Xnnn:' where nnn is a number

- 'Value'     Section was selected(modified) based on
   =====      ==================================================================================
    <->       The whole file
    
    SK1       SPECIAL_KEY_WORDS(UNIQUE)
    SKPK1     SPECIAL_KEY_WORDS(UNIQUE) and then PRECEDING_KEY_WORDS
    SKPKL     SPECIAL_KEY_WORDS(UNIQUE) and then the LAST PRECEDING_KEY_WORDS
    SKx       SPECIAL_KEY_WORDS(not UNIQUE)
    SKxPKx    SPECIAL_KEY_WORDS(not UNIQUE) and then PRECEDING_KEY_WORDS
    SKxPKL    SPECIAL_KEY_WORDS(not UNIQUE) and then the LAST PRECEDING_KEY_WORDS
    SKxPK0    SPECIAL_KEY_WORDS(not UNIQUE) and then the LAST PRECEDING_KEY_WORDS was not found
    SKxPK00   SPECIAL_KEY_WORDS(not UNIQUE) and then multiple PRECEDING_KEY_WORDS were not found
              
    UPS       SECTION_UP_SPECIAL was executed
    
    PK        PRECEDING_KEY_WORDS
    PKSK1     PRECEDING_KEY_WORDS and then SPECIAL_KEY_WORDS(UNIQUE)
    PKSKx     PRECEDING_KEY_WORDS and then SPECIAL_KEY_WORDS(not UNIQUE)
              
    UP        SECTION_UP was executed
    
    SI        SECTION_ACTIVE, this section is INACTIVE
    SA        SECTION_ACTIVE, this section is ACTIVE
    
    WiSec     WHERE_IN_SECTION
    WiSub     WHERE_IN_SUBSECTION
    
    RO        Due to the use of ADD/REMOVE, the sections are in reverse order (Bottom to top)
    
- 'start - end' are the Starting and Ending line of a section

- 'Trigger line' is the line that triggered the section to be selected
   based on the KEY_WORDS and other rules used
