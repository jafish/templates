FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ;5
	# DESCRIPTION
	
	This script looks for a Template folder and asks you to pick one of the templates within to create 
	an instance of. It then allows you to select a folder for the instance and to choose the desired values
	for any variables designated in the last paragraph of the project's note (by default, "$" before a word
	designates it as a variable, an ode to my favorite CSS preprocessor, SASS).
	
	Some other goodies:
		-	You can specify relative start or due dates (one or the other, not both� yet) for the project
			and/or each task individually. To do so, put a paragraph somewhere in the note of that item that
			starts with either "Due" or "Start". Then use the same natural language date syntax as you can usually
			use in OmniFocus/ my "Later" Applescript: things like "today + 2d", "2d", "3w 4d 2pm", etc., will all
			work as expected, hopefully. All of these will be relative to the date you run the script.
		-	Variables can be used in project names and notes, task names and notes, and task context names
		-	On the first run it detects if you have projects using Curt Clifton's OmniFocus template syntax
			(to which I owe a lot of the good ideas in this script) and offers to change it for you.
		-	It offers to show you the new instance of the template once it has populated the instance.
		-	Automagically changes the new project instance to "Active" if the template project was "On Hold"
	
	
	# LICENSE
	
	Use it, change it, enjoy it. Please don't blatently pass off my work as your own. Be cool.
	
	
	# INSTALLATION
	
	-	Copy this script to ~/Library/Scripts/Applications/Omnifocus (you may have to use the
		Go > Go to Folder� menu in your file navigation application of choice as the user library
		folder is hidden on Mac OS X 10.7+. After you select this menu item, type the path above and
		hit enter).
	-	If you prefer, you can have this script be activated by a utility like Keyboard Maestro or FastScripts
	
	
	# VERSION INFORMATION
		
		0.3.6 (March 27, 2013): Bugfixes. You can also now specify a specific folder path as the default folder using > for a subfolder 
		(i.e., ">>>Folder > Subfolder" will put the new instance in Subfolder under Folder).
		0.3.5 (March 18, 2013): Added the ability to set dates in the format specified in as the short date format
		in your Languages and Text preference pane.
		0.3.1 (February 28, 2013): Bugfixes.
		0.3.0 (February 24, 2013): Fixed an issue with subtracting dates. Improved Growl alerts. Added an option to put "attachment: ask" in
		the task notes to have the script ask you for an attachment to that task. Variables can now be given a list of values to choose from
		using the notation $variableName {option 1, option 2, option3} in the project note. If you use the variable "$today", the
		variable will automatically be assigned the date you create the new instance. Added a screencast, readme, and website.
		0.2.9 (February 13, 2013): Preserves non-embedded attachments to tasks
		0.2.8 (February 13, 2013): Fixed the compile-time option of putting the project at the beginning of the list.
		Changed notifications over to Growl. You can also have the script ask if a certain task should be completed or
		not by putting "complete: ask" anywhere in its note.
		0.2.7 (February 11, 2013): Fixed an issue where the template wouldn't instantiate properly if there were no variables.
		Added a compile-time option to put the project at the beginning of the project list
		0.2.6 (February 7, 2013): Now works with template folders that are dropped.
		0.2.5 (January 30, 2013): New "$date" variables ��will ask you for a date instead of a string (you can use all of the
		same relative/ absolute shorthand forms in defining the date, and it can be used in conjunction with the "start" / 
		"due" identifiers)
		0.2.4 (January 22, 2013): Other bugfixes
		0.2.3 (January 22, 2013): Fix for setting default folder to a subfolder
		0.2.2 (January 22, 2013): Allows you to set both a start and due date. Fixes a bug where due/ start declarations
		in projects wouldn't be eliminated when a new instance was created.
		0.2.1 (January 22, 2013): Does a better job of cleaning up notes and allows variables on any line of project
		0.2 (January 21, 2013): using the keyword "ask" in after the start/due declaration in the note of a task/ project will have the
		script prompt you to enter a relative or absolute start/due date for that item. Similarly, you can use the keyword
		"project" to set the start/ due date relative to that of the project; the script will take whatever is
		after the keyword and subtract it from the due date/ add it to the start date of the project, as the
		case may be. Finally, using the (by default) ">>>" operator in the second, followed by a string that EXACTLY matches
		one of the folders in your OF library will skip the folder selection dialog and put the new instance
		directly in the designated folder. Plus, fancy icon.
		0.1.1 (January 18, 2013): Handles projects in a template folder without variables more gracefully (thanks, Sven!)
		0.1 (January 18, 2013): Initial release
		
	
	# BEING WORKED ON
	
	-	Nothing
	
	
	# KNOWN ISSUES

	- 	Nothing
     � 	 	(j 
 	 #   D E S C R I P T I O N 
 	 
 	 T h i s   s c r i p t   l o o k s   f o r   a   T e m p l a t e   f o l d e r   a n d   a s k s   y o u   t o   p i c k   o n e   o f   t h e   t e m p l a t e s   w i t h i n   t o   c r e a t e   
 	 a n   i n s t a n c e   o f .   I t   t h e n   a l l o w s   y o u   t o   s e l e c t   a   f o l d e r   f o r   t h e   i n s t a n c e   a n d   t o   c h o o s e   t h e   d e s i r e d   v a l u e s 
 	 f o r   a n y   v a r i a b l e s   d e s i g n a t e d   i n   t h e   l a s t   p a r a g r a p h   o f   t h e   p r o j e c t ' s   n o t e   ( b y   d e f a u l t ,   " $ "   b e f o r e   a   w o r d 
 	 d e s i g n a t e s   i t   a s   a   v a r i a b l e ,   a n   o d e   t o   m y   f a v o r i t e   C S S   p r e p r o c e s s o r ,   S A S S ) . 
 	 
 	 S o m e   o t h e r   g o o d i e s : 
 	 	 - 	 Y o u   c a n   s p e c i f y   r e l a t i v e   s t a r t   o r   d u e   d a t e s   ( o n e   o r   t h e   o t h e r ,   n o t   b o t h &   y e t )   f o r   t h e   p r o j e c t 
 	 	 	 a n d / o r   e a c h   t a s k   i n d i v i d u a l l y .   T o   d o   s o ,   p u t   a   p a r a g r a p h   s o m e w h e r e   i n   t h e   n o t e   o f   t h a t   i t e m   t h a t 
 	 	 	 s t a r t s   w i t h   e i t h e r   " D u e "   o r   " S t a r t " .   T h e n   u s e   t h e   s a m e   n a t u r a l   l a n g u a g e   d a t e   s y n t a x   a s   y o u   c a n   u s u a l l y 
 	 	 	 u s e   i n   O m n i F o c u s /   m y   " L a t e r "   A p p l e s c r i p t :   t h i n g s   l i k e   " t o d a y   +   2 d " ,   " 2 d " ,   " 3 w   4 d   2 p m " ,   e t c . ,   w i l l   a l l 
 	 	 	 w o r k   a s   e x p e c t e d ,   h o p e f u l l y .   A l l   o f   t h e s e   w i l l   b e   r e l a t i v e   t o   t h e   d a t e   y o u   r u n   t h e   s c r i p t . 
 	 	 - 	 V a r i a b l e s   c a n   b e   u s e d   i n   p r o j e c t   n a m e s   a n d   n o t e s ,   t a s k   n a m e s   a n d   n o t e s ,   a n d   t a s k   c o n t e x t   n a m e s 
 	 	 - 	 O n   t h e   f i r s t   r u n   i t   d e t e c t s   i f   y o u   h a v e   p r o j e c t s   u s i n g   C u r t   C l i f t o n ' s   O m n i F o c u s   t e m p l a t e   s y n t a x 
 	 	 	 ( t o   w h i c h   I   o w e   a   l o t   o f   t h e   g o o d   i d e a s   i n   t h i s   s c r i p t )   a n d   o f f e r s   t o   c h a n g e   i t   f o r   y o u . 
 	 	 - 	 I t   o f f e r s   t o   s h o w   y o u   t h e   n e w   i n s t a n c e   o f   t h e   t e m p l a t e   o n c e   i t   h a s   p o p u l a t e d   t h e   i n s t a n c e . 
 	 	 - 	 A u t o m a g i c a l l y   c h a n g e s   t h e   n e w   p r o j e c t   i n s t a n c e   t o   " A c t i v e "   i f   t h e   t e m p l a t e   p r o j e c t   w a s   " O n   H o l d " 
 	 
 	 
 	 #   L I C E N S E 
 	 
 	 U s e   i t ,   c h a n g e   i t ,   e n j o y   i t .   P l e a s e   d o n ' t   b l a t e n t l y   p a s s   o f f   m y   w o r k   a s   y o u r   o w n .   B e   c o o l . 
 	 
 	 
 	 #   I N S T A L L A T I O N 
 	 
 	 - 	 C o p y   t h i s   s c r i p t   t o   ~ / L i b r a r y / S c r i p t s / A p p l i c a t i o n s / O m n i f o c u s   ( y o u   m a y   h a v e   t o   u s e   t h e 
 	 	 G o   >   G o   t o   F o l d e r &   m e n u   i n   y o u r   f i l e   n a v i g a t i o n   a p p l i c a t i o n   o f   c h o i c e   a s   t h e   u s e r   l i b r a r y 
 	 	 f o l d e r   i s   h i d d e n   o n   M a c   O S   X   1 0 . 7 + .   A f t e r   y o u   s e l e c t   t h i s   m e n u   i t e m ,   t y p e   t h e   p a t h   a b o v e   a n d 
 	 	 h i t   e n t e r ) . 
 	 - 	 I f   y o u   p r e f e r ,   y o u   c a n   h a v e   t h i s   s c r i p t   b e   a c t i v a t e d   b y   a   u t i l i t y   l i k e   K e y b o a r d   M a e s t r o   o r   F a s t S c r i p t s 
 	 
 	 
 	 #   V E R S I O N   I N F O R M A T I O N 
 	 	 
 	 	 0 . 3 . 6   ( M a r c h   2 7 ,   2 0 1 3 ) :   B u g f i x e s .   Y o u   c a n   a l s o   n o w   s p e c i f y   a   s p e c i f i c   f o l d e r   p a t h   a s   t h e   d e f a u l t   f o l d e r   u s i n g   >   f o r   a   s u b f o l d e r   
 	 	 ( i . e . ,   " > > > F o l d e r   >   S u b f o l d e r "   w i l l   p u t   t h e   n e w   i n s t a n c e   i n   S u b f o l d e r   u n d e r   F o l d e r ) . 
 	 	 0 . 3 . 5   ( M a r c h   1 8 ,   2 0 1 3 ) :   A d d e d   t h e   a b i l i t y   t o   s e t   d a t e s   i n   t h e   f o r m a t   s p e c i f i e d   i n   a s   t h e   s h o r t   d a t e   f o r m a t 
 	 	 i n   y o u r   L a n g u a g e s   a n d   T e x t   p r e f e r e n c e   p a n e . 
 	 	 0 . 3 . 1   ( F e b r u a r y   2 8 ,   2 0 1 3 ) :   B u g f i x e s . 
 	 	 0 . 3 . 0   ( F e b r u a r y   2 4 ,   2 0 1 3 ) :   F i x e d   a n   i s s u e   w i t h   s u b t r a c t i n g   d a t e s .   I m p r o v e d   G r o w l   a l e r t s .   A d d e d   a n   o p t i o n   t o   p u t   " a t t a c h m e n t :   a s k "   i n 
 	 	 t h e   t a s k   n o t e s   t o   h a v e   t h e   s c r i p t   a s k   y o u   f o r   a n   a t t a c h m e n t   t o   t h a t   t a s k .   V a r i a b l e s   c a n   n o w   b e   g i v e n   a   l i s t   o f   v a l u e s   t o   c h o o s e   f r o m 
 	 	 u s i n g   t h e   n o t a t i o n   $ v a r i a b l e N a m e   { o p t i o n   1 ,   o p t i o n   2 ,   o p t i o n 3 }   i n   t h e   p r o j e c t   n o t e .   I f   y o u   u s e   t h e   v a r i a b l e   " $ t o d a y " ,   t h e 
 	 	 v a r i a b l e   w i l l   a u t o m a t i c a l l y   b e   a s s i g n e d   t h e   d a t e   y o u   c r e a t e   t h e   n e w   i n s t a n c e .   A d d e d   a   s c r e e n c a s t ,   r e a d m e ,   a n d   w e b s i t e . 
 	 	 0 . 2 . 9   ( F e b r u a r y   1 3 ,   2 0 1 3 ) :   P r e s e r v e s   n o n - e m b e d d e d   a t t a c h m e n t s   t o   t a s k s 
 	 	 0 . 2 . 8   ( F e b r u a r y   1 3 ,   2 0 1 3 ) :   F i x e d   t h e   c o m p i l e - t i m e   o p t i o n   o f   p u t t i n g   t h e   p r o j e c t   a t   t h e   b e g i n n i n g   o f   t h e   l i s t . 
 	 	 C h a n g e d   n o t i f i c a t i o n s   o v e r   t o   G r o w l .   Y o u   c a n   a l s o   h a v e   t h e   s c r i p t   a s k   i f   a   c e r t a i n   t a s k   s h o u l d   b e   c o m p l e t e d   o r 
 	 	 n o t   b y   p u t t i n g   " c o m p l e t e :   a s k "   a n y w h e r e   i n   i t s   n o t e . 
 	 	 0 . 2 . 7   ( F e b r u a r y   1 1 ,   2 0 1 3 ) :   F i x e d   a n   i s s u e   w h e r e   t h e   t e m p l a t e   w o u l d n ' t   i n s t a n t i a t e   p r o p e r l y   i f   t h e r e   w e r e   n o   v a r i a b l e s . 
 	 	 A d d e d   a   c o m p i l e - t i m e   o p t i o n   t o   p u t   t h e   p r o j e c t   a t   t h e   b e g i n n i n g   o f   t h e   p r o j e c t   l i s t 
 	 	 0 . 2 . 6   ( F e b r u a r y   7 ,   2 0 1 3 ) :   N o w   w o r k s   w i t h   t e m p l a t e   f o l d e r s   t h a t   a r e   d r o p p e d . 
 	 	 0 . 2 . 5   ( J a n u a r y   3 0 ,   2 0 1 3 ) :   N e w   " $ d a t e "   v a r i a b l e s    � w i l l   a s k   y o u   f o r   a   d a t e   i n s t e a d   o f   a   s t r i n g   ( y o u   c a n   u s e   a l l   o f   t h e 
 	 	 s a m e   r e l a t i v e /   a b s o l u t e   s h o r t h a n d   f o r m s   i n   d e f i n i n g   t h e   d a t e ,   a n d   i t   c a n   b e   u s e d   i n   c o n j u n c t i o n   w i t h   t h e   " s t a r t "   /   
 	 	 " d u e "   i d e n t i f i e r s ) 
 	 	 0 . 2 . 4   ( J a n u a r y   2 2 ,   2 0 1 3 ) :   O t h e r   b u g f i x e s 
 	 	 0 . 2 . 3   ( J a n u a r y   2 2 ,   2 0 1 3 ) :   F i x   f o r   s e t t i n g   d e f a u l t   f o l d e r   t o   a   s u b f o l d e r 
 	 	 0 . 2 . 2   ( J a n u a r y   2 2 ,   2 0 1 3 ) :   A l l o w s   y o u   t o   s e t   b o t h   a   s t a r t   a n d   d u e   d a t e .   F i x e s   a   b u g   w h e r e   d u e /   s t a r t   d e c l a r a t i o n s 
 	 	 i n   p r o j e c t s   w o u l d n ' t   b e   e l i m i n a t e d   w h e n   a   n e w   i n s t a n c e   w a s   c r e a t e d . 
 	 	 0 . 2 . 1   ( J a n u a r y   2 2 ,   2 0 1 3 ) :   D o e s   a   b e t t e r   j o b   o f   c l e a n i n g   u p   n o t e s   a n d   a l l o w s   v a r i a b l e s   o n   a n y   l i n e   o f   p r o j e c t 
 	 	 0 . 2   ( J a n u a r y   2 1 ,   2 0 1 3 ) :   u s i n g   t h e   k e y w o r d   " a s k "   i n   a f t e r   t h e   s t a r t / d u e   d e c l a r a t i o n   i n   t h e   n o t e   o f   a   t a s k /   p r o j e c t   w i l l   h a v e   t h e 
 	 	 s c r i p t   p r o m p t   y o u   t o   e n t e r   a   r e l a t i v e   o r   a b s o l u t e   s t a r t / d u e   d a t e   f o r   t h a t   i t e m .   S i m i l a r l y ,   y o u   c a n   u s e   t h e   k e y w o r d 
 	 	 " p r o j e c t "   t o   s e t   t h e   s t a r t /   d u e   d a t e   r e l a t i v e   t o   t h a t   o f   t h e   p r o j e c t ;   t h e   s c r i p t   w i l l   t a k e   w h a t e v e r   i s 
 	 	 a f t e r   t h e   k e y w o r d   a n d   s u b t r a c t   i t   f r o m   t h e   d u e   d a t e /   a d d   i t   t o   t h e   s t a r t   d a t e   o f   t h e   p r o j e c t ,   a s   t h e 
 	 	 c a s e   m a y   b e .   F i n a l l y ,   u s i n g   t h e   ( b y   d e f a u l t )   " > > > "   o p e r a t o r   i n   t h e   s e c o n d ,   f o l l o w e d   b y   a   s t r i n g   t h a t   E X A C T L Y   m a t c h e s 
 	 	 o n e   o f   t h e   f o l d e r s   i n   y o u r   O F   l i b r a r y   w i l l   s k i p   t h e   f o l d e r   s e l e c t i o n   d i a l o g   a n d   p u t   t h e   n e w   i n s t a n c e 
 	 	 d i r e c t l y   i n   t h e   d e s i g n a t e d   f o l d e r .   P l u s ,   f a n c y   i c o n . 
 	 	 0 . 1 . 1   ( J a n u a r y   1 8 ,   2 0 1 3 ) :   H a n d l e s   p r o j e c t s   i n   a   t e m p l a t e   f o l d e r   w i t h o u t   v a r i a b l e s   m o r e   g r a c e f u l l y   ( t h a n k s ,   S v e n ! ) 
 	 	 0 . 1   ( J a n u a r y   1 8 ,   2 0 1 3 ) :   I n i t i a l   r e l e a s e 
 	 	 
 	 
 	 #   B E I N G   W O R K E D   O N 
 	 
 	 - 	 N o t h i n g 
 	 
 	 
 	 #   K N O W N   I S S U E S 
 
 	 -   	 N o t h i n g 
   
  
 l     ��������  ��  ��        l          j     �� �� (0 startorendoffolder startOrEndOfFolder  m        �    e n d  O I change to "end" to put the new project at the end of the selected folder     �   �   c h a n g e   t o   " e n d "   t o   p u t   t h e   n e w   p r o j e c t   a t   t h e   e n d   o f   t h e   s e l e c t e d   f o l d e r      l          j    �� ��  0 variablesymbol variableSymbol  m       �    $  E ? change to whatever delimiter you want to denote your variables     �   ~   c h a n g e   t o   w h a t e v e r   d e l i m i t e r   y o u   w a n t   t o   d e n o t e   y o u r   v a r i a b l e s      l        ! "   j    �� #�� ,0 defaultfolderpointer defaultFolderPointer # m     $ $ � % %  > > > ! O I change to whatever delimtier you want to denote a default folder pointer    " � & & �   c h a n g e   t o   w h a t e v e r   d e l i m t i e r   y o u   w a n t   t o   d e n o t e   a   d e f a u l t   f o l d e r   p o i n t e r   ' ( ' l      ) * + ) j   	 �� ,�� 40 optionliststartdelimiter optionListStartDelimiter , m   	 
 - - � . .  { * = 7 start of a list of options for the preceeding variable    + � / / n   s t a r t   o f   a   l i s t   o f   o p t i o n s   f o r   t h e   p r e c e e d i n g   v a r i a b l e (  0 1 0 l      2 3 4 2 j    �� 5�� 00 optionlistenddelimiter optionListEndDelimiter 5 m     6 6 � 7 7  } 3 ; 5 end of a list of options for the preceeding variable    4 � 8 8 j   e n d   o f   a   l i s t   o f   o p t i o n s   f o r   t h e   p r e c e e d i n g   v a r i a b l e 1  9 : 9 l     ��������  ��  ��   :  ; < ; l     �� = >��   =   Don't change these    > � ? ? &   D o n ' t   c h a n g e   t h e s e <  @ A @ j    �� B�� 0 firstrun firstRun B m    ��
�� boovtrue A  C D C j    �� E�� .0 specialtemplatefolder specialTemplateFolder E m    ��
�� 
null D  F G F l     ��������  ��  ��   G  H I H l     �� J K��   J 1 + Growl variables, don't change these either    K � L L V   G r o w l   v a r i a b l e s ,   d o n ' t   c h a n g e   t h e s e   e i t h e r I  M N M j    �� O�� "0 applicationname applicationName O m     P P � Q Q  T e m p l a t e s . s c p t N  R S R j    �� T�� &0 scriptstartnotify scriptStartNotify T m     U U � V V  S c r i p t   S t a r t e d S  W X W j    �� Y�� "0 scriptendnotify scriptEndNotify Y m     Z Z � [ [  S c r i p t   E n d e d X  \ ] \ j     $�� ^�� 0 
datenotify 
dateNotify ^ m     # _ _ � ` `  D a t e   M i s m a t c h ]  a b a j   % +�� c�� $0 allnotifications allNotifications c J   % * d d  e f e o   % &���� &0 scriptstartnotify scriptStartNotify f  g h g o   & '���� "0 scriptendnotify scriptEndNotify h  i�� i o   ' (���� 0 
datenotify 
dateNotify��   b  j k j j   , .�� l�� ,0 defaultnotifications defaultNotifications l o   , -���� $0 allnotifications allNotifications k  m n m j   / 3�� o�� "0 iconapplication iconApplication o m   / 2 p p � q q  O m n i F o c u s . a p p n  r s r l     ��������  ��  ��   s  t u t j   4 8�� v�� &0 checkingsomething checkingSomething v m   4 7 w w � x x   u  y z y l     ��������  ��  ��   z  { | { l   	 }���� } O    	 ~  ~ O   	 � � � k   
	 � �  � � � Z   
 � � ����� � o   
 ���� 0 firstrun firstRun � k    � � �  � � � r     � � � n    � � � I    �������� .0 checkforothertemplate checkForOtherTemplate��  ��   �  f     � o      ���� :0 othertemplatescriptprojects otherTemplateScriptProjects �  � � � Z   & � ����� � =    � � � o    ���� :0 othertemplatescriptprojects otherTemplateScriptProjects � m    ������ � L     "����  ��  ��   �  � � � Z   ' T � ����� � >  ' , � � � n   ' * � � � 1   ( *��
�� 
leng � o   ' (���� :0 othertemplatescriptprojects otherTemplateScriptProjects � m   * +����   � k   / P � �  � � � r   / ? � � � n   / = � � � 1   ; =��
�� 
bhit � l  / ; ����� � I  / ;�� � �
�� .sysodlogaskr        TEXT � m   / 0 � � � � �N I t   a p p e a r s   t h a t   y o u   h a v e   s o m e   p r o j e c t s   u s i n g   C u r t   C l i f t o n ' s   O m n i F o c u s   t e m p l a t e   s c r i p t   s y n t a x .   W o u l d   y o u   l i k e   t o   a u t o m a t i c a l l y   a d j u s t   t h e s e   t o   u s e   t h i s   s c r i p t ' s   s y n t a x ? � �� � �
�� 
btns � J   1 5 � �  � � � m   1 2 � � � � �  N o ,   T h a n k s �  ��� � m   2 3 � � � � � $ Y e s ,   C h a n g e   S y n t a x��   � �� ���
�� 
dflt � m   6 7���� ��  ��  ��   � o      ���� (0 changeoldtemplates changeOldTemplates �  ��� � Z  @ P � ����� � =  @ C � � � o   @ A���� (0 changeoldtemplates changeOldTemplates � m   A B � � � � � $ Y e s ,   C h a n g e   S y n t a x � n  F L � � � I   G L�� ����� 20 adjustoldtemplatesyntax adjustOldTemplateSyntax �  ��� � o   G H���� :0 othertemplatescriptprojects otherTemplateScriptProjects��  ��   �  f   F G��  ��  ��  ��  ��   �  � � � l  U U��������  ��  ��   �  � � � Q   U � � � � � r   X o � � � n   X i � � � 1   e i��
�� 
ttxt � l  X e ����� � I  X e�� � �
�� .sysodlogaskr        TEXT � m   X [ � � � � � � W h a t   s y m b o l   w o u l d   y o u   l i k e   t o   u s e   t o   d e s i g n a t e   v a r i a b l e   n a m e s   i n   y o u r   t e m p l a t e s ? � �� ���
�� 
dtxt � m   ^ a � � � � �  $��  ��  ��   � o      ����  0 variablesymbol variableSymbol � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 	errortext 	errorText � �� ���
�� 
errn � o      ���� 0 errornumber errorNumber��   � Z   w � � ����� � =  w | � � � o   w x���� 0 errornumber errorNumber � m   x {������ � L    �����  ��  ��   �  � � � l  � ���������  ��  ��   �  ��� � r   � � � � � m   � ���
�� boovfals � o      ���� 0 firstrun firstRun��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � l  � � ����� � 6 � � � � � 2   � ���
�� 
FCff � l  � � ����� � E   � � � � � n  � � � � � 1   � ���
�� 
pnam �  g   � � � m   � � � � � � �  T e m p l a t e��  ��  ��  ��  ��  ��  ��   � o      ���� 0 thecount theCount �  � � � Z   �� � ��� � � l  � � ����� � =  � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � l  � � ����� � 6 � � � � � 2   � ���
�� 
FCff � l  � � ���~ � E   � � � � � n  � � �  � 1   � ��}
�} 
pnam   g   � � � m   � � �  T e m p l a t e�  �~  ��  ��  ��  ��  ��   � m   � ��|�|  ��  ��   � k   ��  r   � � 6 � �	 2   � ��{
�{ 
FCff	 l  � �
�z�y
 =  � � n  � � 1   � ��x
�x 
FCHi  g   � � m   � ��w
�w boovfals�z  �y   o      �v�v (0 templatefolderlist templateFolderList  r   � � J   � ��u�u   o      �t�t 00 templatefoldernamelist templateFolderNameList  X   �?�s k   :  r    m    �   o      �r�r 0 nextlistitem nextListItem  Z # !�q�p  = "#" l $�o�n$ n  %&% 1  �m
�m 
pcls& n '(' 1  	�l
�l 
ctnr( o  	�k�k 0 	thefolder 	theFolder�o  �n  # m  �j
�j 
FCAr! r  )*) m  ++ �,, !�  * o      �i�i 0 nextlistitem nextListItem�q  �p   -.- r  $1/0/ b  $-121 o  $'�h�h 0 nextlistitem nextListItem2 l ',3�g�f3 n  ',454 1  (,�e
�e 
pnam5 o  '(�d�d 0 	thefolder 	theFolder�g  �f  0 o      �c�c 0 nextlistitem nextListItem. 6�b6 r  2:787 o  25�a�a 0 nextlistitem nextListItem8 l     9�`�_9 n      :;:  ;  89; o  58�^�^ 00 templatefoldernamelist templateFolderNameList�`  �_  �b  �s 0 	thefolder 	theFolder o   � ��]�] (0 templatefolderlist templateFolderList <=< r  @_>?> I @[�\@A
�\ .gtqpchltns    @   @ ns  @ o  @C�[�[ 00 templatefoldernamelist templateFolderNameListA �ZBC
�Z 
apprB m  FIDD �EE , C h o o s e   T e m p l a t e   F o l d e rC �YFG
�Y 
prmpF m  LOHH �II � N o   o b v i o u s   t e m p l a t e   f o l d e r s   w e r e   f o u n d .   P l e a s e   s e l e c t   t h e   f o l d e r   i n   w h i c h   y o u   s t o r e   t e m p l a t e s .G �XJ�W
�X 
okbtJ m  RUKK �LL , S e t   a s   T e m p l a t e   F o l d e r�W  ? o      �V�V 00 selectedtemplatefolder selectedTemplateFolder= MNM Z `nOP�U�TO = `eQRQ o  `c�S�S 00 selectedtemplatefolder selectedTemplateFolderR m  cd�R
�R boovfalsP L  hj�Q�Q  �U  �T  N STS r  oUVU n o{WXW I  p{�PY�O�P (0 selectionpositions selectionPositionsY Z[Z o  ps�N�N 00 selectedtemplatefolder selectedTemplateFolder[ \]\ o  sv�M�M 00 templatefoldernamelist templateFolderNameList] ^�L^ m  vw�K
�K boovfals�L  �O  X  f  opV o      �J�J 00 templatefolderposition templateFolderPositionT _�I_ r  ��`a` n  ��bcb 4  ���Hd
�H 
cobjd o  ���G�G 00 templatefolderposition templateFolderPositionc o  ���F�F (0 templatefolderlist templateFolderLista o      �E�E .0 specialtemplatefolder specialTemplateFolder�I  ��   � r  ��efe m  ���D
�D 
nullf o      �C�C .0 specialtemplatefolder specialTemplateFolder � ghg l ���B�A�@�B  �A  �@  h iji Z  �kl�?mk = ��non o  ���>�> .0 specialtemplatefolder specialTemplateFoldero m  ���=
�= 
nulll r  ��pqp 6��rsr 2  ���<
�< 
FCfxs F  ��tut F  ��vwv l ��x�;�:x E  ��yzy n  ��{|{ 1  ���9
�9 
pnam| n ��}~} m  ���8
�8 
FCAr~  g  ��z m  �� ���  T e m p l a t e�;  �:  w l ����7�6� > ����� n ����� 1  ���5
�5 
FCPs�  g  ��� m  ���4
�4 FCPsFCPD�7  �6  u l ����3�2� > ����� n ����� 1  ���1
�1 
FCPs�  g  ��� m  ���0
�0 FCPsFCPd�3  �2  q o      �/�/ 0 projectlist projectList�?  m r  ���� 6���� 2  ���.
�. 
FCfx� F  ���� F  ���� l ����-�,� = ����� n ����� m  ���+
�+ 
FCAr�  g  ��� o  ���*�* .0 specialtemplatefolder specialTemplateFolder�-  �,  � l ���)�(� > ���� n ���� 1  ��'
�' 
FCPs�  g  ��� m  �&
�& FCPsFCPD�)  �(  � l 	��%�$� > 	��� n 
��� 1  
�#
�# 
FCPs�  g  

� m  �"
�" FCPsFCPd�%  �$  � o      �!�! 0 projectlist projectListj ��� r  !��� J  � �   � o      �� "0 projectnamelist projectNameList� ��� X  "G���� r  8B��� l 8=���� n  8=��� 1  9=�
� 
pnam� o  89�� 0 
theproject 
theProject�  �  � l     ���� n      ���  ;  @A� o  =@�� "0 projectnamelist projectNameList�  �  � 0 
theproject 
theProject� o  %(�� 0 projectlist projectList� ��� Z  H`����� = HO��� n  HM��� 1  KM�
� 
leng� o  HK�� "0 projectnamelist projectNameList� m  MN��  � k  R\�� ��� I RY���
� .sysodisAaleR        TEXT� m  RU�� ��� N o   p r o j e c t s   i n   a   " T e m p l a t e "   f o l d e r   w e r e   f o u n d .   M a k e   s u r e   t h a t   t h e   f o l d e r   n a m e   c o n t a i n s   t h e   w o r d   " T e m p l a t e "   s o   t h a t   i t   c a n   b e   f o u n d .�  � ��� L  Z\��  �  �  �  � ��� l aa���
�  �  �
  � ��� r  ah��� m  ad�� ��� 2 S e l e c t   a   T e m p l a t e   P r o j e c t� o      �	�	 "0 chooselisttitle chooseListTitle� ��� r  ip��� m  il�� ��� � W h i c h   o n e   o f   y o u r   t e m p l a t e   p r o j e c t s   w o u l d   y o u   l i k e   t o   m a k e   a   n e w   i n s t a n c e   o f ?� o      ��  0 chooselisttext chooseListText� ��� r  qx��� m  qt�� ��� & S e l e c t   T h i s   P r o j e c t� o      �� 0 chooselistok chooseListOK� ��� r  y���� I y����
� .gtqpchltns    @   @ ns  � o  y|�� "0 projectnamelist projectNameList� ���
� 
appr� o  ��� "0 chooselisttitle chooseListTitle� ���
� 
prmp� o  ����  0 chooselisttext chooseListText� � ���
�  
okbt� o  ������ 0 chooselistok chooseListOK��  � o      ���� "0 selectedproject selectedProject� ��� Z ��������� = ����� o  ������ "0 selectedproject selectedProject� m  ����
�� boovfals� L  ������  ��  ��  � ��� r  ����� n ����� I  ��������� (0 selectionpositions selectionPositions� ��� o  ������ "0 selectedproject selectedProject� ��� o  ������ "0 projectnamelist projectNameList� ���� m  ����
�� boovfals��  ��  �  f  ��� o      ���� "0 projectposition projectPosition� ��� r  ����� n  ����� 4  �����
�� 
cobj� o  ������ "0 projectposition projectPosition� o  ������ 0 projectlist projectList� o      ���� 20 selectedprojecttemplate selectedProjectTemplate� ��� l ����������  ��  ��  � ��� r  ����� m  ����
�� boovfals� o      ���� (0 defaultfolderfound defaultFolderFound� � � Z  �N���� E  �� l ������ n  �� 1  ����
�� 
FCno o  ������ 20 selectedprojecttemplate selectedProjectTemplate��  ��   o  ������ ,0 defaultfolderpointer defaultFolderPointer k  �J 	
	 r  �� m  ������  o      ���� "0 parawithpointer paraWithPointer
  Y  ��� Z ����� l ����� C  � n  � 4  ��
�� 
cpar o  ���� 0 i   l ����� n  � 1  ���
�� 
FCno o  ������ 20 selectedprojecttemplate selectedProjectTemplate��  ��   o  ���� ,0 defaultfolderpointer defaultFolderPointer��  ��   r   o  ���� 0 i   o      ���� "0 parawithpointer paraWithPointer��  ��  �� 0 i   l �� ����  I ����!��
�� .corecnte****       ****! n ��"#" 2 ����
�� 
cpar# l ��$����$ n  ��%&% 1  ����
�� 
FCno& o  ������ 20 selectedprojecttemplate selectedProjectTemplate��  ��  ��  ��  ��   m  ������  m  �������� '(' r   2)*) n   .+,+ 4  '.��-
�� 
cpar- o  *-���� "0 parawithpointer paraWithPointer, l  '.����. n   '/0/ 1  #'��
�� 
FCno0 o   #���� 20 selectedprojecttemplate selectedProjectTemplate��  ��  * o      ���� 0 folderpointer folderPointer( 121 r  3O343 J  3I55 676 m  3688 �99  > > >  7 :;: m  69<< �==  > > >; >?> m  9<@@ �AA    >  ? BCB m  <?DD �EE    >C FGF m  ?BHH �II  >  G J��J m  BEKK �LL  >��  4 n     MNM 1  JN��
�� 
txdlN  f  IJ2 OPO r  P[QRQ n  PWSTS 2  SW��
�� 
citmT o  PS���� 0 folderpointer folderPointerR o      ���� 0 newfoldertext newFolderTextP UVU r  \eWXW m  \_YY �ZZ  X n     [\[ 1  `d��
�� 
txdl\  f  _`V ]^] r  fl_`_ J  fh����  ` o      ���� &0 cleanedfoldertext cleanedFolderText^ aba Y  m�c��de��c Z  |�fg����f > |�hih n  |�jkj 4  ���l
�� 
cobjl o  ������ 0 i  k o  |���� 0 newfoldertext newFolderTexti m  ��mm �nn  g r  ��opo l ��q����q n  ��rsr 4  ����t
�� 
cpart m  ������ s l ��u����u c  ��vwv n  ��xyx 4  ����z
�� 
cobjz o  ������ 0 i  y o  ������ 0 newfoldertext newFolderTextw m  ����
�� 
TEXT��  ��  ��  ��  p l     {����{ n      |}|  ;  ��} o  ������ &0 cleanedfoldertext cleanedFolderText��  ��  ��  ��  �� 0 i  d m  pq���� e n  qw~~ 1  tv��
�� 
leng o  qt���� 0 newfoldertext newFolderText��  b ���� Q  �J����� k  �A�� ��� Z  �;������ = ����� n  ����� 1  ����
�� 
leng� o  ������ &0 cleanedfoldertext cleanedFolderText� m  ������ � r  ����� 6 ����� 4 �����
�� 
FCff� m  ������ � l �������� = ����� 1  ����
�� 
pnam� n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ &0 cleanedfoldertext cleanedFolderText��  ��  � o      ���� 00 selectedfoldertemplate selectedFolderTemplate��  � k  �;�� ��� r  ����� 6����� 2  ����
�� 
FCff� l �������� = ����� n ����� 1  ����
�� 
pnam�  g  ��� n  ����� 4  �����
�� 
cobj� m  ��������� o  ������ &0 cleanedfoldertext cleanedFolderText��  ��  � o      ���� 0 	thefolder 	theFolder� ���� Y  �;�������� k  6�� ��� r  ��� n  ��� 1  ��
�� 
ctnr� n  ��� 4  ���
�� 
cobj� o  ���� 0 i  � o  ���� 0 	thefolder 	theFolder� o      ���� 0 containfolder containFolder� ���� Z  6����~� = #��� n  ��� 1  �}
�} 
pnam� o  �|�| 0 containfolder containFolder� l "��{�z� n  "��� 4  "�y�
�y 
cobj� m  !�x�x��� o  �w�w &0 cleanedfoldertext cleanedFolderText�{  �z  � k  &2�� ��� r  &0��� n  &,��� 4  ',�v�
�v 
cobj� o  *+�u�u 0 i  � o  &'�t�t 0 	thefolder 	theFolder� o      �s�s 00 selectedfoldertemplate selectedFolderTemplate� ��r�  S  12�r  �  �~  ��  �� 0 i  � m  ���q�q � n  ����� 1  ���p
�p 
leng� o  ���o�o 0 	thefolder 	theFolder��  ��  � ��n� r  <A��� m  <=�m
�m boovtrue� o      �l�l (0 defaultfolderfound defaultFolderFound�n  � R      �k�j�i
�k .ascrerr ****      � ****�j  �i  ��  ��  ��  ��    ��� l OO�h�g�f�h  �g  �f  � ��� r  O`��� n  O\��� 4  W\�e�
�e 
cobj� m  Z[�d�d � n OW��� I  PW�c��b�c $0 findthevariables findTheVariables� ��a� o  PS�`�` 20 selectedprojecttemplate selectedProjectTemplate�a  �b  �  f  OP� o      �_�_ 0 thevariables theVariables� ��� r  ar��� n  an��� 4  in�^�
�^ 
cobj� m  lm�]�] � n ai��� I  bi�\��[�\ $0 findthevariables findTheVariables� ��Z� o  be�Y�Y 20 selectedprojecttemplate selectedProjectTemplate�Z  �[  �  f  ab� o      �X�X 00 thelistvariableoptions theListVariableOptions� ��� l ss�W�V�U�W  �V  �U  � ��� r  sz��� m  sv�� ���  � o      �T�T 0 justduplicate justDuplicate� ��� Z  {����S�R� = {���� l {���Q�P� n  {���� 1  ~��O
�O 
leng� o  {~�N�N 0 thevariables theVariables�Q  �P  � m  ���M�M  � k  ���� ��� r  ����� n  ����� 1  ���L
�L 
bhit� l ����K�J� I ���I� 
�I .sysodisAaleR        TEXT� b  �� b  �� b  �� b  �� b  ��	
	 m  �� �� N o   v a r i a b l e s   w e r e   f o u n d   i n   t h e   s e l e c t e d   p r o j e c t .   D o   y o u   w a n t   t o   s i m p l y   c o p y   t h i s   p r o j e c t   t o   t h e   s e l e c t e d   f o l d e r ?   ( M a k e   s u r e   t h a t   a n y   v a r i a b l e s   a r e   a l l   i n   o n e   p a r a g r a p h   i n   t h e   p r o j e c t ' s   n o t e   a n d   a r e   i n   t h e   f o r m a t :  
 1  ���H
�H 
quot o  ���G�G  0 variablesymbol variableSymbol m  �� �  v a r i a b l e N a m e 1  ���F
�F 
quot m  �� �  ) .  �E
�E 
btns J  ��  m  �� �  N o ,   N e v e r m i n d �D m  �� �  Y e s ,   D u p l i c a t e�D   �C�B
�C 
dflt m  ���A�A �B  �K  �J  � o      �@�@ 0 justduplicate justDuplicate� �? Z ���>�= > ��  o  ���<�< 0 justduplicate justDuplicate  m  ��!! �""  Y e s ,   D u p l i c a t e L  ���;�;  �>  �=  �?  �S  �R  � #$# l ���:�9�8�:  �9  �8  $ %&% Z  ��'(�7�6' H  ��)) o  ���5�5 (0 defaultfolderfound defaultFolderFound( k  ��** +,+ r  ��-.- 6��/0/ 2  ���4
�4 
FCff0 F  ��121 l ��3�3�23 H  ��44 E  ��565 n ��787 1  ���1
�1 
pnam8  g  ��6 m  ��99 �::  T e m p l a t e�3  �2  2 l ��;�0�/; = ��<=< n ��>?> 1  ���.
�. 
FCHe?  g  ��= m  ���-
�- boovfals�0  �/  . o      �,�, 0 
folderlist 
folderList, @A@ r  ��BCB J  ��DD E�+E m  ��FF �GG  ( T o p   L e v e l )�+  C o      �*�*  0 foldernamelist folderNameListA HIH X   UJ�)KJ k  PLL MNM r  OPO m  QQ �RR  P o      �(�( 0 nextlistitem nextListItemN STS Z 9UV�'�&U = +WXW l 'Y�%�$Y n  'Z[Z 1  #'�#
�# 
pcls[ n #\]\ 1  #�"
�" 
ctnr] o  �!�! 0 	thefolder 	theFolder�%  �$  X m  '*� 
�  
FCArV r  .5^_^ m  .1`` �aa !�  _ o      �� 0 nextlistitem nextListItem�'  �&  T bcb r  :Gded b  :Cfgf o  :=�� 0 nextlistitem nextListItemg l =Bh��h n  =Biji 1  >B�
� 
pnamj o  =>�� 0 	thefolder 	theFolder�  �  e o      �� 0 nextlistitem nextListItemc k�k r  HPlml o  HK�� 0 nextlistitem nextListItemm l     n��n n      opo  ;  NOp o  KN��  0 foldernamelist folderNameList�  �  �  �) 0 	thefolder 	theFolderK o  �� 0 
folderlist 
folderListI qrq l VV����  �  �  r sts r  V]uvu m  VYww �xx Z S e l e c t   a   F o l d e r   F o r   T h e   N e w   T e m p l a t e   I n s t a n c ev o      �� "0 chooselisttitle chooseListTitlet yzy r  ^e{|{ m  ^a}} �~~ � I n   w h i c h   f o l d e r   w o u l d   y o u   l i k e   t o   c r e a t e   a   n e w   i n s t a n c e   o f   t h i s   t e m p l a t e ?| o      ��  0 chooselisttext chooseListTextz � r  fm��� m  fi�� ��� , M a k e   T e m p l a t e   I n s t a n c e� o      �� 0 chooselistok chooseListOK� ��� r  n���� I n����
� .gtqpchltns    @   @ ns  � o  nq��  0 foldernamelist folderNameList� �
��
�
 
appr� o  tw�	�	 "0 chooselisttitle chooseListTitle� ���
� 
prmp� o  z}��  0 chooselisttext chooseListText� ���
� 
okbt� o  ���� 0 chooselistok chooseListOK�  � o      ��  0 selectedfolder selectedFolder� ��� Z  ������� = ����� o  ����  0 selectedfolder selectedFolder� m  ��� 
�  boovfals� L  ������  � ��� = ����� o  ������  0 selectedfolder selectedFolder� J  ���� ���� m  ���� ���  ( T o p   L e v e l )��  � ���� r  ����� m  ���� ���  T o p   L e v e l� o      ���� 00 selectedfoldertemplate selectedFolderTemplate��  � k  ���� ��� r  ����� l �������� \  ����� l �������� n ����� I  ��������� (0 selectionpositions selectionPositions� ��� o  ������  0 selectedfolder selectedFolder� ��� o  ������  0 foldernamelist folderNameList� ���� m  ����
�� boovfals��  ��  �  f  ����  ��  � m  ������ ��  ��  � o      ����  0 folderposition folderPosition� ���� r  ����� n  ����� 4  �����
�� 
cobj� o  ������  0 folderposition folderPosition� o  ������ 0 
folderlist 
folderList� o      ���� 00 selectedfoldertemplate selectedFolderTemplate��  �  �7  �6  & ��� l ����������  ��  ��  � ��� Z  ��������� = ����� o  ������ 0 justduplicate justDuplicate� m  ���� ���  Y e s ,   D u p l i c a t e� k  ���� ��� Z  �f������ = ����� o  ������ 00 selectedfoldertemplate selectedFolderTemplate� m  ���� ���  T o p   L e v e l� Z  �%������ = ����� o  ������ (0 startorendoffolder startOrEndOfFolder� m  ���� ��� 
 s t a r t� r  ���� l �
������ I �
����
�� .coreclon****      � ****� o  ������ 20 selectedprojecttemplate selectedProjectTemplate� �����
�� 
insh� l ������� n  ���� 8 ��
�� 
insl� n  ���� 2 ���
�� 
FCpr�  g  ����  ��  ��  ��  ��  � o      ���� (0 newprojectinstance newProjectInstance��  � r  %��� l !������ I !����
�� .coreclon****      � ****� o  ���� 20 selectedprojecttemplate selectedProjectTemplate� �����
�� 
insh� l ������ n  ���  ;  � n  ��� 2 ��
�� 
FCpr�  g  ��  ��  ��  ��  ��  � o      ���� (0 newprojectinstance newProjectInstance��  � Z  (f������ = (1��� o  (-���� (0 startorendoffolder startOrEndOfFolder� m  -0�� ��� 
 s t a r t� r  4M��� l 4I������ I 4I����
�� .coreclon****      � ****� o  47���� 20 selectedprojecttemplate selectedProjectTemplate� �����
�� 
insh� l :E������ n  :E��� 8 AE��
�� 
insl� n  :A��� 2 =A��
�� 
FCpr� o  :=���� 00 selectedfoldertemplate selectedFolderTemplate��  ��  ��  ��  ��  � o      ���� (0 newprojectinstance newProjectInstance��  � r  Pf��� l Pb ����  I Pb��
�� .coreclon****      � **** o  PS���� 20 selectedprojecttemplate selectedProjectTemplate ����
�� 
insh l V^���� n  V^  ;  ]^ n  V] 2 Y]��
�� 
FCpr o  VY���� 00 selectedfoldertemplate selectedFolderTemplate��  ��  ��  ��  ��  � o      ���� (0 newprojectinstance newProjectInstance� 	
	 n gz I  hz������ 
0 notify    m  hk � < C r e a t i n g   N e w   T e m p l a t e   I n s t a n c e  m  kn � 2 M o r e   i n p u t   m a y   b e   n e e d e d &  o  ns���� &0 scriptstartnotify scriptStartNotify �� m  sv �  ��  ��    f  gh
  n {� I  |������� $0 populatetemplate populateTemplate  !  o  |���� (0 newprojectinstance newProjectInstance! "#" J  �����  # $��$ J  ������  ��  ��    f  {| %&% Z ��'(����' G  ��)*) l ��+����+ = ��,-, n  ��./. 1  ����
�� 
FCPs/ o  ������ (0 newprojectinstance newProjectInstance- m  ����
�� FCPsFCPh��  ��  * l ��0����0 = ��121 n  ��343 1  ����
�� 
FCPs4 o  ������ (0 newprojectinstance newProjectInstance2 m  ����
�� FCPsFCPD��  ��  ( r  ��565 m  ����
�� FCPsFCPa6 n      787 1  ����
�� 
FCPs8 o  ������ (0 newprojectinstance newProjectInstance��  ��  & 9:9 r  ��;<; b  ��=>= m  ��?? �@@ $ o m n i f o c u s : / / / t a s k /> l ��A����A n  ��BCB 1  ����
�� 
ID  C o  ������ (0 newprojectinstance newProjectInstance��  ��  < o      ���� 0 theurl theURL: DED n ��FGF I  ����H���� 
0 notify  H IJI m  ��KK �LL 2 T e m p l a t e   I n s t a n c e   C r e a t e dJ MNM m  ��OO �PP V C l i c k   h e r e   t o   s e e   t h e   n e w   p r o j e c t   i n s t a n c e .N QRQ o  ������ "0 scriptendnotify scriptEndNotifyR S��S o  ������ 0 theurl theURL��  ��  G  f  ��E TUT r  ��VWV m  ��XX �YY  W o      ���� 0 justduplicate justDuplicateU Z[Z Q  ��\]��\ I ��������
�� .OFOCFCsynull���     obj ��  ��  ] R      ������
�� .ascrerr ****      � ****��  ��  ��  [ ^��^ L  ������  ��  ��  ��  � _`_ n �aba I  ���c���� 
0 notify  c ded m  �ff �gg < C r e a t i n g   N e w   T e m p l a t e   I n s t a n c ee hih m  jj �kk 2 M o r e   i n p u t   m a y   b e   n e e d e d &i lml o  	���� &0 scriptstartnotify scriptStartNotifym n��n m  	oo �pp  ��  ��  b  f  ��` qrq r   sts n uvu I  ��w��� *0 findthereplacements findTheReplacementsw xyx o  �~�~ 0 thevariables theVariablesy z�}z o  �|�| 00 thelistvariableoptions theListVariableOptions�}  �  v  f  t o      �{�{ "0 thereplacements theReplacementsr {|{ Z !/}~�z�y} = !&� l !$��x�w� 1  !$�v
�v 
rslt�x  �w  � m  $%�u
�u boovfals~ L  )+�t�t  �z  �y  | ��� l 00�s�r�q�s  �r  �q  � ��� Z  0����p�� = 07��� o  03�o�o 00 selectedfoldertemplate selectedFolderTemplate� m  36�� ���  T o p   L e v e l� Z  :t���n�� = :C��� o  :?�m�m (0 startorendoffolder startOrEndOfFolder� m  ?B�� ��� 
 s t a r t� r  F]��� l FY��l�k� I FY�j��
�j .coreclon****      � ****� o  FI�i�i 20 selectedprojecttemplate selectedProjectTemplate� �h��g
�h 
insh� l LU��f�e� n  LU��� 8 QU�d
�d 
insl� n  LQ��� 2 MQ�c
�c 
FCpr�  g  LM�f  �e  �g  �l  �k  � o      �b�b (0 newprojectinstance newProjectInstance�n  � r  `t��� l `p��a�`� I `p�_��
�_ .coreclon****      � ****� o  `c�^�^ 20 selectedprojecttemplate selectedProjectTemplate� �]��\
�] 
insh� l fl��[�Z� n  fl���  ;  kl� n  fk��� 2 gk�Y
�Y 
FCpr�  g  fg�[  �Z  �\  �a  �`  � o      �X�X (0 newprojectinstance newProjectInstance�p  � Z  w����W�� = w���� o  w|�V�V (0 startorendoffolder startOrEndOfFolder� m  |�� ��� 
 s t a r t� r  ����� l ����U�T� I ���S��
�S .coreclon****      � ****� o  ���R�R 20 selectedprojecttemplate selectedProjectTemplate� �Q��P
�Q 
insh� l ����O�N� n  ����� 8 ���M
�M 
insl� n  ����� 2 ���L
�L 
FCpr� o  ���K�K 00 selectedfoldertemplate selectedFolderTemplate�O  �N  �P  �U  �T  � o      �J�J (0 newprojectinstance newProjectInstance�W  � r  ����� l ����I�H� I ���G��
�G .coreclon****      � ****� o  ���F�F 20 selectedprojecttemplate selectedProjectTemplate� �E��D
�E 
insh� l ����C�B� n  �����  ;  ��� n  ����� 2 ���A
�A 
FCpr� o  ���@�@ 00 selectedfoldertemplate selectedFolderTemplate�C  �B  �D  �I  �H  � o      �?�? (0 newprojectinstance newProjectInstance� ��� Z �����>�=� = ����� n  ����� 1  ���<
�< 
FCPs� o  ���;�; (0 newprojectinstance newProjectInstance� m  ���:
�: FCPsFCPh� r  ����� m  ���9
�9 FCPsFCPa� n      ��� 1  ���8
�8 
FCPs� o  ���7�7 (0 newprojectinstance newProjectInstance�>  �=  � ��� Z  �����6�5� o  ���4�4 (0 defaultfolderfound defaultFolderFound� k  ���� ��� s  ����� l ����3�2� n  ����� 1  ���1
�1 
FCno� o  ���0�0 (0 newprojectinstance newProjectInstance�3  �2  � o      �/�/ 0 tempnote tempNote� ��� Y  � ��.���� k  ��� ��� Z ����-�,� C  ���� n  ���� 4  �+�
�+ 
cpar� o  �*�* 0 i  � o  ��)�) 0 tempnote tempNote� o  �(�( ,0 defaultfolderpointer defaultFolderPointer� r  ��� o  �'�' 0 i  � o      �&�& "0 parawithpointer paraWithPointer�-  �,  � ��%�  S  �%  �. 0 i  � l ����$�#� I ���"��!
�" .corecnte****       ****� n ����� 2 ��� 
�  
cpar� l ������ n  ����� 1  ���
� 
FCno� o  ���� 20 selectedprojecttemplate selectedProjectTemplate�  �  �!  �$  �#  � m  ���� � m  ������� ��� r  !,��� J  !&�� ��� o  !$�
� 
ret �  � n     � � 1  '+�
� 
txdl   f  &'�  Z  -� = -2 o  -0�� "0 parawithpointer paraWithPointer m  01��  r  5L	
	 c  5H n  5D 7 8D�
� 
cpar m  >@��  m  AC���� o  58�� 0 tempnote tempNote m  DG�
� 
TEXT
 l     �� o      �� 0 newnote newNote�  �    = Ob o  OR�� "0 parawithpointer paraWithPointer l Ra��
 I Ra�	�
�	 .corecnte****       **** n  R] 2 Y]�
� 
cpar n  RY 1  UY�
� 
FCno o  RU�� 20 selectedprojecttemplate selectedProjectTemplate�  �  �
   � r  e~ c  ez  n  ev!"! 7 hv�#$
� 
cpar# m  np�� $ m  qu����" o  eh� �  0 tempnote tempNote  m  vy��
�� 
TEXT l     %����% o      ���� 0 newnote newNote��  ��  �   r  ��&'& c  ��()( l ��*����* b  ��+,+ l ��-����- n  ��./. 7 ����01
�� 
cpar0 m  ������ 1 l ��2����2 \  ��343 o  ������ "0 parawithpointer paraWithPointer4 m  ������ ��  ��  / o  ������ 0 tempnote tempNote��  ��  , l ��5����5 n  ��676 7 ����89
�� 
cpar8 l ��:����: [  ��;<; o  ������ "0 parawithpointer paraWithPointer< m  ������ ��  ��  9 m  ��������7 o  ������ 0 tempnote tempNote��  ��  ��  ��  ) m  ����
�� 
TEXT' l     =����= o      ���� 0 newnote newNote��  ��   >?> r  ��@A@ m  ��BB �CC  A n     DED 1  ����
�� 
txdlE  f  ��? F��F r  ��GHG o  ������ 0 newnote newNoteH l     I����I n      JKJ 1  ����
�� 
FCnoK o  ������ (0 newprojectinstance newProjectInstance��  ��  ��  �6  �5  � LML l ����������  ��  ��  M NON r  ��PQP n ��RSR I  ����T���� $0 populatetemplate populateTemplateT UVU o  ������ (0 newprojectinstance newProjectInstanceV WXW o  ������ 0 thevariables theVariablesX Y��Y o  ������ "0 thereplacements theReplacements��  ��  S  f  ��Q o      ����  0 theattachments theAttachmentsO Z[Z l ����������  ��  ��  [ \]\ r  ��^_^ b  ��`a` m  ��bb �cc $ o m n i f o c u s : / / / t a s k /a l ��d����d n  ��efe 1  ����
�� 
ID  f o  ������ (0 newprojectinstance newProjectInstance��  ��  _ o      ���� 0 theurl theURL] ghg n �	iji I  �	��k���� 
0 notify  k lml m  ��nn �oo  S c r i p t   e n d e dm pqp m  ��rr �ss V C l i c k   h e r e   t o   s e e   t h e   n e w   p r o j e c t   i n s t a n c e .q tut o  ������ "0 scriptendnotify scriptEndNotifyu v��v o  ������ 0 theurl theURL��  ��  j  f  ��h w��w Q  		xy��x I 		
������
�� .OFOCFCsynull���     obj ��  ��  y R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   � 1    ��
�� 
FCDo  m     zz�                                                                                  OFOC  alis    X  Macintosh HD               ���4H+     MOmniFocus.app                                                   ��̥��        ����  	                Applications    ���      ̦(       M  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��   | {|{ l     ��������  ��  ��  | }~} l     ��������  ��  ��  ~ � i   9 <��� I      ������� (0 selectionpositions selectionPositions� ��� o      ���� 0 
selectlist 
selectList� ��� o      ���� 0 originallist originalList� ���� o      ���� (0 multipleselections multipleSelections��  ��  � k     ��� ��� Z     ������� o     ���� (0 multipleselections multipleSelections� k    q�� ��� r    ��� m    ����  � o      ���� 0 choicesfound choicesFound� ��� r    ��� J    
����  � o      ���� ,0 positionofselections positionOfSelections� ��� r    ��� m    ���� � o      ���� 0 j  � ���� W    q��� k   % l�� ��� r   % (��� m   % &���� � o      ���� 0 k  � ��� r   ) ,��� m   ) *��
�� boovfals� o      ���� 0 achoicefound aChoiceFound� ��� W   - f��� k   = a�� ��� Z   = [������� E   = F��� l  = A������ n   = A��� 4   > A���
�� 
cobj� o   ? @���� 0 k  � o   = >���� 0 
selectlist 
selectList��  ��  � l  A E������ n   A E��� 4   B E���
�� 
cobj� o   C D���� 0 j  � o   A B���� 0 originallist originalList��  ��  � k   I W�� ��� r   I M��� o   I J���� 0 j  � n      ���  ;   K L� o   J K���� ,0 positionofselections positionOfSelections� ��� r   N Q��� m   N O��
�� boovtrue� o      ���� 0 achoicefound aChoiceFound� ���� r   R W��� l  R U������ [   R U��� o   R S���� 0 choicesfound choicesFound� m   S T���� ��  ��  � o      ���� 0 choicesfound choicesFound��  ��  ��  � ���� r   \ a��� [   \ _��� o   \ ]���� 0 k  � m   ] ^���� � o      ���� 0 k  ��  � G   1 <��� l  1 6������ ?   1 6��� o   1 2���� 0 k  � l  2 5������ n   2 5��� 1   3 5��
�� 
leng� o   2 3���� 0 
selectlist 
selectList��  ��  ��  ��  � o   9 :���� 0 achoicefound aChoiceFound� ���� r   g l��� [   g j��� o   g h���� 0 j  � m   h i�� � o      �~�~ 0 j  ��  � G    $��� l   ��}�|� ?    ��� o    �{�{ 0 j  � l   ��z�y� n    ��� 1    �x
�x 
leng� o    �w�w 0 originallist originalList�z  �y  �}  �|  � l   "��v�u� =    "��� o    �t�t 0 choicesfound choicesFound� l   !��s�r� n    !��� 1    !�q
�q 
leng� o    �p�p 0 
selectlist 
selectList�s  �r  �v  �u  ��  ��  � k   t ��� ��� r   t w��� m   t u�o�o � o      �n�n 0 j  � ��� r   x {��� m   x y�m
�m 
null� o      �l�l ,0 positionofselections positionOfSelections� ��k� W   | ���� k   � ��� ��� r   � ���� m   � ��j�j � o      �i�i 0 k  � ��� W   � �� � k   � �  Z   � ��h�g E   � � l  � ��f�e n   � �	
	 4   � ��d
�d 
cobj o   � ��c�c 0 k  
 o   � ��b�b 0 
selectlist 
selectList�f  �e   l  � ��a�` n   � � 4   � ��_
�_ 
cobj o   � ��^�^ 0 j   o   � ��]�] 0 originallist originalList�a  �`   r   � � o   � ��\�\ 0 j   o      �[�[ ,0 positionofselections positionOfSelections�h  �g   �Z r   � � [   � � o   � ��Y�Y 0 k   m   � ��X�X  o      �W�W 0 k  �Z    l  � ��V�U G   � � l  � ��T�S ?   � � o   � ��R�R 0 k   l  � ��Q�P n   � � 1   � ��O
�O 
leng o   � ��N�N 0 
selectlist 
selectList�Q  �P  �T  �S   l  � � �M�L  >  � �!"! o   � ��K�K ,0 positionofselections positionOfSelections" m   � ��J
�J 
null�M  �L  �V  �U  � #�I# r   � �$%$ [   � �&'& o   � ��H�H 0 j  ' m   � ��G�G % o      �F�F 0 j  �I  � l  � �(�E�D( G   � �)*) ?   � �+,+ o   � ��C�C 0 j  , l  � �-�B�A- n   � �./. 1   � ��@
�@ 
leng/ o   � ��?�? 0 originallist originalList�B  �A  * l  � �0�>�=0 >  � �121 o   � ��<�< ,0 positionofselections positionOfSelections2 m   � ��;
�; 
null�>  �=  �E  �D  �k  � 3�:3 L   � �44 o   � ��9�9 ,0 positionofselections positionOfSelections�:  � 565 l     �8�7�6�8  �7  �6  6 787 l     �5�4�3�5  �4  �3  8 9:9 i   = @;<; I      �2=�1�2 $0 populatetemplate populateTemplate= >?> o      �0�0 0 
theproject 
theProject? @A@ o      �/�/ $0 cleanedvariables cleanedVariablesA B�.B o      �-�- "0 thereplacements theReplacements�.  �1  < k    UCC DED r     FGF J     �,�,  G o      �+�+ .0 delimcleanedvariables delimCleanedVariablesE HIH Y    $J�*KL�)J r    MNM l   O�(�'O b    PQP o    �&�&  0 variablesymbol variableSymbolQ l   R�%�$R n    STS 4    �#U
�# 
cobjU o    �"�" 0 i  T o    �!�! $0 cleanedvariables cleanedVariables�%  �$  �(  �'  N l     V� �V n      WXW  ;    X o    �� .0 delimcleanedvariables delimCleanedVariables�   �  �* 0 i  K m    	�� L l  	 Y��Y n   	 Z[Z 1   
 �
� 
leng[ o   	 
�� $0 cleanedvariables cleanedVariables�  �  �)  I \�\ O   %U]^] O   )T_`_ O   /Saba k   3Rcc ded r   3 Bfgf n  3 @hih I   4 @�j��  0 attachmentlist attachmentListj klk n   4 7mnm 1   5 7�
� 
ID  n  g   4 5l o�o c   7 <pqp n   7 :rsr 1   8 :�
� 
pclss  g   7 8q m   : ;�
� 
TEXT�  �  i  f   3 4g o      �� &0 theattachmentlist theAttachmentListe tut Z   C ]vw��v ?   C Hxyx n   C Fz{z 1   D F�
� 
leng{ o   C D�� $0 cleanedvariables cleanedVariablesy m   F G��  w r   K Y|}| n  K U~~ I   L U���
� $0 replacevariables replaceVariables� ��� n  L O��� 1   M O�	
�	 
pnam�  g   L M� ��� o   O P�� .0 delimcleanedvariables delimCleanedVariables� ��� o   P Q�� "0 thereplacements theReplacements�  �
    f   K L} n     ��� 1   V X�
� 
pnam�  g   U V�  �  u ��� r   ^ c��� J   ^ a�� ��� m   ^ _�� ���  �  � o      �� (0 possibledatechange possibleDateChange� ��� V   d ���� k   o ��� ��� r   o y��� n  o w��� I   p w���� 80 checkingfordateinformation checkingForDateInformation� ���  g   p q� ��� o   q r� �  .0 delimcleanedvariables delimCleanedVariables� ���� o   r s���� "0 thereplacements theReplacements��  �  �  f   o p� o      ���� (0 possibledatechange possibleDateChange� ���� Z   z ������� >  z ���� n   z ~��� 4   { ~���
�� 
cobj� m   | }���� � o   z {���� (0 possibledatechange possibleDateChange� m   ~ ��
�� 
msng� k   � ��� ��� Z   � ������� =  � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� (0 possibledatechange possibleDateChange� m   � ��� ��� 
 S t a r t� r   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� (0 possibledatechange possibleDateChange� n     ��� 1   � ���
�� 
FCDs�  g   � ���  � r   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� (0 possibledatechange possibleDateChange� n     ��� 1   � ���
�� 
FCDd�  g   � �� ���� r   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� (0 possibledatechange possibleDateChange� n     ��� 1   � ���
�� 
FCno�  g   � ���  � ��� =  � ���� l  � ������� n   � ���� 1   � ���
�� 
leng� o   � ����� (0 possibledatechange possibleDateChange��  ��  � m   � ����� � ���� r   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� (0 possibledatechange possibleDateChange� n     ��� 1   � ���
�� 
FCno�  g   � ���  ��  ��  � >  h n��� n   h l��� 4   i l���
�� 
cobj� m   j k���� � o   h i���� (0 possibledatechange possibleDateChange� m   l m��
�� 
msng� ��� Z   � �������� ?   � ���� n   � ���� 1   � ���
�� 
leng� o   � ����� $0 cleanedvariables cleanedVariables� m   � �����  � k   � ��� ��� r   � ���� n  � ���� 1   � ���
�� 
FCno�  g   � �� o      ���� 0 thefullnote theFullNote� ��� r   � ���� n  � ���� I   � �������� (0 eliminatevariables eliminateVariables� ���� o   � ����� 0 thefullnote theFullNote��  ��  �  f   � �� o      ���� 0 
thenewnote 
theNewNote� ���� r   � ���� n  � ���� I   � �������� $0 replacevariables replaceVariables�    o   � ����� 0 
thenewnote 
theNewNote  o   � ����� .0 delimcleanedvariables delimCleanedVariables �� o   � ����� "0 thereplacements theReplacements��  ��  �  f   � �� n      1   � ���
�� 
FCno  g   � ���  ��  ��  �  r   � �	
	 m   � ���
�� boovfals
 o      ���� &0 attachmentrequest attachmentRequest  Z   �=���� G   � E   � n  � � 1   � ���
�� 
FCno  g   � � m   � �  a t t a c h m e n t :   a s k E   n 
 1  
��
�� 
FCno  g   m  
 �  a t t a c h m e n t : a s k k  9  r   !  m  ��
�� boovtrue! o      ���� &0 attachmentrequest attachmentRequest "��" r  9#$# n 3%&% I  3��'���� $0 replacevariables replaceVariables' ()( n *+* 1  ��
�� 
FCno+  g  ) ,-, J  '.. /0/ m  "11 �22  a t t a c h m e n t : a s k0 3��3 m  "%44 �55  a t t a c h m e n t :   a s k��  - 6��6 J  '/77 898 m  '*:: �;;  9 <��< m  *-== �>>  ��  ��  ��  &  f  $ n     ?@? 1  48��
�� 
FCno@  g  34��  ��  ��   ABA r  >NCDC n >HEFE I  ?H��G���� &0 cleanexcessbreaks cleanExcessBreaksG H��H n ?DIJI 1  @D��
�� 
FCnoJ  g  ?@��  ��  F  f  >?D n     KLK 1  IM��
�� 
FCnoL  g  HIB MNM Z  O�OP����O o  OP���� &0 attachmentrequest attachmentRequestP Q  S�QR��Q k  V�SS TUT r  VoVWV c  VmXYX l ViZ����Z I Vi����[
�� .sysostdfalis    ��� null��  [ ��\��
�� 
prmp\ b  Ze]^] b  Za_`_ m  Z]aa �bb | Y o u   i n d i c a t e d   y o u   w o u l d   l i k e   t o   a t t a c h   a   f i l e   t o   t h e   p r o j e c t   "` n  ]`cdc 1  ^`��
�� 
pnamd  g  ]^^ m  adee �ff H " .   P l e a s e   s e l e c t   t h e   f i l e   t o   a t t a c h .��  ��  ��  Y m  il��
�� 
ctxtW o      ���� 00 theattachfilepathalias theAttachFilePathAliasU g��g O  p�hih I x�����j
�� .corecrel****      � null��  j ��kl
�� 
koclk m  |��
�� 
OSfAl ��m��
�� 
prdtm K  ��nn ��op
�� 
atfno o  ������ 00 theattachfilepathalias theAttachFilePathAliasp ��q��
�� 
OSinq m  ����
�� boovfals��  ��  i n pursr 1  qu��
�� 
FCnos  g  pq��  R R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  N tut O  ��vwv X  ��x��yx I ������z
�� .corecrel****      � null��  z ��{|
�� 
kocl{ m  ����
�� 
OSfA| ��}��
�� 
prdt} K  ��~~ ���
�� 
atfn o  ������ 0 theattachment theAttachment� �����
�� 
OSin� m  ����
�� boovfals��  ��  �� 0 theattachment theAttachmenty o  ������ &0 theattachmentlist theAttachmentListw n ����� 1  ����
�� 
FCno�  g  ��u ��� r  ����� m  ����
�� boovfals� o      ���� &0 attachmentrequest attachmentRequest� ��� l ���������  ��  �  � ��� l ���~���~  �   Going through the tasks   � ��� 0   G o i n g   t h r o u g h   t h e   t a s k s� ��� Y  �O��}���|� O  �J��� k  �I�� ��� r  ���� n ���� I   �{��z�{  0 attachmentlist attachmentList� ��� n   ��� 1  �y
�y 
ID  �  g   � ��x� c  ��� n  ��� 1  �w
�w 
pcls�  g  � m  �v
�v 
TEXT�x  �z  �  f  � � o      �u�u &0 theattachmentlist theAttachmentList� ��� Z  )���t�s� ?  ��� n  ��� 1  �r
�r 
leng� o  �q�q $0 cleanedvariables cleanedVariables� m  �p�p  � r  %��� n !��� I  !�o��n�o $0 replacevariables replaceVariables� ��� n ��� 1  �m
�m 
pnam�  g  � ��� o  �l�l .0 delimcleanedvariables delimCleanedVariables� ��k� o  �j�j "0 thereplacements theReplacements�k  �n  �  f  � n     ��� 1  "$�i
�i 
pnam�  g  !"�t  �s  � ��� r  *-��� m  *+�h
�h boovfals� o      �g�g "0 completethetask completeTheTask� ��� Z  .x���f�e� G  .G��� E  .7��� n .3��� 1  /3�d
�d 
FCno�  g  ./� m  36�� ���  c o m p l e t e : a s k� E  :C��� n :?��� 1  ;?�c
�c 
FCno�  g  :;� m  ?B�� ���  c o m p l e t e :   a s k� r  Jt��� l Jr��b�a� = Jr��� n  Jn��� 1  jn�`
�` 
bhit� l Jj��_�^� I Jj�]��
�] .sysodlogaskr        TEXT� b  JU��� b  JQ��� m  JM�� ��� � I n   t h e   n o t e ,   y o u   i n d i c a t e d   t h a t   y o u   w a n t e d   t o   b e   a s k e d   w h e t h e r   t o   c o m p l e t e   t h e   t a s k   "� l MP��\�[� n  MP��� 1  NP�Z
�Z 
pnam�  g  MN�\  �[  � m  QT�� ��� � "   w h e n   y o u   c r e a t e   a   n e w   i n s t a n c e   o f   t h i s   p r o j e c t .   W o u l d   y o u   l i k e   t o   c o m p l e t e   t h i s   t a s k ?� �Y��
�Y 
btns� J  X`�� ��� m  X[�� ���  Y e s ,   C o m p l e t e� ��X� m  [^�� ��� ( N o ,   L e a v e   I n c o m p l e t e�X  � �W��V
�W 
dflt� m  cd�U�U �V  �_  �^  � m  nq�� ���  Y e s ,   C o m p l e t e�b  �a  � o      �T�T "0 completethetask completeTheTask�f  �e  � ��� Z  yE���S�� o  yz�R�R "0 completethetask completeTheTask� r  }���� m  }~�Q
�Q boovtrue� n     ��� 1  ��P
�P 
FCcd�  g  ~�S  � k  �E�� � � r  �� n �� I  ���O�N�O $0 replacevariables replaceVariables  n ��	 1  ���M
�M 
FCno	  g  �� 

 J  ��  m  �� �  c o m p l e t e : a s k �L m  �� �  c o m p l e t e :   a s k�L   �K J  ��  m  �� �   �J m  �� �  �J  �K  �N    f  �� n      1  ���I
�I 
FCno  g  ��    r  ��!"! J  ��## $�H$ m  ��%% �&&  �H  " o      �G�G (0 possibledatechange possibleDateChange  '(' V  �)*) k  �++ ,-, r  ��./. n ��010 I  ���F2�E�F 80 checkingfordateinformation checkingForDateInformation2 343  g  ��4 565 o  ���D�D .0 delimcleanedvariables delimCleanedVariables6 7�C7 o  ���B�B "0 thereplacements theReplacements�C  �E  1  f  ��/ o      �A�A (0 possibledatechange possibleDateChange- 8�@8 Z  �9:;�?9 > ��<=< n  ��>?> 4  ���>@
�> 
cobj@ m  ���=�= ? o  ���<�< (0 possibledatechange possibleDateChange= m  ���;
�; 
msng: k  ��AA BCB Z  ��DE�:FD = ��GHG n  ��IJI 4  ���9K
�9 
cobjK m  ���8�8 J o  ���7�7 (0 possibledatechange possibleDateChangeH m  ��LL �MM 
 S t a r tE r  ��NON n  ��PQP 4  ���6R
�6 
cobjR m  ���5�5 Q o  ���4�4 (0 possibledatechange possibleDateChangeO n     STS 1  ���3
�3 
FCDsT  g  ���:  F r  ��UVU n  ��WXW 4  ���2Y
�2 
cobjY m  ���1�1 X o  ���0�0 (0 possibledatechange possibleDateChangeV n     Z[Z 1  ���/
�/ 
FCDd[  g  ��C \�.\ r  ��]^] n  ��_`_ 4  ���-a
�- 
cobja m  ���,�, ` o  ���+�+ (0 possibledatechange possibleDateChange^ n     bcb 1  ���*
�* 
FCnoc  g  ���.  ; ded = � fgf l ��h�)�(h n  ��iji 1  ���'
�' 
lengj o  ���&�& (0 possibledatechange possibleDateChange�)  �(  g m  ���%�% e k�$k r  lml n  non 4  �#p
�# 
cobjp m  �"�" o o  �!�! (0 possibledatechange possibleDateChangem n     qrq 1  � 
�  
FCnor  g  �$  �?  �@  * > ��sts n  ��uvu 4  ���w
� 
cobjw m  ���� v o  ���� (0 possibledatechange possibleDateChanget m  ���
� 
msng( xyx Z  Vz{��z ?  |}| n  ~~ 1  �
� 
leng o  �� $0 cleanedvariables cleanedVariables} m  ��  { k  R�� ��� r  1��� n +��� I   +���� $0 replacevariables replaceVariables� ��� n  %��� 1  !%�
� 
FCno�  g   !� ��� o  %&�� .0 delimcleanedvariables delimCleanedVariables� ��� o  &'�� "0 thereplacements theReplacements�  �  �  f   � n     ��� 1  ,0�
� 
FCno�  g  +,� ��� Z  2R����� > 29��� n 27��� m  37�
� 
FCct�  g  23� m  78�
� 
msng� r  <N��� n <H��� I  =H�
��	�
 &0 workingthecontext workingTheContext� ��� n =B��� m  >B�
� 
FCct�  g  =>� ��� o  BC�� .0 delimcleanedvariables delimCleanedVariables� ��� o  CD�� "0 thereplacements theReplacements�  �	  �  f  <=� n     ��� m  IM�
� 
FCct�  g  HI�  �  �  �  �  y ��� r  WZ��� m  WX�
� boovfals� o      �� &0 attachmentrequest attachmentRequest� ��� Z  [����� � G  [t��� E  [d��� n [`��� 1  \`��
�� 
FCno�  g  [\� m  `c�� ���  a t t a c h m e n t :   a s k� E  gp��� n gl��� 1  hl��
�� 
FCno�  g  gh� m  lo�� ���  a t t a c h m e n t : a s k� k  w��� ��� r  wz��� m  wx��
�� boovtrue� o      ���� &0 attachmentrequest attachmentRequest� ���� r  {���� n {���� I  |�������� $0 replacevariables replaceVariables� ��� n |���� 1  }���
�� 
FCno�  g  |}� ��� J  ���� ��� m  ���� ���  a t t a c h m e n t : a s k� ���� m  ���� ���  a t t a c h m e n t :   a s k��  � ���� J  ���� ��� m  ���� ���  � ���� m  ���� ���  ��  ��  ��  �  f  {|� n     ��� 1  ����
�� 
FCno�  g  ����  �  �   � ��� r  ����� n ����� I  ��������� &0 cleanexcessbreaks cleanExcessBreaks� ���� n ����� 1  ����
�� 
FCno�  g  ����  ��  �  f  ��� n     ��� 1  ����
�� 
FCno�  g  ��� ��� Z  �������� o  ������ &0 attachmentrequest attachmentRequest� Q  � ����� k  ���� ��� r  ����� c  ����� l �������� I �������
�� .sysostdfalis    ��� null��  � �����
�� 
prmp� b  ����� b  ����� m  ��	 	  �		 v Y o u   i n d i c a t e d   y o u   w o u l d   l i k e   t o   a t t a c h   a   f i l e   t o   t h e   t a s k   "� n  ��			 1  ����
�� 
pnam	  g  ��� m  ��		 �		 H " .   P l e a s e   s e l e c t   t h e   f i l e   t o   a t t a c h .��  ��  ��  � m  ����
�� 
ctxt� o      ���� 00 theattachfilepathalias theAttachFilePathAlias� 			 l ����������  ��  ��  	 	��	 O  ��			
		 I ������	
�� .corecrel****      � null��  	 ��		
�� 
kocl	 m  ����
�� 
OSfA	 ��	��
�� 
prdt	 K  ��		 ��		
�� 
atfn	 o  ������ 00 theattachfilepathalias theAttachFilePathAlias	 ��	��
�� 
OSin	 m  ����
�� boovfals��  ��  	
 n ��			 1  ����
�� 
FCno	  g  ����  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  � 			 O  A			 X  @	��		 I ;����	
�� .corecrel****      � null��  	 ��		
�� 
kocl	 m  #&��
�� 
OSfA	 ��	��
�� 
prdt	 K  )5		 ��	 	!
�� 
atfn	  o  ,-���� 0 theattachment theAttachment	! ��	"��
�� 
OSin	" m  01��
�� boovfals��  ��  �� 0 theattachment theAttachment	 o  ���� &0 theattachmentlist theAttachmentList	 n 
	#	$	# 1  
��
�� 
FCno	$  g  	 	%��	% r  BE	&	'	& m  BC��
�� boovfals	' o      ���� &0 attachmentrequest attachmentRequest��  � 	(��	( r  FI	)	*	) m  FG��
�� boovfals	* o      ���� "0 completethetask completeTheTask��  � 4  ����	+
�� 
FCft	+ o  ������ 0 i  �} 0 i  � m  ������ � l ��	,����	, I ����	-��
�� .corecnte****       ****	- n ��	.	/	. 2 ����
�� 
FCft	/  g  ����  ��  ��  �|  � 	0��	0 L  PR	1	1 o  PQ���� &0 theattachmentlist theAttachmentList��  b o   / 0���� 0 
theproject 
theProject` 1   ) ,��
�� 
FCDo^ m   % &	2	2�                                                                                  OFOC  alis    X  Macintosh HD               ���4H+     MOmniFocus.app                                                   ��̥��        ����  	                Applications    ���      ̦(       M  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  : 	3	4	3 l     ��������  ��  ��  	4 	5	6	5 l     ��������  ��  ��  	6 	7	8	7 i   A D	9	:	9 I      ��	;���� $0 replacevariables replaceVariables	; 	<	=	< o      ���� 0 thetext theText	= 	>	?	> o      ���� 0 thevariables theVariables	? 	@��	@ o      ���� "0 thereplacements theReplacements��  ��  	: k     b	A	A 	B	C	B Z    	D	E����	D =    	F	G	F n     	H	I	H 1    ��
�� 
leng	I o     ���� 0 thevariables theVariables	G m    ����  	E L    
	J	J o    	���� 0 thetext theText��  ��  	C 	K	L	K Y    _	M��	N	O��	M k    Z	P	P 	Q	R	Q r    $	S	T	S l    	U����	U n     	V	W	V 4     ��	X
�� 
cobj	X o    ���� 0 i  	W o    ���� 0 thevariables theVariables��  ��  	T n     	Y	Z	Y 1   ! #��
�� 
txdl	Z  f     !	R 	[	\	[ r   % *	]	^	] n   % (	_	`	_ 2   & (��
�� 
citm	` o   % &���� 0 thetext theText	^ o      ���� 0 thetext theText	\ 	a	b	a Z   + M	c	d��	e	c =  + 3	f	g	f n   + 1	h	i	h m   / 1��
�� 
pcls	i l  + /	j����	j n   + /	k	l	k 4   , /��	m
�� 
cobj	m o   - .���� 0 i  	l o   + ,���� "0 thereplacements theReplacements��  ��  	g m   1 2��
�� 
ldt 	d r   6 B	n	o	n c   6 >	p	q	p l  6 <	r����	r n   6 <	s	t	s 1   : <��
�� 
dstr	t l  6 :	u����	u n   6 :	v	w	v 4   7 :��	x
�� 
cobj	x o   8 9���� 0 i  	w o   6 7���� "0 thereplacements theReplacements��  ��  ��  ��  	q m   < =��
�� 
ctxt	o n     	y	z	y 1   ? A��
�� 
txdl	z  f   > ?��  	e r   E M	{	|	{ l  E I	}��~	} n   E I	~		~ 4   F I�}	�
�} 
cobj	� o   G H�|�| 0 i  	 o   E F�{�{ "0 thereplacements theReplacements�  �~  	| n     	�	�	� 1   J L�z
�z 
txdl	�  f   I J	b 	�	�	� r   N S	�	�	� c   N Q	�	�	� o   N O�y�y 0 thetext theText	� m   O P�x
�x 
TEXT	� o      �w�w 0 thetext theText	� 	��v	� r   T Z	�	�	� J   T V�u�u  	� n     	�	�	� 1   W Y�t
�t 
txdl	�  f   V W�v  �� 0 i  	N m    �s�s 	O l   	��r�q	� n    	�	�	� 1    �p
�p 
leng	� o    �o�o 0 thevariables theVariables�r  �q  ��  	L 	��n	� L   ` b	�	� o   ` a�m�m 0 thetext theText�n  	8 	�	�	� l     �l�k�j�l  �k  �j  	� 	�	�	� l     �i�h�g�i  �h  �g  	� 	�	�	� i   E H	�	�	� I      �f	��e�f (0 eliminatevariables eliminateVariables	� 	��d	� o      �c�c 0 thenote theNote�d  �e  	� Z     �	�	��b	�	� =    		�	�	� l    	��a�`	� I    �_	��^
�_ .corecnte****       ****	� n     	�	�	� 2   �]
�] 
cpar	� o     �\�\ 0 thenote theNote�^  �a  �`  	� m    �[�[ 	� L    	�	� m    	�	� �	�	�  �b  	� k    �	�	� 	�	�	� Y    <	��Z	�	�	�	� Z   ! 7	�	��Y�X	� C   ! +	�	�	� n   ! %	�	�	� 4   " %�W	�
�W 
cpar	� o   # $�V�V 0 i  	� o   ! "�U�U 0 thenote theNote	� o   % *�T�T  0 variablesymbol variableSymbol	� k   . 3	�	� 	�	�	� r   . 1	�	�	� o   . /�S�S 0 i  	� o      �R�R $0 variableposition variablePosition	� 	��Q	�  S   2 3�Q  �Y  �X  �Z 0 i  	� l   	��P�O	� I   �N	��M
�N .corecnte****       ****	� n    	�	�	� 2   �L
�L 
cpar	� o    �K�K 0 thenote theNote�M  �P  �O  	� m    �J�J 	� m    �I�I��	� 	�	�	� r   = D	�	�	� J   = @	�	� 	��H	� o   = >�G
�G 
ret �H  	� n     	�	�	� 1   A C�F
�F 
txdl	�  f   @ A	� 	�	�	� Z   E �	�	�	�	�	� =  E N	�	�	� o   E F�E�E $0 variableposition variablePosition	� l  F M	��D�C	� I  F M�B	��A
�B .corecnte****       ****	� l  F I	��@�?	� n   F I	�	�	� 2  G I�>
�> 
cpar	� o   F G�=�= 0 thenote theNote�@  �?  �A  �D  �C  	� r   Q `	�	�	� c   Q ^	�	�	� l  Q \	��<�;	� n   Q \	�	�	� l  R \	��:�9	� 7  R \�8	�	�
�8 
cpar	� m   V X�7�7 	� m   Y [�6�6���:  �9  	� o   Q R�5�5 0 thenote theNote�<  �;  	� m   \ ]�4
�4 
ctxt	� o      �3�3 0 
returnnote 
returnNote	� 	�	�	� =  c f	�	�	� o   c d�2�2 $0 variableposition variablePosition	� m   d e�1�1 	� 	��0	� r   i x	�	�	� c   i v	�	�	� l  i t	��/�.	� l  i t	��-�,	� n   i t	�	�	� 7  j t�+	�	�
�+ 
cpar	� m   n p�*�* 	� m   q s�)�)��	� o   i j�(�( 0 thenote theNote�-  �,  �/  �.  	� m   t u�'
�' 
ctxt	� o      �&�& 0 
returnnote 
returnNote�0  	� r   { �	�	�	� c   { �	�	�	� l  { �	��%�$	� b   { �	�	�	� l  { �	��#�"	� n   { �	�	�	� 7  | ��!	�	�
�! 
cpar	� m   � �� �  	� l  � �	���	� \   � �	�	�	� o   � ��� $0 variableposition variablePosition	� m   � ��� �  �  	� o   { |�� 0 thenote theNote�#  �"  	� l  � �	���	� n   � �	�
 	� 7  � ��


� 
cpar
 l  � �
��
 [   � �


 o   � ��� $0 variableposition variablePosition
 m   � ��� �  �  
 m   � �����
  o   � ��� 0 thenote theNote�  �  �%  �$  	� m   � ��
� 
ctxt	� o      �� 0 
returnnote 
returnNote	� 


 r   � �

	
 m   � �



 �

  
	 n     


 1   � ��
� 
txdl
  f   � �
 
�
 L   � �

 o   � ��� 0 
returnnote 
returnNote�  	� 


 l     ���
�  �  �
  
 


 l     �	���	  �  �  
 


 i   I L


 I      �
�� &0 workingthecontext workingTheContext
 


 o      �� 0 
thecontext 
theContext
 


 o      �� 0 thevariables theVariables
 
�
 o      �� "0 thereplacements theReplacements�  �  
 O     �


 Z    �
 
!� 
"
  =   
#
$
# o    ���� 0 
thecontext 
theContext
$ m    ��
�� 
msng
! L   
 ����  �   
" k    �
%
% 
&
'
& r    
(
)
( m    ���� 
) o      ���� 0 i  
' 
*
+
* r    
,
-
, m    ��
�� boovfals
- o      ���� 0 variablefound variableFound
+ 
.
/
. V    E
0
1
0 k   ( @
2
2 
3
4
3 Z  ( :
5
6����
5 l  ( 0
7����
7 E   ( 0
8
9
8 n   ( +
:
;
: 1   ) +��
�� 
pnam
; o   ( )���� 0 
thecontext 
theContext
9 l  + /
<����
< n   + /
=
>
= 4   , /��
?
�� 
cobj
? o   - .���� 0 i  
> o   + ,���� 0 thevariables theVariables��  ��  ��  ��  
6 r   3 6
@
A
@ m   3 4��
�� boovtrue
A o      ���� 0 variablefound variableFound��  ��  
4 
B��
B r   ; @
C
D
C [   ; >
E
F
E o   ; <���� 0 i  
F m   < =���� 
D o      ���� 0 i  ��  
1 F    '
G
H
G l    
I����
I B     
J
K
J o    ���� 0 i  
K l   
L����
L n    
M
N
M 1    ��
�� 
leng
N o    ���� 0 thevariables theVariables��  ��  ��  ��  
H l  # %
O����
O H   # %
P
P o   # $���� 0 variablefound variableFound��  ��  
/ 
Q��
Q Z   F �
R
S��
T
R H   F H
U
U o   F G���� 0 variablefound variableFound
S L   K M
V
V o   K L���� 0 
thecontext 
theContext��  
T k   P �
W
W 
X
Y
X r   P \
Z
[
Z n  P Z
\
]
\ I   Q Z��
^���� $0 replacevariables replaceVariables
^ 
_
`
_ n   Q T
a
b
a 1   R T��
�� 
pnam
b o   Q R���� 0 
thecontext 
theContext
` 
c
d
c o   T U���� 0 thevariables theVariables
d 
e��
e o   U V���� "0 thereplacements theReplacements��  ��  
]  f   P Q
[ o      ���� (0 desiredcontextname desiredContextName
Y 
f
g
f Z   ] x
h
i��
j
h l  ] d
k����
k =  ] d
l
m
l n   ] b
n
o
n 1   ` b��
�� 
pcls
o l  ] `
p����
p n   ] `
q
r
q 1   ^ `��
�� 
ctnr
r o   ] ^���� 0 
thecontext 
theContext��  ��  
m m   b c��
�� 
docu��  ��  
i r   g n
s
t
s n   g l
u
v
u 2   j l��
�� 
FCct
v 1   g j��
�� 
FCDo
t o      ���� $0 contextsinfolder contextsInFolder��  
j r   q x
w
x
w n  q v
y
z
y 2   t v��
�� 
FCct
z l  q t
{����
{ n   q t
|
}
| 1   r t��
�� 
ctnr
} o   q r���� 0 
thecontext 
theContext��  ��  
x o      ���� $0 contextsinfolder contextsInFolder
g 
~

~ l  y y��������  ��  ��  
 
�
�
� r   y |
�
�
� m   y z��
�� 
null
� o      ���� "0 positionoffound positionOfFound
� 
�
�
� r   } �
�
�
� J   } ����  
� o      ���� 20 namesofcontextsinfolder namesOfContextsInFolder
� 
�
�
� Y   � �
���
�
���
� k   � �
�
� 
�
�
� r   � �
�
�
� n   � �
�
�
� 1   � ���
�� 
pnam
� l  � �
�����
� n   � �
�
�
� 4   � ���
�
�� 
cobj
� o   � ����� 0 i  
� o   � ����� $0 contextsinfolder contextsInFolder��  ��  
� n      
�
�
�  ;   � �
� o   � ����� 20 namesofcontextsinfolder namesOfContextsInFolder
� 
���
� Z  � �
�
�����
� =  � �
�
�
� l  � �
�����
� n   � �
�
�
� 4   � ���
�
�� 
cobj
� o   � ����� 0 i  
� o   � ����� 20 namesofcontextsinfolder namesOfContextsInFolder��  ��  
� o   � ����� (0 desiredcontextname desiredContextName
� r   � �
�
�
� o   � ����� 0 i  
� o      ���� "0 positionoffound positionOfFound��  ��  ��  �� 0 i  
� m   � ����� 
� l  � �
�����
� n   � �
�
�
� 1   � ���
�� 
leng
� o   � ����� $0 contextsinfolder contextsInFolder��  ��  ��  
� 
�
�
� l  � ���������  ��  ��  
� 
���
� Z   � �
�
���
�
� >  � �
�
�
� o   � ����� "0 positionoffound positionOfFound
� m   � ���
�� 
null
� L   � �
�
� l  � �
�����
� n   � �
�
�
� 4   � ���
�
�� 
cobj
� o   � ����� "0 positionoffound positionOfFound
� o   � ����� $0 contextsinfolder contextsInFolder��  ��  ��  
� k   � �
�
� 
�
�
� r   � �
�
�
� l  � �
�����
� n   � �
�
�
� 1   � ���
�� 
ctnr
� o   � ����� 0 
thecontext 
theContext��  ��  
� o      ���� 0 thecontainer theContainer
� 
�
�
� O   � �
�
�
� r   � �
�
�
� I  � �����
�
�� .corecrel****      � null��  
� ��
�
�
�� 
kocl
� m   � ���
�� 
FCct
� ��
�
�
�� 
insh
� l  � �
�����
� n   � �
�
�
�  ;   � �
� n   � �
�
�
� 2  � ���
�� 
FCct
�  g   � ���  ��  
� ��
���
�� 
prdt
� K   � �
�
� ��
���
�� 
pnam
� o   � ����� (0 desiredcontextname desiredContextName��  ��  
� o      ���� 0 
newcontext 
newContext
� o   � ����� 0 thecontainer theContainer
� 
��
� L   � �
�
� o   � ��~�~ 0 
newcontext 
newContext�  ��  ��  
 m     
�
��                                                                                  OFOC  alis    X  Macintosh HD               ���4H+     MOmniFocus.app                                                   ��̥��        ����  	                Applications    ���      ̦(       M  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  
 
�
�
� l     �}�|�{�}  �|  �{  
� 
�
�
� l     �z�y�x�z  �y  �x  
� 
�
�
� i   M P
�
�
� I      �w
��v�w $0 findthevariables findTheVariables
� 
��u
� o      �t�t 0 
theproject 
theProject�u  �v  
� k    �
�
� 
�
�
� O    �
�
�
� O   �
�
�
� k   
�
�
� 
�
�
� r   
 
�
�
� n   
 
�
�
� 1    �s
�s 
FCno
� o   
 �r�r 0 
theproject 
theProject
� o      �q�q 0 thefullnote theFullNote
� 
�
�
� Z   !
�
��p�o
� =   
�
�
� o    �n�n 0 thefullnote theFullNote
� m    �m
�m 
msng
� L    
�
� J    
�
� 
�
�
� J    �l�l  
� 
��k
� J    �j�j  �k  �p  �o  
� 
�
�
� r   " %
�
�
� m   " #�i
�i 
null
� o      �h�h 0 thenote theNote
� 
�
�
� Y   & T
��g
�
�
�
� Z   6 O �f�e  C   6 @ n   6 : 4   7 :�d
�d 
cpar o   8 9�c�c 0 i   o   6 7�b�b 0 thefullnote theFullNote o   : ?�a�a  0 variablesymbol variableSymbol k   C K 	 r   C I

 n   C G 4   D G�`
�` 
cpar o   E F�_�_ 0 i   o   C D�^�^ 0 thefullnote theFullNote o      �]�] 0 thenote theNote	 �\  S   J K�\  �f  �e  �g 0 i  
� l  ) 0�[�Z I  ) 0�Y�X
�Y .corecnte****       **** n   ) , 2  * ,�W
�W 
cpar o   ) *�V�V 0 thefullnote theFullNote�X  �[  �Z  
� m   0 1�U�U 
� m   1 2�T�T��
�  Z  U f�S�R =  U X o   U V�Q�Q 0 thenote theNote m   V W�P
�P 
null L   [ b J   [ a  J   [ ]�O�O   �N J   ] _�M�M  �N  �S  �R     r   g k!"! J   g i�L�L  " o      �K�K $0 cleanedvariables cleanedVariables  #$# r   l ~%&% J   l z'' ()( b   l s*+* m   l m,, �--   + o   m r�J�J  0 variablesymbol variableSymbol) .�I. o   s x�H�H  0 variablesymbol variableSymbol�I  & n     /0/ 1   { }�G
�G 
txdl0  f   z {$ 121 r    �343 n    �565 2   � ��F
�F 
citm6 o    ��E�E 0 thenote theNote4 o      �D�D 0 thevariables theVariables2 787 l  � ��C�B�A�C  �B  �A  8 9:9 Y   � �;�@<=�?; Z   � �>?�>�=> >  � �@A@ n   � �BCB 4   � ��<D
�< 
cobjD o   � ��;�; 0 thevar theVarC o   � ��:�: 0 thevariables theVariablesA m   � �EE �FF  ? r   � �GHG n   � �IJI 4   � ��9K
�9 
cobjK o   � ��8�8 0 thevar theVarJ o   � ��7�7 0 thevariables theVariablesH l     L�6�5L n      MNM  ;   � �N o   � ��4�4 $0 cleanedvariables cleanedVariables�6  �5  �>  �=  �@ 0 thevar theVar< m   � ��3�3 = l  � �O�2�1O n   � �PQP 1   � ��0
�0 
lengQ o   � ��/�/ 0 thevariables theVariables�2  �1  �?  : RSR l  � ��.�-�,�.  �-  �,  S TUT r   � �VWV J   � ��+�+  W o      �*�* 0 optionlists optionListsU XYX Y   ��Z�)[\�(Z Z   ��]^�'_] F   � �`a` l  � �b�&�%b E   � �cdc n   � �efe 4   � ��$g
�$ 
cobjg o   � ��#�# 0 i  f o   � ��"�" $0 cleanedvariables cleanedVariablesd o   � ��!�! 40 optionliststartdelimiter optionListStartDelimiter�&  �%  a l  � �h� �h E   � �iji n   � �klk 4   � ��m
� 
cobjm o   � ��� 0 i  l o   � ��� $0 cleanedvariables cleanedVariablesj o   � ��� 00 optionlistenddelimiter optionListEndDelimiter�   �  ^ k   ��nn opo r   �
qrq J   �ss tut b   � �vwv b   � �xyx 1   � ��
� 
spacy o   � ��� 40 optionliststartdelimiter optionListStartDelimiterw 1   � ��
� 
spacu z{z b   � �|}| b   � �~~ 1   � ��
� 
spac o   � ��� 00 optionlistenddelimiter optionListEndDelimiter} 1   � ��
� 
spac{ ��� b   � ���� 1   � ��
� 
spac� o   � ��� 40 optionliststartdelimiter optionListStartDelimiter� ��� b   � ���� 1   � ��
� 
spac� o   � ��� 00 optionlistenddelimiter optionListEndDelimiter� ��� o   � ��� 40 optionliststartdelimiter optionListStartDelimiter� ��� o   ��� 00 optionlistenddelimiter optionListEndDelimiter�  r n     ��� 1  	�
� 
txdl�  f  p ��� r  ��� n  ��� 2  �
� 
citm� l ���
� n  ��� 4  �	�
�	 
cobj� o  �� 0 i  � o  �� $0 cleanedvariables cleanedVariables�  �
  � o      �� 0 thesplit theSplit� ��� r  ��� l ���� n  ��� 4  ��
� 
cobj� m  �� � o  �� 0 thesplit theSplit�  �  � l     �� ��� n      ��� 4  ���
�� 
cobj� o  ���� 0 i  � o  ���� $0 cleanedvariables cleanedVariables�   ��  � ��� r  $��� n  "��� 4  "���
�� 
cobj� m   !���� � o  ���� 0 thesplit theSplit� o      ���� &0 newoptionlisttext newOptionListText� ��� r  %1��� J  %-�� ��� m  %(�� ���  ,  � ���� m  (+�� ���  ,��  � n     ��� 1  .0��
�� 
txdl�  f  -.� ��� r  27��� n  25��� 2  35��
�� 
citm� o  23���� &0 newoptionlisttext newOptionListText� o      ���� 0 newoptionlist newOptionList� ��� r  8;��� m  89��
�� boovtrue� o      ���� 0 
emptyfound 
emptyFound� ��� V  <���� Y  B��������� k  O��� ��� r  OR��� m  OP��
�� boovfals� o      ���� 0 
emptyfound 
emptyFound� ���� Z  S�������� = S[��� n  SW��� 4  TW���
�� 
cobj� o  UV���� 0 j  � o  ST���� 0 newoptionlist newOptionList� m  WZ�� ���  � k  ^��� ��� Z  ^������ = ^a��� o  ^_���� 0 j  � m  _`���� � r  dq��� n  do��� 7 eo����
�� 
cobj� m  ik���� � m  ln������� o  de���� 0 newoptionlist newOptionList� o      ���� 0 newoptionlist newOptionList� ��� = ty��� o  tu���� 0 j  � n  ux��� 1  vx��
�� 
leng� o  uv���� 0 newoptionlist newOptionList� ���� r  |���� n  |���� 7 }�����
�� 
cobj� m  ������ � m  ��������� o  |}���� 0 newoptionlist newOptionList� o      ���� 0 newoptionlist newOptionList��  � r  ����� b  ����� l �������� n  ����� 7 ������
�� 
cobj� m  ������ � l �������� \  ����� o  ������ 0 j  � m  ������ ��  ��  � o  ������ 0 newoptionlist newOptionList��  ��  � l �� ����  n  �� 7 ����
�� 
cobj l ������ [  �� o  ������ 0 j   m  ������ ��  ��   m  �������� o  ������ 0 newoptionlist newOptionList��  ��  � o      ���� 0 newoptionlist newOptionList� 	 r  ��

 m  ����
�� boovtrue o      ���� 0 
emptyfound 
emptyFound	 ��  S  ����  ��  ��  ��  �� 0 j  � m  EF���� � n  FJ 1  GI��
�� 
leng o  FG���� 0 newoptionlist newOptionList��  � o  @A���� 0 
emptyfound 
emptyFound� �� r  �� o  ������ 0 newoptionlist newOptionList n        ;  �� o  ������ 0 optionlists optionLists��  �'  _ r  �� J  ������   n        ;  �� o  ������ 0 optionlists optionLists�) 0 i  [ m   � ����� \ n   � � 1   � ���
�� 
leng o   � ����� $0 cleanedvariables cleanedVariables�(  Y  r  �� J  ������   n      1  ����
�� 
txdl  f  ��  ��  l ����������  ��  ��  ��  
� 1    ��
�� 
FCDo
� m     !!�                                                                                  OFOC  alis    X  Macintosh HD               ���4H+     MOmniFocus.app                                                   ��̥��        ����  	                Applications    ���      ̦(       M  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  
� "��" L  ��## J  ��$$ %&% o  ������ $0 cleanedvariables cleanedVariables& '��' o  ������ 0 optionlists optionLists��  ��  
� ()( l     ��������  ��  ��  ) *+* l     ��������  ��  ��  + ,-, i   Q T./. I      ��0���� *0 findthereplacements findTheReplacements0 121 o      ���� 0 thevariables theVariables2 3��3 o      ���� 0 optionlists optionLists��  ��  / k    	44 565 O    787 O   9:9 k   
;; <=< r   
 >?> J   
 ����  ? o      ���� "0 thereplacements theReplacements= @A@ r    BCB m    DD �EE B S e l e c t   R e p l a c e m e n t s   f o r   V a r i a b l e sC o      ���� 0 thetitle theTitleA F��F Y   G��HI��G k     �JJ KLK Z     sMNOPM E     &QRQ n     $STS 4   ! $��U
�� 
cobjU o   " #���� 0 i  T o     !���� 0 thevariables theVariablesR m   $ %VV �WW 
 t o d a yN r   ) 1XYX l  ) .Z����Z I  ) .������
�� .misccurdldt    ��� null��  ��  ��  ��  Y l     [����[ n      \]\  ;   / 0] o   . /���� "0 thereplacements theReplacements��  ��  O ^_^ C   4 :`a` n   4 8bcb 4   5 8��d
�� 
cobjd o   6 7���� 0 i  c o   4 5���� 0 thevariables theVariablesa m   8 9ee �ff  d a t e_ ghg r   = Kiji b   = Iklk b   = Gmnm b   = Eopo b   = @qrq m   = >ss �tt l W h a t   d a t e   w o u l d   y o u   l i k e   t o   u s e   f o r   t h e   d a t e   v a r i a b l e  r 1   > ?��
�� 
quotp l  @ Du����u n   @ Dvwv 4   A D��x
�� 
cobjx o   B C���� 0 i  w o   @ A���� 0 thevariables theVariables��  ��  n 1   E F��
�� 
quotl m   G Hyy �zz V ?   Y o u   c a n   u s e   a n   a b s o l u t e   o r   r e l a t i v e   d a t e .j o      ���� 0 thetext theTexth {|{ >  N U}~} n   N R� 4   O R���
�� 
cobj� o   P Q���� 0 i  � o   N O���� 0 optionlists optionLists~ J   R T��  | ��~� r   X b��� b   X `��� b   X ^��� m   X Y�� ��� � W h i c h   o f   t h e   f o l l o w i n g   o p t i o n s   w o u l d   y o u   l i k e   t o   a s s i g n   t o   t h e   v a r i a b l e   "� l  Y ]��}�|� n   Y ]��� 4   Z ]�{�
�{ 
cobj� o   [ \�z�z 0 i  � o   Y Z�y�y 0 thevariables theVariables�}  �|  � m   ^ _�� ���  " ?� o      �x�x 0 thetext theText�~  P r   e s��� b   e q��� b   e o��� b   e m��� b   e h��� m   e f�� ��� > W h a t   w o u l d   y o u   l i k e   t o   r e p l a c e  � 1   f g�w
�w 
quot� l  h l��v�u� n   h l��� 4   i l�t�
�t 
cobj� o   j k�s�s 0 i  � o   h i�r�r 0 thevariables theVariables�v  �u  � 1   m n�q
�q 
quot� m   o p�� ���    w i t h ?� o      �p�p 0 thetext theTextL ��o� Z   t ����n�m� H   t {�� E   t z��� n   t x��� 4   u x�l�
�l 
cobj� o   v w�k�k 0 i  � o   t u�j�j 0 thevariables theVariables� m   x y�� ��� 
 t o d a y� Q   ~ ����� Z   � ����i�� =  � ���� n   � ���� 4   � ��h�
�h 
cobj� o   � ��g�g 0 i  � o   � ��f�f 0 optionlists optionLists� J   � ��e�e  � k   � ��� ��� r   � ���� n   � ���� 1   � ��d
�d 
ttxt� l  � ���c�b� I  � ��a��
�a .sysodlogaskr        TEXT� o   � ��`�` 0 thetext theText� �_��^
�_ 
dtxt� m   � ��� ���  �^  �c  �b  � o      �]�]  0 thereturninput theReturnInput� ��� Z   � ����\�[� C   � ���� n   � ���� 4   � ��Z�
�Z 
cobj� o   � ��Y�Y 0 i  � o   � ��X�X 0 thevariables theVariables� m   � ��� ���  d a t e� k   � ��� ��� r   � ���� n  � ���� I   � ��W��V�W 0 englishtime englishTime� ��U� o   � ��T�T  0 thereturninput theReturnInput�U  �V  �  f   � �� o      �S�S  0 thereturninput theReturnInput� ��� r   � ���� l  � ���R�Q� I  � ��P�O�N
�P .misccurdldt    ��� null�O  �N  �R  �Q  � o      �M�M  0 thecurrentdate theCurrentDate� ��� r   � ���� m   � ��L�L  � n      ��� 1   � ��K
�K 
time� o   � ��J�J  0 thecurrentdate theCurrentDate� ��I� r   � ���� [   � ���� o   � ��H�H  0 thecurrentdate theCurrentDate� o   � ��G�G  0 thereturninput theReturnInput� o      �F�F  0 thereturninput theReturnInput�I  �\  �[  � ��E� r   � ���� o   � ��D�D  0 thereturninput theReturnInput� l     ��C�B� n      ���  ;   � �� o   � ��A�A "0 thereplacements theReplacements�C  �B  �E  �i  � r   � ���� c   � ���� l  � ���@�?� I  � ��>��
�> .gtqpchltns    @   @ ns  � l  � ���=�<� n   � ���� 4   � ��;�
�; 
cobj� o   � ��:�: 0 i  � o   � ��9�9 0 optionlists optionLists�=  �<  � �8��7
�8 
prmp� o   � ��6�6 0 thetext theText�7  �@  �?  � m   � ��5
�5 
TEXT� l     ��4�3� n      ���  ;   � �� o   � ��2�2 "0 thereplacements theReplacements�4  �3  � R      �1� 
�1 .ascrerr ****      � ****� o      �0�0 0 	errortext 	errorText  �/�.
�/ 
errn o      �-�- 0 errornumber errorNumber�.  � Z   � ��,�+ =  � � o   � ��*�* 0 errornumber errorNumber m   � ��)�)�� L   � � m   � ��(
�( boovfals�,  �+  �n  �m  �o  �� 0 i  H m    �'�' I l   �&�% n    	 1    �$
�$ 
leng	 o    �#�# 0 thevariables theVariables�&  �%  ��  ��  : 1    �"
�" 
FCDo8 m     

�                                                                                  OFOC  alis    X  Macintosh HD               ���4H+     MOmniFocus.app                                                   ��̥��        ����  	                Applications    ���      ̦(       M  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  6 �! L  	 o  � �  "0 thereplacements theReplacements�!  -  l     ����  �  �    l     ����  �  �    i   U X I      ��� &0 cleanexcessbreaks cleanExcessBreaks � o      �� 0 thetext theText�  �   k     �  Z    �� =     o     �� 0 thetext theText m    �
� 
msng L     m    �
� 
msng�  �     Z   !"��! =   #$# o    �� 0 thetext theText$ m    %% �&&  " L    '' m    (( �))  �  �    *+* Z   ,,-��, =   #./. l   !0��
0 I   !�	1�
�	 .corecnte****       ****1 n    232 2   �
� 
cpar3 o    �� 0 thetext theText�  �  �
  / m   ! "�� - L   & (44 o   & '�� 0 thetext theText�  �  + 565 Y   - T7�89:7 Z   = O;<��; >  = C=>= n   = A?@? 4   > A� A
�  
cparA o   ? @���� 0 i  @ o   = >���� 0 thetext theText> m   A BBB �CC  < k   F KDD EFE r   F IGHG o   F G���� 0 i  H o      ���� 0 textends textEndsF I��I  S   J K��  �  �  � 0 i  8 l  0 7J����J I  0 7��K��
�� .corecnte****       ****K n   0 3LML 2  1 3��
�� 
cparM o   0 1���� 0 thetext theText��  ��  ��  9 m   7 8���� : m   8 9������6 NON Y   U |P��QR��P Z   e wST����S >  e kUVU n   e iWXW 4   f i��Y
�� 
cparY o   g h���� 0 j  X o   e f���� 0 thetext theTextV m   i jZZ �[[  T k   n s\\ ]^] r   n q_`_ o   n o���� 0 j  ` o      ���� 0 
textstarts 
textStarts^ a��a  S   r s��  ��  ��  �� 0 j  Q m   X Y���� R l  Y `b����b I  Y `��c��
�� .corecnte****       ****c n   Y \ded 2  Z \��
�� 
cpare o   Y Z���� 0 thetext theText��  ��  ��  ��  O fgf r   } �hih J   } �jj k��k o   } ~��
�� 
ret ��  i 1   � ���
�� 
txdlg lml r   � �non c   � �pqp n   � �rsr 7  � ���tu
�� 
cpart o   � ����� 0 
textstarts 
textStartsu o   � ����� 0 textends textEndss o   � ����� 0 thetext theTextq m   � ���
�� 
ctxto o      ���� 0 
thenewtext 
theNewTextm vwv r   � �xyx m   � �zz �{{  y 1   � ���
�� 
txdlw |��| L   � �}} o   � ����� 0 
thenewtext 
theNewText��   ~~ l     ��������  ��  ��   ��� l     ��������  ��  ��  � ��� i   Y \��� I      �������� .0 checkforothertemplate checkForOtherTemplate��  ��  � k    ��� ��� O    ���� O   ���� k   
��� ��� r   
 ��� l  
 ������ I  
 �����
�� .corecnte****       ****� l  
 ������ 6 
 ��� 2   
 ��
�� 
FCff� l   ������ E    ��� n   ��� 1    ��
�� 
pnam�  g    � m    �� ���  T e m p l a t e��  ��  ��  ��  ��  ��  ��  � o      ���� 0 thecount theCount� ��� Z    ������� l    ������ =    ��� o    ���� 0 thecount theCount� m    ����  ��  ��  � k   # ��� ��� r   # (��� 2   # &��
�� 
FCff� o      ���� (0 templatefolderlist templateFolderList� ��� r   ) -��� J   ) +����  � o      ���� 00 templatefoldernamelist templateFolderNameList� ��� X   . e����� k   > `�� ��� r   > A��� m   > ?�� ���  � o      ���� 0 nextlistitem nextListItem� ��� Z  B S������� =  B I��� l  B G������ n   B G��� 1   E G��
�� 
pcls� n  B E��� 1   C E��
�� 
ctnr� o   B C���� 0 	thefolder 	theFolder��  ��  � m   G H��
�� 
FCAr� r   L O��� m   L M�� ��� !�  � o      ���� 0 nextlistitem nextListItem��  ��  � ��� r   T [��� b   T Y��� o   T U���� 0 nextlistitem nextListItem� l  U X������ n   U X��� 1   V X��
�� 
pnam� o   U V���� 0 	thefolder 	theFolder��  ��  � o      ���� 0 nextlistitem nextListItem� ���� r   \ `��� o   \ ]���� 0 nextlistitem nextListItem� l     ������ n      ���  ;   ^ _� o   ] ^���� 00 templatefoldernamelist templateFolderNameList��  ��  ��  �� 0 	thefolder 	theFolder� o   1 2���� (0 templatefolderlist templateFolderList� ��� r   f ���� I  f ����
�� .gtqpchltns    @   @ ns  � o   f g���� 00 templatefoldernamelist templateFolderNameList� ����
�� 
appr� m   h i�� ��� 2 C h o o s e   T e m p l a t e   F o l d e r ( s )� ����
�� 
prmp� m   l o�� ��� � N o   o b v i o u s   t e m p l a t e   f o l d e r s   w e r e   f o u n d .   P l e a s e   s e l e c t   t h e   f o l d e r ( s )   i n   w h i c h   y o u   s t o r e   t e m p l a t e s .� ����
�� 
okbt� m   r u�� ��� , S e t   a s   T e m p l a t e   F o l d e r� �����
�� 
mlsl� m   x y��
�� boovtrue��  � o      ���� 00 selectedtemplatefolder selectedTemplateFolder� ��� Z  � �������� =  � ���� o   � ����� 00 selectedtemplatefolder selectedTemplateFolder� m   � ���
�� boovfals� L   � ��� m   � ���������  ��  � ��� r   � ���� n  � ���� I   � �������� (0 selectionpositions selectionPositions� ��� o   � ����� 00 selectedtemplatefolder selectedTemplateFolder� ��� o   � ����� 00 templatefoldernamelist templateFolderNameList� ���� m   � ���
�� boovtrue��  ��  �  f   � �� o      ���� 00 templatefolderposition templateFolderPosition� ��� r   � �   J   � �����   o      ���� 20 existingtemplatefolders existingTemplateFolders� �� Y   � ����� r   � � n   � �	 4   � ���

�� 
cobj
 o   � ����� 0 i  	 o   � ����� (0 templatefolderlist templateFolderList l     ���� n        ;   � � o   � ����� 20 existingtemplatefolders existingTemplateFolders��  ��  �� 0 i   m   � �����  l  � ���� n   � � 1   � ��~
�~ 
leng o   � ��}�} 00 templatefolderposition templateFolderPosition��  �  ��  ��  ��  � r   � � 6 � � 2   � ��|
�| 
FCff l  � ��{�z E   � � n  � � 1   � ��y
�y 
pnam  g   � � m   � � �  T e m p l a t e�{  �z   o      �x�x 20 existingtemplatefolders existingTemplateFolders�  l  � ��w�v�u�w  �v  �u    r   � � !  J   � ��t�t  ! o      �s�s *0 oldtemplateprojects oldTemplateProjects "#" r   � �$%$ J   � ��r�r  % o      �q�q 40 possibletemplateprojects possibleTemplateProjects# &'& Y   �a(�p)*�o( k   �\++ ,-, r   � �./. l  � �0�n�m0 =  � �121 n   � �343 1   � ��l
�l 
FCHi4 n   � �565 4   � ��k7
�k 
cobj7 o   � ��j�j 0 i  6 o   � ��i�i 20 existingtemplatefolders existingTemplateFolders2 m   � ��h
�h boovtrue�n  �m  / o      �g�g 20 templatefolderisdropped templateFolderIsDropped- 8�f8 Q   �\9:�e9 Z   �S;<�d=; H   � �>> o   � ��c�c 20 templatefolderisdropped templateFolderIsDropped< r   �-?@? b   �+ABA o   � ��b�b 40 possibletemplateprojects possibleTemplateProjectsB l  �*C�a�`C 6 �*DED 2   ��_
�_ 
FCfxE F  )FGF F  HIH l J�^�]J = KLK n MNM 1  �\
�\ 
ctnrN  g  L l 	O�[�ZO n  	PQP 4  �YR
�Y 
cobjR o  �X�X 0 i  Q o  	�W�W 20 existingtemplatefolders existingTemplateFolders�[  �Z  �^  �]  I l S�V�US > TUT n VWV 1  �T
�T 
FCPsW  g  U m  �S
�S FCPsFCPD�V  �U  G l (X�R�QX > (YZY n "[\[ 1  "�P
�P 
FCPs\  g  Z m  #'�O
�O FCPsFCPd�R  �Q  �a  �`  @ o      �N�N 40 possibletemplateprojects possibleTemplateProjects�d  = r  0S]^] b  0Q_`_ o  01�M�M 40 possibletemplateprojects possibleTemplateProjects` l 1Pa�L�Ka 61Pbcb 2  16�J
�J 
FCfxc F  7Oded l 8Bf�I�Hf = 8Bghg n 9;iji 1  9;�G
�G 
ctnrj  g  99h l <Ak�F�Ek n  <Alml 4  >A�Dn
�D 
cobjn o  ?@�C�C 0 i  m o  <>�B�B 20 existingtemplatefolders existingTemplateFolders�F  �E  �I  �H  e l CNo�A�@o > CNpqp n DHrsr 1  DH�?
�? 
FCPss  g  DDq m  IM�>
�> FCPsFCPd�A  �@  �L  �K  ^ o      �=�= 40 possibletemplateprojects possibleTemplateProjects: R      �<�;�:
�< .ascrerr ****      � ****�;  �:  �e  �f  �p 0 i  ) m   � ��9�9 * l  � �t�8�7t n   � �uvu 1   � ��6
�6 
lengv o   � ��5�5 20 existingtemplatefolders existingTemplateFolders�8  �7  �o  ' w�4w Y  b�x�3yz�2x Z q�{|�1�0{ E  q}}~} l qy�/�. n  qy��� 1  uy�-
�- 
FCno� l qu��,�+� n  qu��� 4  ru�*�
�* 
cobj� o  st�)�) 0 i  � o  qr�(�( 40 possibletemplateprojects possibleTemplateProjects�,  �+  �/  �.  ~ m  y|�� ���  �| r  ����� l ����'�&� n  ����� 4  ���%�
�% 
cobj� o  ���$�$ 0 i  � o  ���#�# 40 possibletemplateprojects possibleTemplateProjects�'  �&  � l     ��"�!� n      ���  ;  ��� o  ��� �  *0 oldtemplateprojects oldTemplateProjects�"  �!  �1  �0  �3 0 i  y m  ef�� z l fl���� n  fl��� 1  gk�
� 
leng� o  fg�� 40 possibletemplateprojects possibleTemplateProjects�  �  �2  �4  � 1    �
� 
FCDo� m     ���                                                                                  OFOC  alis    X  Macintosh HD               ���4H+     MOmniFocus.app                                                   ��̥��        ����  	                Applications    ���      ̦(       M  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� L  ���� o  ���� *0 oldtemplateprojects oldTemplateProjects�  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i   ] `��� I      ���� 20 adjustoldtemplatesyntax adjustOldTemplateSyntax� ��� o      �� *0 oldtemplateprojects oldTemplateProjects�  �  � O    ��� O   ��� k   
�� ��� Y   
 ������� O    ���� k    ��� ��� r    #��� m    �� ���  �� n     ��� 1     "�
� 
txdl�  f     � ��� r   $ )��� n  $ '��� 1   % '�

�
 
pnam�  g   $ %� o      �	�	 0 tempname tempName� ��� r   * /��� l  * -���� n   * -��� 2   + -�
� 
citm� o   * +�� 0 tempname tempName�  �  � o      �� 0 tempname tempName� ��� r   0 5��� n  0 3��� 1   1 3�
� 
FCno�  g   0 1� o      �� 0 tempnote tempNote� ��� r   6 ;��� l  6 9��� � n   6 9��� 2   7 9��
�� 
citm� o   6 7���� 0 tempnote tempNote�  �   � o      ���� 0 tempnote tempNote� ��� r   < E��� o   < A����  0 variablesymbol variableSymbol� n     ��� 1   B D��
�� 
txdl�  f   A B� ��� r   F K��� c   F I��� o   F G���� 0 tempname tempName� m   G H��
�� 
TEXT� o      ���� 0 tempname tempName� ��� r   L Q��� c   L O��� o   L M���� 0 tempnote tempNote� m   M N��
�� 
TEXT� o      ���� 0 tempnote tempNote� ��� r   R W��� m   R S�� ���  �� n     ��� 1   T V��
�� 
txdl�  f   S T� ��� r   X ]��� l  X [������ n   X [��� 2   Y [��
�� 
citm� o   X Y���� 0 tempname tempName��  ��  � o      ���� 0 tempname tempName� ��� r   ^ c��� l  ^ a������ n   ^ a��� 2   _ a��
�� 
citm� o   ^ _���� 0 tempnote tempNote��  ��  � o      ���� 0 tempnote tempNote� ��� r   d i��� m   d e�� ���  � n     ��� 1   f h��
�� 
txdl�  f   e f�    r   j q c   j m o   j k���� 0 tempname tempName m   k l��
�� 
TEXT n      1   n p��
�� 
pnam  g   m n 	 r   r y

 c   r u o   r s���� 0 tempnote tempNote m   s t��
�� 
TEXT n      1   v x��
�� 
FCno  g   u v	 �� Y   z ����� O   � � k   � �  r   � � m   � � �  � n      1   � ���
�� 
txdl  f   � �   r   � �!"! n  � �#$# 1   � ���
�� 
pnam$  g   � �" o      ���� 0 tempname tempName  %&% r   � �'(' l  � �)����) n   � �*+* 2   � ���
�� 
citm+ o   � ����� 0 tempname tempName��  ��  ( o      ���� 0 tempname tempName& ,-, r   � �./. n  � �010 1   � ���
�� 
FCno1  g   � �/ o      ���� 0 tempnote tempNote- 232 r   � �454 l  � �6����6 n   � �787 2   � ���
�� 
citm8 o   � ����� 0 tempnote tempNote��  ��  5 o      ���� 0 tempnote tempNote3 9:9 r   � �;<; o   � �����  0 variablesymbol variableSymbol< n     =>= 1   � ���
�� 
txdl>  f   � �: ?@? r   � �ABA c   � �CDC o   � ����� 0 tempname tempNameD m   � ���
�� 
TEXTB o      ���� 0 tempname tempName@ EFE r   � �GHG c   � �IJI o   � ����� 0 tempnote tempNoteJ m   � ���
�� 
TEXTH o      ���� 0 tempnote tempNoteF KLK r   � �MNM m   � �OO �PP  �N n     QRQ 1   � ���
�� 
txdlR  f   � �L STS r   � �UVU l  � �W����W n   � �XYX 2   � ���
�� 
citmY o   � ����� 0 tempname tempName��  ��  V o      ���� 0 tempname tempNameT Z[Z r   � �\]\ l  � �^����^ n   � �_`_ 2   � ���
�� 
citm` o   � ����� 0 tempnote tempNote��  ��  ] o      ���� 0 tempnote tempNote[ aba r   � �cdc m   � �ee �ff  d n     ghg 1   � ���
�� 
txdlh  f   � �b iji r   � �klk c   � �mnm o   � ����� 0 tempname tempNamen m   � ���
�� 
TEXTl n     opo 1   � ���
�� 
pnamp  g   � �j q��q r   � �rsr c   � �tut o   � ����� 0 tempnote tempNoteu m   � ���
�� 
TEXTs n     vwv 1   � ���
�� 
FCnow  g   � ���   4   � ���x
�� 
FCftx o   � ����� 0 i  �� 0 i   m   } ~����  l  ~ �y����y I  ~ ���z��
�� .corecnte****       ****z n  ~ �{|{ 2   ���
�� 
FCft|  g   ~ ��  ��  ��  ��  ��  � n    }~} 4    ��
�� 
cobj o    ���� 0 i  ~ o    ���� *0 oldtemplateprojects oldTemplateProjects� 0 i  � m    ���� � l   ������ n    ��� 1    ��
�� 
leng� o    ���� *0 oldtemplateprojects oldTemplateProjects��  ��  �  � ���� r   ���� m   � ��� ���  � n     ��� 1   ���
�� 
txdl�  f   � ���  � 1    ��
�� 
FCDo� m     ���                                                                                  OFOC  alis    X  Macintosh HD               ���4H+     MOmniFocus.app                                                   ��̥��        ����  	                Applications    ���      ̦(       M  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   a d��� I      ������� 80 checkingfordateinformation checkingForDateInformation� ��� o      ���� 0 theitem theItem� ��� o      ���� 0 thevariables theVariables� ���� o      ���� "0 thereplacements theReplacements��  ��  � O    ���� O   ���� O   
���� O   ���� k   ��� ��� r    ��� l   ������ n    ��� 1    ��
�� 
FCno� o    ���� 0 theitem theItem��  ��  � o      ���� 0 thenote theNote� ��� s    !��� o    ���� 0 thenote theNote� o      ���� "0 theoriginalnote theOriginalNote� ��� l  " "��������  ��  ��  � ��� r   " %��� m   " #��
�� 
null� o      ���� 0 
dueorstart 
dueOrStart� ��� r   & )��� m   & '��
�� boovfals� o      ���� 0 
askfordate 
askForDate� ��� r   * -��� m   * +��
�� boovfals� o      ���� &0 relativetoproject relativeToProject� ��� r   . 1��� m   . /��
�� boovfals� o      ���� 0 datevariable dateVariable� ��� l  2 2��������  ��  ��  � ��� r   2 7��� n   2 5��� 2   3 5��
�� 
cpar� o   2 3���� 0 thenote theNote� o      �� &0 thenoteparagraphs theNoteParagraphs� ��� Y   8 j��~���}� Z   E e���|�{� G   E V��� l  E K��z�y� C   E K��� n   E I��� 4   F I�x�
�x 
cobj� o   G H�w�w 0 i  � o   E F�v�v &0 thenoteparagraphs theNoteParagraphs� m   I J�� ���  s t a r t :�z  �y  � l  N T��u�t� C   N T��� n   N R��� 4   O R�s�
�s 
cobj� o   P Q�r�r 0 i  � o   N O�q�q &0 thenoteparagraphs theNoteParagraphs� m   R S�� ���  d u e :�u  �t  � k   Y a�� ��� r   Y _��� n   Y ]��� 4   Z ]�p�
�p 
cobj� o   [ \�o�o 0 i  � o   Y Z�n�n &0 thenoteparagraphs theNoteParagraphs� o      �m�m 0 thenote theNote� ��l�  S   ` a�l  �|  �{  �~ 0 i  � m   ; <�k�k � l  < @��j�i� n   < @��� 1   = ?�h
�h 
leng� o   < =�g�g &0 thenoteparagraphs theNoteParagraphs�j  �i  �}  � ��� l  k k�f�e�d�f  �e  �d  � ��� Z   k �����c� l  k n��b�a� C   k n��� o   k l�`�` 0 thenote theNote� m   l m�� ���  D u e�b  �a  � r   q t��� m   q r�� ���  d u e� o      �_�_ 0 
dueorstart 
dueOrStart� ��� l  w z��^�]� C   w z� � o   w x�\�\ 0 thenote theNote  m   x y � 
 S t a r t�^  �]  � �[ r   } � m   } ~ � 
 s t a r t o      �Z�Z 0 
dueorstart 
dueOrStart�[  �c  � 	 l  � ��Y�X�W�Y  �X  �W  	 

 Z   ���V =  � � o   � ��U�U 0 
dueorstart 
dueOrStart m   � ��T
�T 
null L   � � J   � � �S m   � ��R
�R 
msng�S  �V   k   ��  Z  � ��Q�P E   � � o   � ��O�O 0 thenote theNote m   � � �  A s k r   � � m   � ��N
�N boovtrue o      �M�M 0 
askfordate 
askForDate�Q  �P     Z  � �!"�L�K! E   � �#$# o   � ��J�J 0 thenote theNote$ m   � �%% �&&  P r o j e c t" r   � �'(' m   � ��I
�I boovtrue( o      �H�H &0 relativetoproject relativeToProject�L  �K    )*) Y   � �+�G,-�F+ Z   � �./�E�D. E  � �010 o   � ��C�C 0 thenote theNote1 n   � �232 4   � ��B4
�B 
cobj4 o   � ��A�A 0 i  3 o   � ��@�@ 0 thevariables theVariables/ k   � �55 676 r   � �898 m   � ��?
�? boovtrue9 o      �>�> 0 datevariable dateVariable7 :;: r   � �<=< o   � ��=�= 0 i  = o      �<�< ,0 datevariableposition dateVariablePosition; >�;>  S   � ��;  �E  �D  �G 0 i  , m   � ��:�: - l  � �?�9�8? n   � �@A@ 1   � ��7
�7 
lengA o   � ��6�6 0 thevariables theVariables�9  �8  �F  * BCB l  � ��5�4�3�5  �4  �3  C D�2D Z   ��EF�1GE o   � ��0�0 0 
askfordate 
askForDateF k   �lHH IJI r   � �KLK m   � �MM �NN  i t e mL o      �/�/ 0 classofitem classOfItemJ OPO Z   �QRS�.Q =  � �TUT n   � �VWV 1   � ��-
�- 
pclsW o   � ��,�, 0 theitem theItemU m   � ��+
�+ 
FCacR r   � �XYX m   � �ZZ �[[  t a s kY o      �*�* 0 classofitem classOfItemS \]\ =  �^_^ n   � `a` 1   � �)
�) 
pclsa o   � ��(�( 0 theitem theItem_ m   �'
�' 
FCpr] b�&b r  cdc m  
ee �ff  p r o j e c td o      �%�% 0 classofitem classOfItem�&  �.  P ghg r  4iji b  2klk b  .mnm b  *opo b  $qrq b   sts b  uvu b  wxw b  yzy m  {{ �|| 0 W h e n   w o u l d   y o u   l i k e   t h e  z o  �$�$ 0 
dueorstart 
dueOrStartx m  }} �~~    d a t e   o f   t h e  v o  �#�# 0 classofitem classOfItemt m   ���   r 1   #�"
�" 
quotp l $)��!� � n  $)��� 1  %)�
� 
pnam� o  $%�� 0 theitem theItem�!  �   n 1  *-�
� 
quotl m  .1�� ����   t o   b e ?   Y o u   c a n   u s e   r e l a t i v e   ( i . e . ,   " 3 d   2 p m " ) ,   a b s o l u t e   ( i . e . ,   " J a n   1 9   1 5 : 0 0 " ) ,   o r   t h e   s h o r t   d a t e   f o r m a t   f r o m   y o u r   " L a n g u a g e   a n d   T e x t "   p r e f e r e n c e s   ( i . e . ,   " 1 3 . 0 1 . 1 9 "   o r   " 0 1 - 1 9 " )   d a t e s   i n   y o u r   i n p u t .j o      �� 0 displaytext displayTexth ��� Q  5l���� r  8I��� n  8G��� 1  CG�
� 
ttxt� l 8C���� I 8C���
� .sysodlogaskr        TEXT� o  89�� 0 displaytext displayText� ���
� 
dtxt� m  <?�� ���  1 d   1 2 a m�  �  �  � o      �� 0 	inputdate 	inputDate� R      ���
� .ascrerr ****      � ****� o      �� 0 	errortext 	errorText� ���
� 
errn� o      �� 0 errornumber errorNumber�  � Z  Ql����� = QX��� o  QT�� 0 errornumber errorNumber� m  TW�
�
��� L  [h�� J  [g�� ��� m  [^�	
�	 
msng� ��� n ^e��� I  _e���� $0 getridofdateinfo getRidOfDateInfo� ��� o  _`�� "0 theoriginalnote theOriginalNote� ��� o  `a�� 0 
dueorstart 
dueOrStart�  �  �  f  ^_�  �  �  �  �1  G k  o��� ��� r  o���� J  o��� ��� m  or�� ���  D u e :� ��� m  ru�� ���  S t a r t :� ��� m  ux�� ���  D u e� ��� m  x{�� ��� 
 S t a r t� ��� m  {~�� ���  P r o j e c t� ��� m  ~��� ��� 
 t o d a y� ��� m  ���� ���  a t�  � o      �� (0 possibledelimiters possibleDelimiters� ��� Z ����� ��� o  ������ 0 datevariable dateVariable� r  ����� c  ����� l �������� n  ����� 4  �����
�� 
cobj� o  ������ ,0 datevariableposition dateVariablePosition� o  ������ 0 thevariables theVariables��  ��  � m  ����
�� 
TEXT� n      ���  ;  ��� o  ������ (0 possibledelimiters possibleDelimiters�   ��  � ��� r  ����� o  ������ (0 possibledelimiters possibleDelimiters� n     ��� 1  ����
�� 
txdl�  f  ��� ��� s  ����� n  ����� 2  ����
�� 
citm� o  ������ 0 thenote theNote� o      ���� 0 tempdate tempDate� ��� r  ����� m  ���� ���  � n     ��� 1  ����
�� 
txdl�  f  ��� ���� r  ����� c  ����� o  ������ 0 tempdate tempDate� m  ����
�� 
TEXT� o      ���� 0 	inputdate 	inputDate��  �2   ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� r  ����� n ����� I  ��������� 0 englishtime englishTime� ���� o  ������ 0 	inputdate 	inputDate��  ��  �  f  ��� o      ���� "0 secondsdeferred secondsDeferred� ��� Z ��������� =  ����� o  ������ "0 secondsdeferred secondsDeferred� m  ��������� L  ��   J  ��  m  ����
�� 
msng �� n �� I  �������� $0 getridofdateinfo getRidOfDateInfo 	 o  ������ "0 theoriginalnote theOriginalNote	 
��
 o  ������ 0 
dueorstart 
dueOrStart��  ��    f  ����  ��  ��  �  Z  ���� H  �� o  ������ 0 datevariable dateVariable Z  ���� H  �� o  ������ &0 relativetoproject relativeToProject k  �  r  � l � ���� I � ������
�� .misccurdldt    ��� null��  ��  ��  ��   o      ���� 0 desireddate desiredDate  r   m  ����   n        1  	��
�� 
time  o  	���� 0 desireddate desiredDate !"! r  #$# [  %&% o  ���� 0 desireddate desiredDate& o  ���� "0 secondsdeferred secondsDeferred$ o      ���� 0 desireddate desiredDate" '��' l ��������  ��  ��  ��  ��   k  �(( )*) Z 5+,����+ = (-.- n  $/0/ 1   $��
�� 
pcls0 o   ���� 0 theitem theItem. m  $'��
�� 
FCpr, L  +111 J  +022 3��3 m  +.��
�� 
msng��  ��  ��  * 4��4 Z  6�56��75 = 6;898 o  67���� 0 
dueorstart 
dueOrStart9 m  7::: �;;  d u e6 k  >s<< =>= r  >K?@? n  >GABA 1  CG��
�� 
FCDdB n  >CCDC 1  ?C��
�� 
FCPrD o  >?���� 0 theitem theItem@ o      ���� 0 relativedate relativeDate> EFE Z  LgGH����G = LSIJI o  LO���� 0 relativedate relativeDateJ m  OR��
�� 
msngH L  VcKK J  VbLL MNM m  VY��
�� 
msngN O��O n Y`PQP I  Z`��R���� $0 getridofdateinfo getRidOfDateInfoR STS o  Z[���� "0 theoriginalnote theOriginalNoteT U��U o  [\���� 0 
dueorstart 
dueOrStart��  ��  Q  f  YZ��  ��  ��  F V��V r  hsWXW [  hoYZY o  hk���� 0 relativedate relativeDateZ o  kn���� "0 secondsdeferred secondsDeferredX o      ���� 0 desireddate desiredDate��  ��  7 k  v�[[ \]\ r  v�^_^ n  v`a` 1  {��
�� 
FCDsa n  v{bcb 1  w{��
�� 
FCPrc o  vw���� 0 theitem theItem_ o      ���� 0 relativedate relativeDate] ded Z  ��fg����f = ��hih o  ������ 0 relativedate relativeDatei m  ����
�� 
msngg k  ��jj klk r  ��mnm l ��o����o I ��������
�� .misccurdldt    ��� null��  ��  ��  ��  n o      ���� 0 relativedate relativeDatel p��p r  ��qrq m  ������  r n      sts 1  ����
�� 
timet o  ������ 0 relativedate relativeDate��  ��  ��  e u��u r  ��vwv [  ��xyx o  ������ 0 relativedate relativeDatey o  ������ "0 secondsdeferred secondsDeferredw o      ���� 0 desireddate desiredDate��  ��  ��   r  ��z{z [  ��|}| l ��~����~ n  ��� 4  �����
�� 
cobj� o  ������ ,0 datevariableposition dateVariablePosition� o  ������ "0 thereplacements theReplacements��  ��  } o  ������ "0 secondsdeferred secondsDeferred{ o      ���� 0 desireddate desiredDate ��� l ����������  ��  ��  � ��� Z  ��������� l �������� > ����� n  ����� 1  ����
�� 
pcls� o  ������ 0 theitem theItem� m  ���
� 
FCpr��  ��  � Z  ������~� F  ����� = ����� o  ���}�} 0 
dueorstart 
dueOrStart� m  ���� ���  D u e� l ����|�{� > ����� n  ����� 1  ���z
�z 
FCDd� n  ����� 1  ���y
�y 
FCPr� o  ���x�x 0 theitem theItem� m  ���w
�w 
msng�|  �{  � Z  �H����v� A  ����� o  ���u�u 0 desireddate desiredDate� l ����t�s� I ���r�q�p
�r .misccurdldt    ��� null�q  �p  �t  �s  � n ���� I  ��o��n�o 
0 notify  � ��� m  ���� ��� ( D u e   D a t e   i n   t h e   P a s t� ��� b  ���� b  � ��� m  ���� ���  C h e c k   t a s k   "� n  ����� 1  ���m
�m 
pnam� o  ���l�l 0 theitem theItem� m   �� ���  " .� ��� o  	�k�k 0 
datenotify 
dateNotify� ��j� m  	�� ���  �j  �n  �  f  ��� ��� ?  "��� o  �i�i 0 desireddate desiredDate� n  !��� 1  !�h
�h 
FCDd� n  ��� 1  �g
�g 
FCPr� o  �f�f 0 theitem theItem� ��e� n %D��� I  &D�d��c�d 
0 notify  � ��� m  &)�� ��� 4 D u e   D a t e   A f t e r   P r o j e c t   D u e� ��� b  )6��� b  )2��� m  ),�� ���  C h e c k   t a s k   "� n  ,1��� 1  -1�b
�b 
pnam� o  ,-�a�a 0 theitem theItem� m  25�� ���  " .� ��� o  6;�`�` 0 
datenotify 
dateNotify� ��_� m  ;>�� ���  �_  �c  �  f  %&�e  �v  � ��� l KX��^�]� > KX��� n  KT��� 1  PT�\
�\ 
FCDd� n  KP��� 1  LP�[
�[ 
FCPr� o  KL�Z�Z 0 theitem theItem� m  TW�Y
�Y 
msng�^  �]  � ��X� Z  [����W�V� ?  [h��� o  [^�U�U 0 desireddate desiredDate� n  ^g��� 1  cg�T
�T 
FCDd� n  ^c��� 1  _c�S
�S 
FCPr� o  ^_�R�R 0 theitem theItem� n k���� I  l��Q��P�Q 
0 notify  � ��� m  lo�� ��� < S t a r t   D a t e   A f t e r   P r o j e c t   S t a r t� ��� b  o|��� b  ox��� m  or�� ���  C h e c k   t a s k   "� n  rw��� 1  sw�O
�O 
pnam� o  rs�N�N 0 theitem theItem� m  x{�� �    " .�  o  |��M�M 0 
datenotify 
dateNotify �L m  �� �  �L  �P  �  f  kl�W  �V  �X  �~  ��  ��  �  l ���K�J�I�K  �J  �I   	 r  ��

 n �� I  ���H�G�H $0 getridofdateinfo getRidOfDateInfo  o  ���F�F "0 theoriginalnote theOriginalNote �E o  ���D�D 0 
dueorstart 
dueOrStart�E  �G    f  �� o      �C�C 0 thenote theNote	 �B L  �� J  ��  o  ���A�A 0 desireddate desiredDate  o  ���@�@ 0 
dueorstart 
dueOrStart �? o  ���>�> 0 thenote theNote�?  �B  � 1    �=
�= 
FCcn� 4  
 �<
�< 
FCdw m    �;�; � 1    �:
�: 
FCDo� m     �                                                                                  OFOC  alis    X  Macintosh HD               ���4H+     MOmniFocus.app                                                   ��̥��        ����  	                Applications    ���      ̦(       M  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  l     �9�8�7�9  �8  �7    l     �6�5�4�6  �5  �4    !  i   e h"#" I      �3$�2�3 0 englishtime englishTime$ %�1% o      �0�0 0 datedesired dateDesired�1  �2  # k    �&& '(' Z    )*�/�.) =    +,+ o     �-�- 0 datedesired dateDesired, m    -- �..  0* L    // m    �,�,  �/  �.  ( 010 l   �+�*�)�+  �*  �)  1 232 r    454 m    �(�(  5 o      �'�' 0 
monthfound 
monthFound3 676 r    898 m    �&�&  9 o      �%�% 0 weekdayfound weekdayFound7 :;: l   �$<=�$  < Z T Solves an issue with the treatment of leading zeros for the minutes (i.e., 12:01am)   = �>> �   S o l v e s   a n   i s s u e   w i t h   t h e   t r e a t m e n t   o f   l e a d i n g   z e r o s   f o r   t h e   m i n u t e s   ( i . e . ,   1 2 : 0 1 a m ); ?@? r    ABA m    �#
�# boovfalsB o      �"�" &0 minuteleadingzero minuteLeadingZero@ CDC l   �!� ��!  �   �  D EFE l   �GH�  G = 7 Figures out if the user excluded any of the components   H �II n   F i g u r e s   o u t   i f   t h e   u s e r   e x c l u d e d   a n y   o f   t h e   c o m p o n e n t sF JKJ r    LML m    �
� boovfalsM o      �� 0 timemissing timeMissingK NON r     PQP m    �
� boovfalsQ o      �� 0 daysmissing daysMissingO RSR r   ! $TUT m   ! "�
� boovfalsU o      �� 0 weeksmissing weeksMissingS VWV l  % %����  �  �  W XYX l  % %�Z[�  Z 1 + Sets up the delimiters for different items   [ �\\ V   S e t s   u p   t h e   d e l i m i t e r s   f o r   d i f f e r e n t   i t e m sY ]^] r   % ._`_ J   % ,aa bcb m   % &dd �ee  a mc fgf m   & 'hh �ii  p mg jkj m   ' (ll �mm  ak non m   ( )pp �qq  po r�r m   ) *ss �tt  :�  ` o      ��  0 timedelimiters timeDelimiters^ uvu r   / 6wxw J   / 4yy z{z m   / 0|| �}}  d a y s{ ~~ m   0 1�� ���  d a y ��� m   1 2�� ���  d�  x o      �� 0 daydelimiters dayDelimitersv ��� r   7 >��� J   7 <�� ��� m   7 8�� ��� 
 w e e k s� ��� m   8 9�� ���  w e e k� ��� m   9 :�� ���  w�  � o      ��  0 weekdelimiters weekDelimiters� ��� r   ? c��� J   ? a�� ��� m   ? @�� ���  J a n� ��� m   @ A�� ���  F e b� ��� m   A B�� ���  M a r� ��� m   B E�� ���  A p r� ��� m   E H�� ���  M a y� ��� m   H K�� ���  J u n� ��� m   K N�� ���  J u l� ��� m   N Q�� ���  A u g� ��� m   Q T�� ���  S e p� ��� m   T W�� ���  O c t� ��� m   W Z�� ���  N o v� ��� m   Z ]�� ���  D e c�  � o      �� "0 monthdelimiters monthDelimiters� ��� r   d ��� J   d }�� ��� m   d g�� ���  S u n� ��� m   g j�� ���  M o n� ��� m   j m�� ���  T u e� ��� m   m p�� ���  W e d� ��� m   p s�� ���  T h u� ��� m   s v�� ���  F r i� ��� m   v y�� ���  S a t�  � o      �
�
 &0 weekdaydelimiters weekdayDelimiters� ��� r   � ���� J   � ��� ��� m   � ��� ��� 
 T o d a y� ��� m   � ��� ���  T o m o r r o w� ��	� m   � ��� ���  a t�	  � o      �� <0 specialrelativedaydelimiters specialRelativeDayDelimiters� ��� r   � ���� J   � ��� ��� m   � �   �   �  m   � � �  t h  m   � � �		  s t 

 m   � � �  r d � m   � � �  n d�  � o      �� "0 otherdelimiters otherDelimiters�  l  � �����  �  �    r   � � m   � � �  u n k n o w n o      �� 0 inthe inThe  r   � � m   � ���   o      � �  00 howmanynumbersinputted howManyNumbersInputted  r   � �  J   � �����    o      ���� 0 numlist numList !"! l  � ���������  ��  ��  " #$# l  � ���%&��  % !  See if they included AM/PM   & �'' 6   S e e   i f   t h e y   i n c l u d e d   A M / P M$ ()( Z  � �*+����* I   � ���,���� (0 isnumberidentifier isNumberIdentifier, -.- m   � �// �00  a. 1��1 o   � ����� 0 datedesired dateDesired��  ��  + r   � �232 m   � �44 �55  A M3 o      ���� 0 inthe inThe��  ��  ) 676 Z  � �89����8 I   � ���:���� (0 isnumberidentifier isNumberIdentifier: ;<; m   � �== �>>  p< ?��? o   � ����� 0 datedesired dateDesired��  ��  9 r   � �@A@ m   � �BB �CC  P MA o      ���� 0 inthe inThe��  ��  7 DED l  � ���������  ��  ��  E FGF l  � ���HI��  H [ U See if they gave an absolute date formatted in YY.MM.DD or some other similar format   I �JJ �   S e e   i f   t h e y   g a v e   a n   a b s o l u t e   d a t e   f o r m a t t e d   i n   Y Y . M M . D D   o r   s o m e   o t h e r   s i m i l a r   f o r m a tG KLK r   � �MNM b   � �OPO b   � �QRQ o   � ����� <0 specialrelativedaydelimiters specialRelativeDayDelimitersR o   � ����� "0 otherdelimiters otherDelimitersP o   � �����  0 timedelimiters timeDelimitersN n     STS 1   � ���
�� 
txdlT  f   � �L UVU r   � �WXW n   � �YZY 2   � ���
�� 
citmZ o   � ����� 0 datedesired dateDesiredX o      ���� 0 
checkinput 
checkInputV [\[ r   � �]^] J   � �����  ^ o      ���� &0 checkinputcleaned checkInputCleaned\ _`_ Y   �6a��bc��a Z  1de����d > fgf n  hih 4  ��j
�� 
cobjj o  ���� 0 i  i o  ���� 0 
checkinput 
checkInputg m  kk �ll  e r  -mnm n  (opo 4  !(��q
�� 
cobjq o  $'���� 0 i  p o  !���� 0 
checkinput 
checkInputn l     r����r n      sts  ;  +,t o  (+���� &0 checkinputcleaned checkInputCleaned��  ��  ��  ��  �� 0 i  b m   � ���� c l  u����u n   vwv 1  ��
�� 
lengw o   ���� 0 
checkinput 
checkInput��  ��  ��  ` xyx Q  7�z{��z k  :�|| }~} r  :F� n  :B��� 4  =B���
�� 
cobj� m  @A���� � o  :=���� &0 checkinputcleaned checkInputCleaned� o      ���� 0 thedatecheck theDateCheck~ ���� Z  G�������� G  Gj��� G  G\��� l GN������ E  GN��� o  GJ���� 0 thedatecheck theDateCheck� m  JM�� ���  .��  ��  � l QX������ E  QX��� o  QT���� 0 thedatecheck theDateCheck� m  TW�� ���  -��  ��  � l _f������ E  _f��� o  _b���� 0 thedatecheck theDateCheck� m  be�� ���  /��  ��  � k  m��� ��� r  mv��� l mr������ I mr������
�� .misccurdldt    ��� null��  ��  ��  ��  � o      ���� 0 
todaysdate 
todaysDate� ��� r  w���� m  wx����  � n      ��� 1  {��
�� 
time� o  x{���� 0 
todaysdate 
todaysDate� ��� r  ����� n ����� I  ��������� 00 understandabsolutedate understandAbsoluteDate� ���� o  ������ 0 thedatecheck theDateCheck��  ��  �  f  ��� o      ���� 0 
targetdate 
targetDate� ��� Z ��������� =  ����� o  ������ 0 
targetdate 
targetDate� m  ��������� L  ���� m  ����������  ��  � ��� r  ����� m  ���� ���  � n     ��� 1  ����
�� 
txdl�  f  ��� ���� Z  �������� = ����� n  ����� 1  ����
�� 
leng� o  ������ &0 checkinputcleaned checkInputCleaned� m  ������ � L  ���� c  ����� l �������� \  ����� o  ������ 0 
targetdate 
targetDate� o  ������ 0 
todaysdate 
todaysDate��  ��  � m  ����
�� 
nmbr��  � k  ���� ��� r  ����� n  ����� 7 ������
�� 
cobj� m  ������ � m  ��������� o  ������ &0 checkinputcleaned checkInputCleaned� o      ���� 0 thetime theTime� ��� r  ����� J  ������  � o      ���� 0 numlist numList� ��� l ����������  ��  ��  � ��� r  ����� n  ����� 1  ����
�� 
leng� o  ������ 0 thetime theTime� o      ���� &0 timestorelocation timeStoreLocation� ��� V  ����� Q  ������ k  �v�� ��� l ������  � K E If the minutes have a leading zero, just combine them with the hours   � ��� �   I f   t h e   m i n u t e s   h a v e   a   l e a d i n g   z e r o ,   j u s t   c o m b i n e   t h e m   w i t h   t h e   h o u r s� ��� Z  �v����� F  ���� l ������ =  ����� o  ���� 0 numlist numList� J  ����  �  �  � l ����� C  ���� l �	���� n  �	��� 4  	��
� 
cobj� o  �� &0 timestorelocation timeStoreLocation� o  ��� 0 thetime theTime�  �  � m  	�� ���  0�  �  � k  B�� � � r  4 c  / l +�� b  + l  ��~ n   	
	 4   �}
�} 
cobj l �|�{ \   o  �z�z &0 timestorelocation timeStoreLocation m  �y�y �|  �{  
 o  �x�x 0 thetime theTime�  �~   l  *�w�v n   * 4  #*�u
�u 
cobj o  &)�t�t &0 timestorelocation timeStoreLocation o   #�s�s 0 thetime theTime�w  �v  �  �   m  +.�r
�r 
nmbr l     �q�p n        ;  23 o  /2�o�o 0 numlist numList�q  �p     r  58 m  56�n
�n boovtrue o      �m�m &0 minuteleadingzero minuteLeadingZero �l r  9B \  9> o  9<�k�k &0 timestorelocation timeStoreLocation m  <=�j�j  o      �i�i &0 timestorelocation timeStoreLocation�l  �  � k  Ev  !  l EE�h"#�h  " &   Otherwise, get the numbers only   # �$$ @   O t h e r w i s e ,   g e t   t h e   n u m b e r s   o n l y! %&% r  EW'(' c  ES)*) l EO+�g�f+ n  EO,-, 4  HO�e.
�e 
cobj. o  KN�d�d &0 timestorelocation timeStoreLocation- o  EH�c�c 0 thetime theTime�g  �f  * m  OR�b
�b 
nmbr( o      �a�a 0 tempnum tempNum& /0/ Z Xl12�`�_1 >  X]343 o  X[�^�^ 0 tempnum tempNum4 m  [\�]�]  2 r  `h565 o  `c�\�\ 0 tempnum tempNum6 l     7�[�Z7 n      898  ;  fg9 o  cf�Y�Y 0 numlist numList�[  �Z  �`  �_  0 :�X: r  mv;<; \  mr=>= o  mp�W�W &0 timestorelocation timeStoreLocation> m  pq�V�V < o      �U�U &0 timestorelocation timeStoreLocation�X  �  � R      �T�S�R
�T .ascrerr ****      � ****�S  �R  ��  � ?  ��?@? o  ���Q�Q &0 timestorelocation timeStoreLocation@ m  ���P�P  � ABA l ���O�N�M�O  �N  �M  B CDC r  ��EFE I  ���LG�K�L $0 figureoutthetime figureOutTheTimeG HIH o  ���J�J 0 numlist numListI JKJ m  ���I
�I boovfalsK LML m  ���H
�H boovtrueM NON m  ���G
�G boovtrueO P�FP o  ���E�E &0 minuteleadingzero minuteLeadingZero�F  �K  F o      �D�D 0 thetime theTimeD QRQ r  ��STS I  ���CU�B�C &0 understandthetime understandTheTimeU VWV o  ���A�A 0 thetime theTimeW XYX o  ���@�@ 0 inthe inTheY Z�?Z m  ���>
�> boovfals�?  �B  T o      �=�= 0 thetime theTimeR [�<[ L  ��\\ c  ��]^] l ��_�;�:_ \  ��`a` [  ��bcb o  ���9�9 0 
targetdate 
targetDatec o  ���8�8 0 thetime theTimea o  ���7�7 0 
todaysdate 
todaysDate�;  �:  ^ m  ���6
�6 
nmbr�<  ��  ��  ��  ��  { R      �5�4�3
�5 .ascrerr ****      � ****�4  �3  ��  y ded l ���2�1�0�2  �1  �0  e fgf l ���/hi�/  h N H See if they gave an absolute date, a relative one, or a day of the week   i �jj �   S e e   i f   t h e y   g a v e   a n   a b s o l u t e   d a t e ,   a   r e l a t i v e   o n e ,   o r   a   d a y   o f   t h e   w e e kg klk Y  �m�.no�-m k  �pp qrq Z  ��st�,�+s E  ��uvu o  ���*�* 0 datedesired dateDesiredv l ��w�)�(w n  ��xyx 4  ���'z
�' 
cobjz o  ���&�& 0 i  y o  ���%�% "0 monthdelimiters monthDelimiters�)  �(  t k  ��{{ |}| r  ��~~ o  ���$�$ 0 i   o      �#�# 0 
monthfound 
monthFound} ��"�  S  ���"  �,  �+  r ��!� Z  ���� �� B  ����� o  ���� 0 i  � l ������ n  ����� 1  ���
� 
leng� o  ���� &0 weekdaydelimiters weekdayDelimiters�  �  � Z  ������ E  ���� o  ���� 0 datedesired dateDesired� l � ���� n  � ��� 4  � ��
� 
cobj� o  ���� 0 i  � o  ���� &0 weekdaydelimiters weekdayDelimiters�  �  � r  	��� o  �� 0 i  � o      �� 0 weekdayfound weekdayFound�  �  �   �  �!  �. 0 i  n m  ���� o l ������ n  ����� 1  ���
� 
leng� o  ���� "0 monthdelimiters monthDelimiters�  �  �-  l ��� l �
�	��
  �	  �  � ��� l ����  � K E Getting rid of all the bits I could imagine being around the numbers   � ��� �   G e t t i n g   r i d   o f   a l l   t h e   b i t s   I   c o u l d   i m a g i n e   b e i n g   a r o u n d   t h e   n u m b e r s� ��� r  (��� l "���� b  "��� b   ��� b  ��� b  ��� b  ��� o  �� <0 specialrelativedaydelimiters specialRelativeDayDelimiters� o  �� "0 monthdelimiters monthDelimiters� o  ��  0 weekdelimiters weekDelimiters� o  �� 0 daydelimiters dayDelimiters� o  � �   0 timedelimiters timeDelimiters� o   !���� "0 otherdelimiters otherDelimiters�  �  � 1  "'��
�� 
txdl� ��� r  )2��� n  ).��� 2  *.��
�� 
citm� o  )*���� 0 datedesired dateDesired� o      ���� 0 	inputlist 	inputList� ��� l 33������  �   Resetting delimiters   � ��� *   R e s e t t i n g   d e l i m i t e r s� ��� r  3>��� J  38�� ���� m  36�� ���  ��  � 1  8=��
�� 
txdl� ��� l ??��������  ��  ��  � ��� Y  ?��������� Z  P�������� F  Pz��� = P^��� n  PZ��� 4  SZ���
�� 
cobj� o  VY���� 0 i  � o  PS���� 0 	inputlist 	inputList� m  Z]�� ���  -� l av������ E av��� m  ad�� ���  1 2 3 4 5 6 7 8 9� n  du��� 4  pu���
�� 
cha � m  st���� � n  dp��� 4  gp���
�� 
cobj� l jo������ [  jo��� o  jm���� 0 i  � m  mn���� ��  ��  � o  dg���� 0 	inputlist 	inputList��  ��  � r  }���� b  }���� n  }���� 4  �����
�� 
cobj� o  ������ 0 i  � o  }����� 0 	inputlist 	inputList� n  ����� 4  �����
�� 
cobj� l �������� [  ����� o  ������ 0 i  � m  ������ ��  ��  � o  ������ 0 	inputlist 	inputList� n      ��� 4  �����
�� 
cobj� l �������� [  ����� o  ������ 0 i  � m  ������ ��  ��  � o  ������ 0 	inputlist 	inputList��  ��  �� 0 i  � m  BC���� � l CK������ n  CK��� 1  FJ��
�� 
leng� o  CF���� 0 	inputlist 	inputList��  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � ( " Count how many numbers were given   � ��� D   C o u n t   h o w   m a n y   n u m b e r s   w e r e   g i v e n� ��� Y  ����� ��� k  �  Z  ����� > �� l ������ n  ��	
	 4  ����
�� 
cobj o  ������ 0 i  
 o  ������ 0 	inputlist 	inputList��  ��   m  �� �   Q  ��� k  ��  r  �� c  �� l ������ n  �� 4  ���
� 
cobj o  ���� 0 i   o  ���� 0 	inputlist 	inputList��  ��   m  ���
� 
long o      �� 0 tempitem tempItem � Z ���� = �� n  �� !  m  ���
� 
pcls! o  ���� 0 tempitem tempItem m  ���
� 
long r  ��"#" [  ��$%$ o  ���� 00 howmanynumbersinputted howManyNumbersInputted% m  ���� # o      �� 00 howmanynumbersinputted howManyNumbersInputted�  �  �   R      ���
� .ascrerr ****      � ****�  �  ��  ��  ��   &�& r  '(' m  )) �**  ( o      �� 0 tempitem tempItem�  �� 0 i  � m  ����   l ��+��+ n  ��,-, 1  ���
� 
leng- o  ���� 0 	inputlist 	inputList�  �  ��  � ./. l ����  �  �  / 010 l �23�  2 R L Get the numbers of the input ��start from the back to get the minutes first   3 �44 �   G e t   t h e   n u m b e r s   o f   t h e   i n p u t    � s t a r t   f r o m   t h e   b a c k   t o   g e t   t h e   m i n u t e s   f i r s t1 565 r   787 n  9:9 1  �
� 
leng: o  �� 0 	inputlist 	inputList8 o      �� &0 timestorelocation timeStoreLocation6 ;<; V  !�=>= Q  +�?@�? k  .�AA BCB l ..�DE�  D K E If the minutes have a leading zero, just combine them with the hours   E �FF �   I f   t h e   m i n u t e s   h a v e   a   l e a d i n g   z e r o ,   j u s t   c o m b i n e   t h e m   w i t h   t h e   h o u r sC G�G Z  .�HI�JH F  .IKLK l .4M��M =  .4NON o  .1�� 0 numlist numListO J  13��  �  �  L l 7EP��P C  7EQRQ l 7AS��S n  7ATUT 4  :A�V
� 
cobjV o  =@�� &0 timestorelocation timeStoreLocationU o  7:�� 0 	inputlist 	inputList�  �  R m  ADWW �XX  0�  �  I k  LzYY Z[Z r  Ll\]\ c  Lg^_^ l Lc`��` b  Lcaba l LXc��c n  LXded 4  OX�f
� 
cobjf l RWg��g \  RWhih o  RU�� &0 timestorelocation timeStoreLocationi m  UV�� �  �  e o  LO�� 0 	inputlist 	inputList�  �  b l Xbj��j n  Xbklk 4  [b�m
� 
cobjm o  ^a�� &0 timestorelocation timeStoreLocationl o  X[�� 0 	inputlist 	inputList�  �  �  �  _ m  cf�
� 
nmbr] l     n��n n      opo  ;  jkp o  gj�� 0 numlist numList�  �  [ qrq r  mpsts m  mn�~
�~ boovtruet o      �}�} &0 minuteleadingzero minuteLeadingZeror u�|u r  qzvwv \  qvxyx o  qt�{�{ &0 timestorelocation timeStoreLocationy m  tu�z�z w o      �y�y &0 timestorelocation timeStoreLocation�|  �  J k  }�zz {|{ l }}�x}~�x  } &   Otherwise, get the numbers only   ~ � @   O t h e r w i s e ,   g e t   t h e   n u m b e r s   o n l y| ��� Q  }����� r  ����� c  ����� l ����w�v� n  ����� 4  ���u�
�u 
cobj� o  ���t�t &0 timestorelocation timeStoreLocation� o  ���s�s 0 	inputlist 	inputList�w  �v  � m  ���r
�r 
nmbr� o      �q�q 0 tempnum tempNum� R      �p�o�n
�p .ascrerr ****      � ****�o  �n  � r  ����� \  ����� o  ���m�m &0 timestorelocation timeStoreLocation� m  ���l�l � o      �k�k &0 timestorelocation timeStoreLocation� ��� Z �����j�i� >  ����� o  ���h�h 0 tempnum tempNum� m  ���g�g  � r  ����� o  ���f�f 0 tempnum tempNum� l     ��e�d� n      ���  ;  ��� o  ���c�c 0 numlist numList�e  �d  �j  �i  � ��b� r  ����� \  ����� o  ���a�a &0 timestorelocation timeStoreLocation� m  ���`�` � o      �_�_ &0 timestorelocation timeStoreLocation�b  �  @ R      �^�]�\
�^ .ascrerr ****      � ****�]  �\  �  > ?  %*��� o  %(�[�[ &0 timestorelocation timeStoreLocation� m  ()�Z�Z  < ��� l ���Y�X�W�Y  �X  �W  � ��� l ���V���V  � I C Reverse it so the order is from biggest to smallest time increment   � ��� �   R e v e r s e   i t   s o   t h e   o r d e r   i s   f r o m   b i g g e s t   t o   s m a l l e s t   t i m e   i n c r e m e n t� ��� r  ����� n  ����� 1  ���U
�U 
rvse� o  ���T�T 0 numlist numList� o      �S�S 0 numlist numList� ��� l ���R�Q�P�R  �Q  �P  � ��� Z  ������� F  ����� l ����O�N� = ����� o  ���M�M 0 
monthfound 
monthFound� m  ���L�L  �O  �N  � l ����K�J� = ����� o  ���I�I 0 weekdayfound weekdayFound� m  ���H�H  �K  �J  � k  ���� ��� l ���G���G  � * $ If the user gave a relative date...   � ��� H   I f   t h e   u s e r   g a v e   a   r e l a t i v e   d a t e . . .� ��� O  �'��� k  �&�� ��� r  ����� H  ���� n ����� I  ���F��E�F (0 isnumberidentifier isNumberIdentifier� ��� m  ���� ���  d� ��D�  g  ���D  �E  �  f  ��� o      �C�C 0 daysmissing daysMissing� ��� r  �
��� H  ��� n ���� I  ��B��A�B (0 isnumberidentifier isNumberIdentifier� ��� m  ��� ���  w� ��@�  g  �@  �A  �  f  ��� o      �?�? 0 weeksmissing weeksMissing� ��>� Z &���=�<� =  ��� l ��;�:� \  ��� \  ��� o  �9�9 00 howmanynumbersinputted howManyNumbersInputted� l ��8�7� c  ��� l ��6�5� H  �� o  �4�4 0 daysmissing daysMissing�6  �5  � m  �3
�3 
long�8  �7  � l ��2�1� c  ��� l ��0�/� H  �� o  �.�. 0 weeksmissing weeksMissing�0  �/  � m  �-
�- 
long�2  �1  �;  �:  � m  �,�,  � r  "��� m   �+
�+ boovtrue� o      �*�* 0 timemissing timeMissing�=  �<  �>  � o  ���)�) 0 datedesired dateDesired� ��� l ((�(�'�&�(  �'  �&  � ��� l ((�%� �%  �    Figure out how many weeks     � 4   F i g u r e   o u t   h o w   m a n y   w e e k s�  Z  (A�$ H  (* o  ()�#�# 0 weeksmissing weeksMissing r  -9	 n  -5

 4  05�"
�" 
cobj m  34�!�!  o  -0� �  0 numlist numList	 o      �� 0 weeksdeferred weeksDeferred�$   r  <A m  <=��   o      �� 0 weeksdeferred weeksDeferred  l BB����  �  �    l BB��     Figure out how many days    � 2   F i g u r e   o u t   h o w   m a n y   d a y s  Z  Bl� H  BD o  BC�� 0 daysmissing daysMissing r  GT I  GP��� 0 howmanydays howManyDays   o  HK�� 0 numlist numList  !�! o  KL�� 0 weeksmissing weeksMissing�  �   o      �� 0 daysdeferred daysDeferred�   Z  Wl"#�$" E  W\%&% o  WX�� 0 datedesired dateDesired& m  X['' �((  T o m o r r o w# k  _d)) *+* l __�,-�  , - ' Special case where they put "tomorrow"   - �.. N   S p e c i a l   c a s e   w h e r e   t h e y   p u t   " t o m o r r o w "+ /�/ r  _d010 m  _`�� 1 o      �� 0 daysdeferred daysDeferred�  �  $ k  gl22 343 l gg�
56�
  5 1 + If they exclude it entirely or put "Today"   6 �77 V   I f   t h e y   e x c l u d e   i t   e n t i r e l y   o r   p u t   " T o d a y "4 8�	8 r  gl9:9 m  gh��  : o      �� 0 daysdeferred daysDeferred�	   ;<; l mm����  �  �  < =>= l mm�?@�  ?   Figure out the time   @ �AA (   F i g u r e   o u t   t h e   t i m e> BCB r  m}DED I  my�F�� $0 figureoutthetime figureOutTheTimeF GHG o  nq� �  0 numlist numListH IJI o  qr���� 0 timemissing timeMissingJ KLK o  rs���� 0 daysmissing daysMissingL MNM o  st���� 0 weeksmissing weeksMissingN O��O o  tu���� &0 minuteleadingzero minuteLeadingZero��  �  E o      ���� $0 timedeferredtemp timeDeferredTempC PQP l ~~��RS��  R 3 - Understand the meaning of the time component   S �TT Z   U n d e r s t a n d   t h e   m e a n i n g   o f   t h e   t i m e   c o m p o n e n tQ UVU r  ~�WXW I  ~���Y���� &0 understandthetime understandTheTimeY Z[Z o  ����� $0 timedeferredtemp timeDeferredTemp[ \]\ o  ������ 0 inthe inThe] ^��^ o  ������ 0 timemissing timeMissing��  ��  X o      ���� 0 timedeferred timeDeferredV _`_ l ����������  ��  ��  ` aba l ����cd��  c G A Creating the time deferred based on minutes and hours calculated   d �ee �   C r e a t i n g   t h e   t i m e   d e f e r r e d   b a s e d   o n   m i n u t e s   a n d   h o u r s   c a l c u l a t e db fgf Z  ��hi��jh @  ��klk o  ������ 0 timedeferred timeDeferredl m  ������  i r  ��mnm [  ��opo [  ��qrq o  ������ 0 timedeferred timeDeferredr ]  ��sts o  ������ 0 daysdeferred daysDeferredt 1  ����
�� 
daysp ]  ��uvu o  ������ 0 weeksdeferred weeksDeferredv 1  ����
�� 
weekn o      ���� &0 totaltimedeferred totalTimeDeferred��  j r  ��wxw o  ������ 0 timedeferred timeDeferredx o      ���� &0 totaltimedeferred totalTimeDeferredg yzy l ����{|��  { %  end of relative date-only code   | �}} >   e n d   o f   r e l a t i v e   d a t e - o n l y   c o d ez ~��~ l ����������  ��  ��  ��  � � F  ����� l �������� ?  ����� o  ������ 0 weekdayfound weekdayFound� m  ������  ��  ��  � l �������� = ����� o  ������ 0 
monthfound 
monthFound� m  ������  ��  ��  � ���� k  �+�� ��� Z ��������� A  ����� n  ����� 1  ����
�� 
leng� o  ������ 0 numlist numList� m  ������ � r  ����� m  ����
�� boovtrue� o      ���� 0 timemissing timeMissing��  ��  � ��� l ��������  � F @ Same as if the day and the week were missing on a relative date   � ��� �   S a m e   a s   i f   t h e   d a y   a n d   t h e   w e e k   w e r e   m i s s i n g   o n   a   r e l a t i v e   d a t e� ��� r  ����� I  ��������� $0 figureoutthetime figureOutTheTime� ��� o  ������ 0 numlist numList� ��� o  ������ 0 timemissing timeMissing� ��� m  ����
�� boovtrue� ��� m  ����
�� boovtrue� ���� o  ������ &0 minuteleadingzero minuteLeadingZero��  ��  � o      ���� $0 timedeferredtemp timeDeferredTemp� ��� r  ����� I  ��������� &0 understandthetime understandTheTime� ��� o  ������ $0 timedeferredtemp timeDeferredTemp� ��� o  ������ 0 inthe inThe� ��� o  ���� 0 timemissing timeMissing�  ��  � o      �� 0 timedeferred timeDeferred� ��� r  �	��� I  ����� 00 daysfromtodaytoweekday daysFromTodayToWeekday� ��� o   �� 0 weekdayfound weekdayFound�  �  � o      �� 0 daysdeferred daysDeferred� ��� Z  
+����� @  
��� o  
�� 0 timedeferred timeDeferred� m  ��  � r  !��� [  ��� ]  ��� o  �� 0 daysdeferred daysDeferred� 1  �
� 
days� o  �� 0 timedeferred timeDeferred� o      �� &0 totaltimedeferred totalTimeDeferred�  � r  $+��� o  $'�� 0 timedeferred timeDeferred� o      �� &0 totaltimedeferred totalTimeDeferred�  ��  � k  .��� ��� l ..����  � + % If the user gave an absolute date...   � ��� J   I f   t h e   u s e r   g a v e   a n   a b s o l u t e   d a t e . . .� ��� Z .A����� A  .7��� n  .5��� 1  15�
� 
leng� o  .1�� 0 numlist numList� m  56�� � r  :=��� m  :;�
� boovtrue� o      �� 0 timemissing timeMissing�  �  � ��� l BB����  � G A Same as if the day were there but week wasn't on a relative date   � ��� �   S a m e   a s   i f   t h e   d a y   w e r e   t h e r e   b u t   w e e k   w a s n ' t   o n   a   r e l a t i v e   d a t e� ��� r  BR��� I  BN���� $0 figureoutthetime figureOutTheTime� ��� o  CF�� 0 numlist numList� ��� o  FG�� 0 timemissing timeMissing� ��� m  GH�
� boovfals� ��� m  HI�
� boovtrue� ��� o  IJ�� &0 minuteleadingzero minuteLeadingZero�  �  � o      �� $0 timedeferredtemp timeDeferredTemp� ��� r  Sa��� I  S]���� &0 understandthetime understandTheTime� ��� o  TW�� $0 timedeferredtemp timeDeferredTemp� ��� o  WX�� 0 inthe inThe� ��� o  XY�� 0 timemissing timeMissing�  �  � o      �� 0 timedeferred timeDeferred� ��� r  bt��� I  bp���� 40 figuringtimetodesiredday figuringTimeToDesiredDay� ��� o  cd�� 0 
monthfound 
monthFound� ��� l dl���� n  dl��� 4  gl��
� 
cobj� m  jk�� � o  dg�� 0 numlist numList�  �  �  �  � o      �� 60 timefromtodayuntildesired timeFromTodayUntilDesired� ��� Z  u� �  @  uz o  ux�� 0 timedeferred timeDeferred m  xy��   r  }� [  }� o  }��� 60 timefromtodayuntildesired timeFromTodayUntilDesired o  ���� 0 timedeferred timeDeferred o      �� &0 totaltimedeferred totalTimeDeferred�   r  ��	
	 o  ���� 0 timedeferred timeDeferred
 o      �� &0 totaltimedeferred totalTimeDeferred�  �  l ������  �  �    L  �� o  ���~�~ &0 totaltimedeferred totalTimeDeferred �} l ���|�{�z�|  �{  �z  �}  !  l     �y�x�w�y  �x  �w    l     �v�u�t�v  �u  �t    i   i l I      �s�r�s (0 isnumberidentifier isNumberIdentifier  o      �q�q (0 possibleidentifier possibleIdentifier �p o      �o�o "0 containerstring containerString�p  �r   k     �  r      !  m     �n
�n boovtrue! o      �m�m $0 numberidentifier numberIdentifier "#" r    $%$ m    �l
�l boovfals% o      �k�k 20 identifierisincontainer identifierIsInContainer# &'& r    ()( m    	�j�j  ) o      �i�i 40 positionoflastidentifier positionOfLastIdentifier' *+* r    ,-, n    ./. 2    �h
�h 
cha / o    �g�g "0 containerstring containerString- o      �f�f 0 charlist charList+ 010 l   �e�d�c�e  �d  �c  1 232 Y    84�b56�a4 Z    378�`�_7 =    %9:9 l   #;�^�]; n    #<=< 4     #�\>
�\ 
cobj> o   ! "�[�[ 0 i  = o     �Z�Z 0 charlist charList�^  �]  : o   # $�Y�Y (0 possibleidentifier possibleIdentifier8 k   ( /?? @A@ r   ( +BCB m   ( )�X
�X boovtrueC o      �W�W 20 identifierisincontainer identifierIsInContainerA D�VD r   , /EFE o   , -�U�U 0 i  F o      �T�T 40 positionoflastidentifier positionOfLastIdentifier�V  �`  �_  �b 0 i  5 m    �S�S 6 l   G�R�QG n    HIH 1    �P
�P 
lengI o    �O�O 0 charlist charList�R  �Q  �a  3 JKJ l  9 9�N�M�L�N  �M  �L  K LML Z   9 NO�KPN G   9 DQRQ l  9 <S�J�IS =  9 <TUT o   9 :�H�H 40 positionoflastidentifier positionOfLastIdentifierU m   : ;�G�G  �J  �I  R l  ? BV�F�EV =  ? BWXW o   ? @�D�D 40 positionoflastidentifier positionOfLastIdentifierX m   @ A�C�C �F  �E  O r   G JYZY m   G H�B
�B boovfalsZ o      �A�A $0 numberidentifier numberIdentifier�K  P k   M [[ \]\ r   M U^_^ n   M S`a` 4   N S�@b
�@ 
cha b l  O Rc�?�>c \   O Rded o   O P�=�= 40 positionoflastidentifier positionOfLastIdentifiere m   P Q�<�< �?  �>  a o   M N�;�; "0 containerstring containerString_ o      �:�: "0 characterbefore characterBefore] fgf Q   V ghi�9h r   Y ^jkj c   Y \lml o   Y Z�8�8 "0 characterbefore characterBeforem m   Z [�7
�7 
longk o      �6�6 "0 characterbefore characterBeforei R      �5�4�3
�5 .ascrerr ****      � ****�4  �3  �9  g n�2n Z  h op�1�0o F   h uqrq l  h ks�/�.s >  h ktut o   h i�-�- "0 characterbefore characterBeforeu m   i jvv �ww   �/  �.  r l  n sx�,�+x >  n syzy n   n q{|{ m   o q�*
�* 
pcls| o   n o�)�) "0 characterbefore characterBeforez m   q r�(
�( 
long�,  �+  p r   x {}~} m   x y�'
�' boovfals~ o      �&�& $0 numberidentifier numberIdentifier�1  �0  �2  M �% L   � ��� o   � ��$�$ $0 numberidentifier numberIdentifier�%   ��� l     �#�"�!�#  �"  �!  � ��� l     � ���   �  �  � ��� i   m p��� I      ���� 0 howmanydays howManyDays� ��� o      �� 0 numlist numList� ��� o      �� 0 weeksmissing weeksMissing�  �  � k     �� ��� Z     ����� H     �� o     �� 0 weeksmissing weeksMissing� r    ��� n    	��� 4    	��
� 
cobj� m    �� � o    �� 0 numlist numList� o      �� 0 daysdeferred daysDeferred�  � r    ��� n    ��� 4    ��
� 
cobj� m    �� � o    �� 0 numlist numList� o      �� 0 daysdeferred daysDeferred� ��� L    �� o    �� 0 daysdeferred daysDeferred�  � ��� l     ���
�  �  �
  � ��� l     �	���	  �  �  � ��� i   q t��� I      ���� $0 figureoutthetime figureOutTheTime� ��� o      �� 0 numlist numList� ��� o      �� 0 timemissing timeMissing� ��� o      �� 0 daysmissing daysMissing� ��� o      �� 0 weeksmissing weeksMissing� �� � o      ���� &0 minuteleadingzero minuteLeadingZero�   �  � k     <�� ��� Z     9������ H     �� o     ���� 0 timemissing timeMissing� Z    3������ o    ���� &0 minuteleadingzero minuteLeadingZero� r   	 ��� n   	 ��� 4   
 ���
�� 
cobj� m    ������� o   	 
���� 0 numlist numList� o      ���� $0 timedeferredtemp timeDeferredTemp��  � k    3�� ��� r    ��� m    �� ���  � 1    ��
�� 
txdl� ���� r    3��� c    1��� l   /������ c    /��� l   -������ n    -��� 7   -����
�� 
cobj� m    ������� l    ,������ [     ,��� [   ! '��� m   ! "���� � l  " &������ c   " &��� l  " $������ H   " $�� o   " #���� 0 daysmissing daysMissing��  ��  � m   $ %��
�� 
long��  ��  � l 	 ' +������ l  ' +������ c   ' +��� l  ' )������ H   ' )�� o   ' (���� 0 weeksmissing weeksMissing��  ��  � m   ) *��
�� 
long��  ��  ��  ��  ��  ��  � o    ���� 0 numlist numList��  ��  � m   - .��
�� 
ctxt��  ��  � m   / 0��
�� 
long� o      ���� $0 timedeferredtemp timeDeferredTemp��  ��  � r   6 9��� m   6 7����  � o      ���� $0 timedeferredtemp timeDeferredTemp� ���� L   : <�� o   : ;���� $0 timedeferredtemp timeDeferredTemp��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i  u x��� I      ������� &0 understandthetime understandTheTime� ��� o      ���� $0 timedeferredtemp timeDeferredTemp� ��� o      ���� 0 inthe inThe� ���� o      ���� 0 timemissing timeMissing��  ��  � k     ��� ��� Z     ������� o     ���� 0 timemissing timeMissing� r    ��� m    ����  � o      ���� 0 timedeferred timeDeferred��  � Z   
 �� ��� ?   
  o   
 ���� $0 timedeferredtemp timeDeferredTemp m    ����	`  k      l   ����   7 1 If the time is greater than the 24 hour clock...    �		 b   I f   t h e   t i m e   i s   g r e a t e r   t h a n   t h e   2 4   h o u r   c l o c k . . . 

 I   ����
�� .sysodisAaleR        TEXT m     � � P l e a s e   t r y   a g a i n :   t h e   t i m e   y o u   e n t e r e d   w a s   n o t   a   v a l i d   t i m e   o f   d a y .��    r     m    ���� o      �� 0 timedeferred timeDeferred � l   ����  �  �  �    =    ! o    �� $0 timedeferredtemp timeDeferredTemp m     ��	`  k   $ )  l  $ $��   &   If the time is equal to 2400...    � @   I f   t h e   t i m e   i s   e q u a l   t o   2 4 0 0 . . .  !  r   $ '"#" 1   $ %�
� 
days# o      �� 0 timedeferred timeDeferred! $�$ l  ( (����  �  �  �   %&% @   , /'(' o   , -�� $0 timedeferredtemp timeDeferredTemp( m   - .�� d& )*) k   2 �++ ,-, l  2 2�./�  . p j if they entered the time as a full hour:minute pair (with or without AM/PM and with or without the colon)   / �00 �   i f   t h e y   e n t e r e d   t h e   t i m e   a s   a   f u l l   h o u r : m i n u t e   p a i r   ( w i t h   o r   w i t h o u t   A M / P M   a n d   w i t h   o r   w i t h o u t   t h e   c o l o n )- 121 r   2 E343 l  2 C5��5 c   2 C676 l  2 A8��8 c   2 A9:9 l  2 ?;��; n   2 ?<=< 7  5 ?�>?
� 
cha > m   9 ;����? m   < >����= l  2 5@��@ c   2 5ABA o   2 3�� $0 timedeferredtemp timeDeferredTempB m   3 4�
� 
ctxt�  �  �  �  : m   ? @�
� 
ctxt�  �  7 m   A B�
� 
long�  �  4 o      �� "0 minutesdeferred minutesDeferred2 CDC r   F YEFE l  F WG��G c   F WHIH l  F UJ��J c   F UKLK l  F SM��M n   F SNON 7  I S�PQ
� 
cha P m   M O�� Q m   P R����O l  F IR��R c   F ISTS o   F G�� $0 timedeferredtemp timeDeferredTempT m   G H�
� 
ctxt�  �  �  �  L m   S T�
� 
ctxt�  �  I m   U V�
� 
long�  �  F o      �� 0 hoursdeferred hoursDeferredD UVU l  Z Z�WX�  W Z T Figuring out the minutes and hours in the time given (minutes are last two numbers)   X �YY �   F i g u r i n g   o u t   t h e   m i n u t e s   a n d   h o u r s   i n   t h e   t i m e   g i v e n   ( m i n u t e s   a r e   l a s t   t w o   n u m b e r s )V Z[Z l  Z Z����  �  �  [ \]\ Z   Z �^_`a^ =   Z ]bcb o   Z [�� 0 inthe inThec m   [ \dd �ee  P M_ k   ` kff ghg l  ` `�ij�  i 3 - For any number specifically designated as PM   j �kk Z   F o r   a n y   n u m b e r   s p e c i f i c a l l y   d e s i g n a t e d   a s   P Mh l�l r   ` kmnm l  ` io��o [   ` ipqp ]   ` ersr l  ` ct��t [   ` cuvu o   ` a�� 0 hoursdeferred hoursDeferredv m   a b�� �  �  s 1   c d�
� 
hourq ]   e hwxw o   e f�� "0 minutesdeferred minutesDeferredx 1   f g�~
�~ 
min �  �  n o      �}�} 0 timedeferred timeDeferred�  ` yzy F   n y{|{ =   n q}~} o   n o�|�| 0 hoursdeferred hoursDeferred~ m   o p�{�{ | =   t w� o   t u�z�z 0 inthe inThe� m   u v�� ���  A Mz ��y� k   | ��� ��� l  | |�x���x  �   For 12:00AM exactly   � ��� (   F o r   1 2 : 0 0 A M   e x a c t l y� ��w� r   | ���� ]   | ��� o   | }�v�v "0 minutesdeferred minutesDeferred� 1   } ~�u
�u 
min � o      �t�t 0 timedeferred timeDeferred�w  �y  a k   � ��� ��� l  � ��s���s  � \ V For times in the AM (implicit or explicit) and explicit times in the PM (i.e., 16:00)   � ��� �   F o r   t i m e s   i n   t h e   A M   ( i m p l i c i t   o r   e x p l i c i t )   a n d   e x p l i c i t   t i m e s   i n   t h e   P M   ( i . e . ,   1 6 : 0 0 )� ��r� r   � ���� l  � ���q�p� [   � ���� ]   � ���� o   � ��o�o 0 hoursdeferred hoursDeferred� 1   � ��n
�n 
hour� ]   � ���� o   � ��m�m "0 minutesdeferred minutesDeferred� 1   � ��l
�l 
min �q  �p  � o      �k�k 0 timedeferred timeDeferred�r  ] ��j� l  � ��i�h�g�i  �h  �g  �j  * ��� ?   � ���� o   � ��f�f $0 timedeferredtemp timeDeferredTemp� m   � ��e�e � ��� k   � ��� ��� l  � ��d���d  � ; 5 If they entered the time as a single number above 24   � ��� j   I f   t h e y   e n t e r e d   t h e   t i m e   a s   a   s i n g l e   n u m b e r   a b o v e   2 4� ��� I  � ��c��b
�c .sysodisAaleR        TEXT� m   � ��� ��� � P l e a s e   t r y   a g a i n :   t h e   t i m e   y o u   e n t e r e d   w a s   n o t   a   v a l i d   t i m e   o f   d a y .�b  � ��� r   � ���� m   � ��a�a��� o      �`�` 0 timedeferred timeDeferred� ��_� l  � ��^�]�\�^  �]  �\  �_  � ��� B   � ���� o   � ��[�[ $0 timedeferredtemp timeDeferredTemp� m   � ��Z�Z � ��Y� k   � ��� ��� l  � ��X���X  � J D If the entered the time as a single number (with or without AM/PM)	   � ��� �   I f   t h e   e n t e r e d   t h e   t i m e   a s   a   s i n g l e   n u m b e r   ( w i t h   o r   w i t h o u t   A M / P M ) 	� ��W� Z   � ������ =   � ���� o   � ��V�V $0 timedeferredtemp timeDeferredTemp� m   � ��U�U � k   � ��� ��� l  � ��T���T  � E ? If they entered 24 hours exactly (treat as a full extra delay)   � ��� ~   I f   t h e y   e n t e r e d   2 4   h o u r s   e x a c t l y   ( t r e a t   a s   a   f u l l   e x t r a   d e l a y )� ��S� r   � ���� 1   � ��R
�R 
days� o      �Q�Q 0 timedeferred timeDeferred�S  � ��� F   � ���� l  � ���P�O� =   � ���� o   � ��N�N $0 timedeferredtemp timeDeferredTemp� m   � ��M�M �P  �O  � l  � ���L�K� >   � ���� o   � ��J�J 0 inthe inThe� m   � ��� ���  A M�L  �K  � ��� k   � ��� ��� l  � ��I���I  � . ( If they entered "12" (treat it as 12PM)   � ��� P   I f   t h e y   e n t e r e d   " 1 2 "   ( t r e a t   i t   a s   1 2 P M )� ��H� r   � ���� ]   � ���� m   � ��G�G � 1   � ��F
�F 
hour� o      �E�E 0 timedeferred timeDeferred�H  � ��� G   � ���� l  � ���D�C� @   � ���� o   � ��B�B $0 timedeferredtemp timeDeferredTemp� m   � ��A�A �D  �C  � l  � ���@�?� >   � ���� o   � ��>�> 0 inthe inThe� m   � ��� ���  P M�@  �?  � ��=� k   � ��� ��� l  � ��<���<  � G A For implicit and explicit AM entries and for implicit PM entries   � ��� �   F o r   i m p l i c i t   a n d   e x p l i c i t   A M   e n t r i e s   a n d   f o r   i m p l i c i t   P M   e n t r i e s� ��;� r   � ���� ]   � �   o   � ��:�: $0 timedeferredtemp timeDeferredTemp 1   � ��9
�9 
hour� o      �8�8 0 timedeferred timeDeferred�;  �=  � k   � �  l  � ��7�7     For explicit PM entries    � 0   F o r   e x p l i c i t   P M   e n t r i e s �6 r   � �	
	 ]   � � l  � ��5�4 [   � � o   � ��3�3 $0 timedeferredtemp timeDeferredTemp m   � ��2�2 �5  �4   1   � ��1
�1 
hour
 o      �0�0 0 timedeferred timeDeferred�6  �W  �Y  ��  � �/ L   � � o   � ��.�. 0 timedeferred timeDeferred�/  �  l     �-�,�+�-  �,  �+    l     �*�)�(�*  �)  �(    i  y | I      �'�&�' 40 figuringtimetodesiredday figuringTimeToDesiredDay  o      �%�% 0 monthdesired monthDesired �$ o      �#�# 0 
daydesired 
dayDesired�$  �&   k     ;   r     !"! l    #�"�!# I    � ��
�  .misccurdldt    ��� null�  �  �"  �!  " o      �� 0 
todaysdate 
todaysDate  $%$ r    &'& m    	��  ' n      ()( 1   
 �
� 
time) o   	 
�� 0 
todaysdate 
todaysDate% *+* l   �,-�  , %  Creating an intial date object   - �.. >   C r e a t i n g   a n   i n t i a l   d a t e   o b j e c t+ /0/ s    121 o    �� 0 
todaysdate 
todaysDate2 o      �� $0 exactdesireddate exactDesiredDate0 343 r    565 o    �� 0 
daydesired 
dayDesired6 l     7��7 n      898 1    �
� 
day 9 o    �� $0 exactdesireddate exactDesiredDate�  �  4 :;: r    <=< o    �� 0 monthdesired monthDesired= l     >��> n      ?@? m    �
� 
mnth@ o    �� $0 exactdesireddate exactDesiredDate�  �  ; ABA Z    6CD��C A    &EFE o     �
�
 $0 exactdesireddate exactDesiredDateF l    %G�	�G I    %���
� .misccurdldt    ��� null�  �  �	  �  D r   ) 2HIH l  ) .J��J [   ) .KLK l  ) ,M��M n   ) ,NON 1   * ,� 
�  
yearO o   ) *���� 0 
todaysdate 
todaysDate�  �  L m   , -���� �  �  I l     P����P n      QRQ 1   / 1��
�� 
yearR o   . /���� $0 exactdesireddate exactDesiredDate��  ��  �  �  B S��S L   7 ;TT l  7 :U����U \   7 :VWV o   7 8���� $0 exactdesireddate exactDesiredDateW o   8 9���� 0 
todaysdate 
todaysDate��  ��  ��   XYX l     ��������  ��  ��  Y Z[Z l     ��������  ��  ��  [ \]\ i   } �^_^ I      ��`���� 00 daysfromtodaytoweekday daysFromTodayToWeekday` a��a o      ����  0 weekdaydesired weekdayDesired��  ��  _ k     0bb cdc r     efe c     	ghg l    i����i n     jkj m    ��
�� 
wkdyk l    l����l I    ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  h m    ��
�� 
longf o      ����  0 currentweekday currentWeekdayd mnm Z    -opqro =    sts o    ����  0 currentweekday currentWeekdayt o    ����  0 weekdaydesired weekdayDesiredp r    uvu m    ����  v o      ���� 0 daysdeferred daysDeferredq wxw A    yzy o    ����  0 currentweekday currentWeekdayz o    ����  0 weekdaydesired weekdayDesiredx {��{ r    #|}| \    !~~ o    ����  0 weekdaydesired weekdayDesired o     ����  0 currentweekday currentWeekday} o      ���� 0 daysdeferred daysDeferred��  r r   & -��� \   & +��� [   & )��� m   & '���� � o   ' (����  0 weekdaydesired weekdayDesired� o   ) *����  0 currentweekday currentWeekday� o      ���� 0 daysdeferred daysDeferredn ���� L   . 0�� o   . /���� 0 daysdeferred daysDeferred��  ] ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 00 understandabsolutedate understandAbsoluteDate� ���� o      ���� 0 thetext theText��  ��  � k    :�� ��� r     ��� l    ������ I    ������
�� .misccurdldt    ��� null��  ��  ��  ��  � o      ���� 0 thedate theDate� ��� r    ��� m    	���� � l     ������ n      ��� 1   
 ��
�� 
day � o   	 
�� 0 thedate theDate��  ��  � ��� r    ��� m    �� � l     ���� n      ��� m    �
� 
mnth� o    �� 0 thedate theDate�  �  � ��� r    ��� l   ���� \    ��� o    �� 0 thedate theDate� ]    ��� m    �� � 1    �
� 
days�  �  � o      �� 0 thedate theDate� ��� r    !��� n    ��� 1    �
� 
shdt� o    �� 0 thedate theDate� o      �� 0 thedate theDate� ��� l  " "����  �  �  � ��� r   " /��� J   " +�� ��� m   " #�� ���  .� ��� m   # $�� ���  -� ��� m   $ %�� ���  /� ��� m   % &�� ���  � ��� m   & '�� ���  � ��� m   ' (�� ���  |� ��� m   ( )�� ���  \�  � 1   + .�
� 
txdl� ��� r   0 5��� n   0 3��� 2   1 3�
� 
citm� o   0 1�� 0 thedate theDate� o      �� 0 thedate theDate� ��� r   6 F��� K   6 D�� ���� 0 theday theDay� m   7 8��  � ���� 0 themonth theMonth� m   ; <��  � ���� 0 theyear theYear� m   ? @��  �  � o      �� 0 thepositions thePositions� ��� l  G G����  �  �  � ��� l  G G����  � S M Checks the positions of the date components based on January 31 of this year   � ��� �   C h e c k s   t h e   p o s i t i o n s   o f   t h e   d a t e   c o m p o n e n t s   b a s e d   o n   J a n u a r y   3 1   o f   t h i s   y e a r� ��� Y   G ������� O   V ���� Z   _ ������ E  _ d��� m   _ b�� ���  0 1�  g   b c� r   g n��� o   g h�� 0 i  � l     ���� n     ��� o   i m�� 0 themonth theMonth� o   h i�� 0 thepositions thePositions�  �  �    E  q v m   q t �  3 1  g   t u � r   y ~ o   y z�� 0 i   l     	��	 n     

 o   { }�� 0 theday theDay o   z {�� 0 thepositions thePositions�  �  �  � r   � � o   � ����� 0 i   l     ���� n      o   � ����� 0 theyear theYear o   � ����� 0 thepositions thePositions��  ��  � n   V \ 4   W \��
�� 
cobj o   Z [���� 0 i   o   V W���� 0 thedate theDate� 0 i  � m   J K���� � l  K Q���� n   K Q 1   L P��
�� 
leng o   K L���� 0 thedate theDate��  ��  �  �  l  � ���������  ��  ��    r   � � n   � � 2   � ��
� 
citm o   � ��~�~ 0 thetext theText o      �}�} 0 thetext theText   l  � ��|�{�z�|  �{  �z    !"! r   � �#$# l  � �%�y�x% I  � ��w�v�u
�w .misccurdldt    ��� null�v  �u  �y  �x  $ o      �t�t 0 
targetdate 
targetDate" &'& r   � �()( m   � ��s�s  ) n      *+* 1   � ��r
�r 
time+ o   � ��q�q 0 
targetdate 
targetDate' ,-, Z   �7./�p0. F   � �121 l  � �3�o�n3 >  � �454 n   � �676 1   � ��m
�m 
leng7 o   � ��l�l 0 thetext theText5 m   � ��k�k �o  �n  2 l  � �8�j�i8 >  � �9:9 n   � �;<; 1   � ��h
�h 
leng< o   � ��g�g 0 thetext theText: m   � ��f�f �j  �i  / k   � �== >?> l  � ��e@A�e  @ ; 5 If they don't input at 2-3 numbers, return the error   A �BB j   I f   t h e y   d o n ' t   i n p u t   a t   2 - 3   n u m b e r s ,   r e t u r n   t h e   e r r o r? C�dC L   � �DD m   � ��c�c���d  �p  0 k   �7EE FGF Z   � �HI�bJH =  � �KLK n   � �MNM 1   � ��a
�a 
lengN o   � ��`�` 0 thetext theTextL m   � ��_�_ I k   � �OO PQP l  � ��^RS�^  R %  If the input has three numbers   S �TT >   I f   t h e   i n p u t   h a s   t h r e e   n u m b e r sQ U�]U r   � �VWV I   � ��\X�[�\ 0 solvetheyear solveTheYearX Y�ZY c   � �Z[Z l  � �\�Y�X\ n   � �]^] 4   � ��W_
�W 
cobj_ l  � �`�V�U` n   � �aba o   � ��T�T 0 theyear theYearb o   � ��S�S 0 thepositions thePositions�V  �U  ^ o   � ��R�R 0 thetext theText�Y  �X  [ m   � ��Q
�Q 
nmbr�Z  �[  W l     c�P�Oc n      ded 1   � ��N
�N 
yeare o   � ��M�M 0 
targetdate 
targetDate�P  �O  �]  �b  J k   � �ff ghg l  � ��Lij�L  i 7 1 If the input has two numbers (left out the year)   j �kk b   I f   t h e   i n p u t   h a s   t w o   n u m b e r s   ( l e f t   o u t   t h e   y e a r )h l�Kl r   � �mnm I   � ��Jo�I�J 40 adjustpositionsfornoyear adjustPositionsForNoYearo p�Hp o   � ��G�G 0 thepositions thePositions�H  �I  n o      �F�F 0 thepositions thePositions�K  G qrq r   �sts c   �uvu l  � �w�E�Dw n   � �xyx 4   � ��Cz
�C 
cobjz l  � �{�B�A{ n   � �|}| o   � ��@�@ 0 themonth theMonth} o   � ��?�? 0 thepositions thePositions�B  �A  y o   � ��>�> 0 thetext theText�E  �D  v m   � �=
�= 
nmbrt l     ~�<�;~ n      � m  �:
�: 
mnth� o  �9�9 0 
targetdate 
targetDate�<  �;  r ��� r  ��� c  ��� l ��8�7� n  ��� 4  �6�
�6 
cobj� l 
��5�4� n  
��� o  �3�3 0 theday theDay� o  
�2�2 0 thepositions thePositions�5  �4  � o  �1�1 0 thetext theText�8  �7  � m  �0
�0 
nmbr� l     ��/�.� n      ��� 1  �-
�- 
day � o  �,�, 0 
targetdate 
targetDate�/  �.  � ��+� Z  7���*�)� A ��� o  �(�( 0 
targetdate 
targetDate� l ��'�&� I �%�$�#
�% .misccurdldt    ��� null�$  �#  �'  �&  � r  "3��� [  "-��� l "+��"�!� l "+�� �� n  "+��� 1  '+�
� 
year� l "'���� I "'���
� .misccurdldt    ��� null�  �  �  �  �   �  �"  �!  � m  +,�� � l     ���� n      ��� 1  .2�
� 
year� o  -.�� 0 
targetdate 
targetDate�  �  �*  �)  �+  - ��� L  8:�� o  89�� 0 
targetdate 
targetDate�  � ��� l     ����  �  �  � ��� i  � ���� I      ���� 40 adjustpositionsfornoyear adjustPositionsForNoYear� ��� o      �� 0 thepositions thePositions�  �  � k     J�� ��� Z     G����
� =    ��� l    ��	�� n    ��� o    �� 0 theyear theYear� o     �� 0 thepositions thePositions�	  �  � m    �� � k    �� ��� r    ��� \    ��� l   ���� n   ��� o   	 �� 0 themonth theMonth� o    	�� 0 thepositions thePositions�  �  � m    � �  � l     ������ n     ��� o    ���� 0 themonth theMonth� o    ���� 0 thepositions thePositions��  ��  � ���� r    ��� \    ��� l   ������ n   ��� o    ���� 0 theday theDay� o    ���� 0 thepositions thePositions��  ��  � m    ���� � l     ������ n     ��� o    ���� 0 theday theDay� o    ���� 0 thepositions thePositions��  ��  ��  � ��� =   !��� o    ���� 0 yearposition yearPosition� m     ���� � ���� Z   $ C������ A   $ +��� l  $ '������ n  $ '��� o   % '���� 0 theday theDay� o   $ %���� 0 thepositions thePositions��  ��  � l  ' *������ n  ' *��� o   ( *���� 0 themonth theMonth� o   ' (���� 0 thepositions thePositions��  ��  � r   . 7��� \   . 3��� l  . 1������ n  . 1��� o   / 1���� 0 themonth theMonth� o   . /���� 0 thepositions thePositions��  ��  � m   1 2���� � l     ������ n     ��� o   4 6���� 0 themonth theMonth� o   3 4���� 0 thepositions thePositions��  ��  ��  � r   : C��� \   : ?��� l  : =������ n  : =��� o   ; =���� 0 theday theDay� o   : ;���� 0 thepositions thePositions��  ��  � m   = >���� � l     ������ n     ��� o   @ B���� 0 theday theDay� o   ? @���� 0 thepositions thePositions��  ��  ��  �
  � ���� L   H J�� o   H I���� 0 thepositions thePositions��  � ��� l     ��������  ��  ��  � ��� i  � ���� I      ������� 0 solvetheyear solveTheYear� ���� o      ���� 0 num  ��  ��  � Z     ���� � @      o     ���� 0 num   m    ������ L     o    ���� 0 num  ��    L     l   ���� [     m    ����� o    ���� 0 num  ��  ��  � 	 l     ��������  ��  ��  	 

 l     ����  �  �    i  � � I      ��� 
0 notify    o      �� 0 thetitle theTitle  o      ��  0 thedescription theDescription  o      �� 0 thetype theType � o      �� 0 theurl theURL�  �   k     |  O      r     ?      l   !��! I   �"�
� .corecnte****       ****" l   #��# 6   $%$ 2    �
� 
prcs% =   &'& 1   	 �
� 
bnid' m    (( �)) 0 c o m . G r o w l . G r o w l H e l p e r A p p�  �  �  �  �    m    ��   o      �� 0 	isrunning 	isRunning m     **�                                                                                  sevs  alis    �  Macintosh HD               ���4H+     0System Events.app                                               3l�b��        ����  	                CoreServices    ���      �c       0   *   )  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   +�+ Z    |,-��, o    �� 0 	isrunning 	isRunning- O    x./. k   " w00 121 I  " ?��3
� .registernull��� ��� null�  3 �45
� 
appl4 o   $ )�� "0 applicationname applicationName5 �67
� 
anot6 o   * /�� $0 allnotifications allNotifications7 �89
� 
dnot8 o   0 5�� ,0 defaultnotifications defaultNotifications9 �:�
� 
iapp: o   6 ;�� "0 iconapplication iconApplication�  2 ;�; Z   @ w<=�>< =  @ E?@? n   @ CABA 1   A C�
� 
lengB o   @ A�� 0 theurl theURL@ m   C D��  = I  H [��C
� .notifygrnull��� ��� null�  C �DE
� 
nameD o   J K�� 0 thetype theTypeE �FG
� 
titlF o   L M�� 0 thetitle theTitleG �HI
� 
applH o   N S�� "0 applicationname applicationNameI �J�
� 
descJ o   V W��  0 thedescription theDescription�  �  > I  ^ w��K
� .notifygrnull��� ��� null�  K �LM
� 
nameL o   ` a�� 0 thetype theTypeM �NO
� 
titlN o   b c�� 0 thetitle theTitleO �PQ
� 
applP o   d i�� "0 applicationname applicationNameQ �RS
� 
descR o   l m��  0 thedescription theDescriptionS �T�
� 
curlT o   p q�� 0 theurl theURL�  �  / m    UU�                                                                                  GRRR  alis    H  Macintosh HD               ���4H+     M	Growl.app                                                       ʝ���        ����  	                Applications    ���      ���.       M  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  �  �  �   VWV l     ��~�}�  �~  �}  W XYX i   � �Z[Z I      �|\�{�|  0 attachmentlist attachmentList\ ]^] o      �z�z 0 theid theID^ _�y_ o      �x�x 0 theclass theClass�y  �{  [ k     �`` aba r     cdc J     �w�w  d o      �v�v &0 theattachmentlist theAttachmentListb efe O    �ghg k    �ii jkj Z    Vlm�u�tl =   non o    �s�s 0 theclass theClasso m    pp �qq  t a s km O    Rrsr k    Qtt uvu r    wxw m    yy �r�q
�r 
OSfA
�q 
nmbrx o      �p�p ,0 numberoffileattached NumberOfFileAttachedv z{z r     #|}| m     !�o�o } o      �n�n 0 i  { ~�m~ V   $ Q� k   , L�� ��� Z   , F���l�k� >  , 4��� n   , 2��� 1   0 2�j
�j 
OSin� 4   , 0�i�
�i 
OSfA� o   . /�h�h 0 i  � m   2 3�g
�g boovtrue� r   7 B��� c   7 ?��� n   7 =��� 1   ; =�f
�f 
atfn� 4   7 ;�e�
�e 
OSfA� o   9 :�d�d 0 i  � m   = >�c
�c 
TEXT� n      ���  ;   @ A� o   ? @�b�b &0 theattachmentlist theAttachmentList�l  �k  � ��a� r   G L��� [   G J��� o   G H�`�` 0 i  � m   H I�_�_ � o      �^�^ 0 i  �a  � B   ( +��� o   ( )�]�] 0 i  � o   ) *�\�\ ,0 numberoffileattached NumberOfFileAttached�m  s n    ��� 1    �[
�[ 
FCno� 5    �Z��Y
�Z 
FCac� o    �X�X 0 theid theID
�Y kfrmID  �u  �t  k ��W� Z   W ����V�U� =  W Z��� o   W X�T�T 0 theclass theClass� m   X Y�� ���  p r o j e c t� O   ] ���� k   g ��� ��� r   g j��� m   g h�� �S�R
�S 
OSfA
�R 
nmbr� o      �Q�Q ,0 numberoffileattached NumberOfFileAttached� ��� r   k n��� m   k l�P�P � o      �O�O 0 i  � ��N� V   o ���� k   w ��� ��� Z   w ����M�L� >  w ��� n   w }��� 1   { }�K
�K 
OSin� 4   w {�J�
�J 
OSfA� o   y z�I�I 0 i  � m   } ~�H
�H boovtrue� r   � ���� c   � ���� n   � ���� 1   � ��G
�G 
atfn� 4   � ��F�
�F 
OSfA� o   � ��E�E 0 i  � m   � ��D
�D 
TEXT� n      ���  ;   � �� o   � ��C�C &0 theattachmentlist theAttachmentList�M  �L  � ��B� r   � ���� [   � ���� o   � ��A�A 0 i  � m   � ��@�@ � o      �?�? 0 i  �B  � B   s v��� o   s t�>�> 0 i  � o   t u�=�= ,0 numberoffileattached NumberOfFileAttached�N  � n   ] d��� 1   b d�<
�< 
FCno� 5   ] b�;��:
�; 
FCpr� o   _ `�9�9 0 theid theID
�: kfrmID  �V  �U  �W  h n    	��� 4   	�8�
�8 
docu� m    �7�7 � m    ���                                                                                  OFOC  alis    X  Macintosh HD               ���4H+     MOmniFocus.app                                                   ��̥��        ����  	                Applications    ���      ̦(       M  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  f ��6� L   � ��� o   � ��5�5 &0 theattachmentlist theAttachmentList�6  Y ��� l     �4�3�2�4  �3  �2  � ��� i   � ���� I      �1��0�1 $0 getridofdateinfo getRidOfDateInfo� ��� o      �/�/ "0 theoriginalnote theOriginalNote� ��.� o      �-�- 0 
dueorstart 
dueOrStart�.  �0  � k     ��� ��� r     ��� l    ��,�+� n     ��� 1    �*
�* 
leng� n     ��� 2   �)
�) 
cpar� o     �(�( "0 theoriginalnote theOriginalNote�,  �+  � o      �'�' 0 numparagraphs numParagraphs� ��� Y    )��&���%� Z    $���$�#� C    ��� n    ��� 4    �"�
�" 
cpar� o    �!�! 0 i  � o    � �  "0 theoriginalnote theOriginalNote� o    �� 0 
dueorstart 
dueOrStart� k     �� ��� r    ��� o    �� 0 i  � o      �� 0 datespot dateSpot� ���  S     �  �$  �#  �& 0 i  � m    �� � o    �� 0 numparagraphs numParagraphs�%  � ��� r   * 1� � J   * - � o   * +�
� 
ret �    n      1   . 0�
� 
txdl  f   - .�  Z   2 �	
 =  2 5 o   2 3�� 0 datespot dateSpot m   3 4��  Z   8 Y� =  8 A l  8 ?�� I  8 ?��
� .corecnte****       **** n   8 ; 2  9 ;�
� 
cpar o   8 9�� "0 theoriginalnote theOriginalNote�  �  �   m   ? @��  r   D G m   D E �   o      �� 0 thenote theNote�   r   J Y c   J W l  J U��
 n   J U  7  K U�	!"
�	 
cpar! m   O Q�� " m   R T����  l  J K#��# o   J K�� "0 theoriginalnote theOriginalNote�  �  �  �
   m   U V�
� 
TEXT o      �� 0 thenote theNote	 $%$ =  \ _&'& o   \ ]�� 0 datespot dateSpot' o   ] ^� �  0 numparagraphs numParagraphs% (��( r   b q)*) c   b o+,+ l  b m-����- n   b m./. l  c m0����0 7  c m��12
�� 
cpar1 m   g i���� 2 m   j l��������  ��  / o   b c���� "0 theoriginalnote theOriginalNote��  ��  , m   m n��
�� 
TEXT* o      ���� 0 thenote theNote��  
 r   t �343 c   t �565 l  t �7����7 b   t �898 l  t �:����: n   t �;<; l  u �=����= 7  u ���>?
�� 
cpar> m   y {���� ? l  | �@����@ \   | �ABA o   } ~���� 0 datespot dateSpotB m   ~ ���� ��  ��  ��  ��  < o   t u���� "0 theoriginalnote theOriginalNote��  ��  9 l  � �C����C n   � �DED l  � �F����F 7  � ���GH
�� 
cparG l  � �I����I [   � �JKJ o   � ����� 0 datespot dateSpotK m   � ����� ��  ��  H m   � ���������  ��  E o   � ����� "0 theoriginalnote theOriginalNote��  ��  ��  ��  6 m   � ���
�� 
TEXT4 o      ���� 0 thenote theNote LML r   � �NON m   � �PP �QQ  O n     RSR 1   � ���
�� 
txdlS  f   � �M T��T L   � �UU o   � ����� 0 thenote theNote��  � V��V l     ��������  ��  ��  ��       *��W   $ - 6���� P U Z _XX p wYZ[\]^_`abcdefghijklmnopq��  W (����������������������������������������������������������� (0 startorendoffolder startOrEndOfFolder��  0 variablesymbol variableSymbol�� ,0 defaultfolderpointer defaultFolderPointer�� 40 optionliststartdelimiter optionListStartDelimiter�� 00 optionlistenddelimiter optionListEndDelimiter�� 0 firstrun firstRun�� .0 specialtemplatefolder specialTemplateFolder�� "0 applicationname applicationName�� &0 scriptstartnotify scriptStartNotify�� "0 scriptendnotify scriptEndNotify�� 0 
datenotify 
dateNotify�� $0 allnotifications allNotifications�� ,0 defaultnotifications defaultNotifications�� "0 iconapplication iconApplication�� &0 checkingsomething checkingSomething�� (0 selectionpositions selectionPositions�� $0 populatetemplate populateTemplate� $0 replacevariables replaceVariables� (0 eliminatevariables eliminateVariables� &0 workingthecontext workingTheContext� $0 findthevariables findTheVariables� *0 findthereplacements findTheReplacements� &0 cleanexcessbreaks cleanExcessBreaks� .0 checkforothertemplate checkForOtherTemplate� 20 adjustoldtemplatesyntax adjustOldTemplateSyntax� 80 checkingfordateinformation checkingForDateInformation� 0 englishtime englishTime� (0 isnumberidentifier isNumberIdentifier� 0 howmanydays howManyDays� $0 figureoutthetime figureOutTheTime� &0 understandthetime understandTheTime� 40 figuringtimetodesiredday figuringTimeToDesiredDay� 00 daysfromtodaytoweekday daysFromTodayToWeekday� 00 understandabsolutedate understandAbsoluteDate� 40 adjustpositionsfornoyear adjustPositionsForNoYear� 0 solvetheyear solveTheYear� 
0 notify  �  0 attachmentlist attachmentList� $0 getridofdateinfo getRidOfDateInfo
� .aevtoappnull  �   � ****
�� boovtrue
�� 
nullX �r� r   U Z _Y ����st�� (0 selectionpositions selectionPositions� �u� u  ���� 0 
selectlist 
selectList� 0 originallist originalList� (0 multipleselections multipleSelections�  s ��������� 0 
selectlist 
selectList� 0 originallist originalList� (0 multipleselections multipleSelections� 0 choicesfound choicesFound� ,0 positionofselections positionOfSelections� 0 j  � 0 k  � 0 achoicefound aChoiceFoundt ����
� 
leng
� 
bool
� 
cobj
� 
null� Ѣ rjE�OjvE�OkE�O _h���,
 	���, �&kE�OfE�O 8h���,
 ��&��/��/ ��6FOeE�O�kE�Y hO�kE�[OY��O�kE�[OY��Y [kE�O�E�O Ph���,
 ���&kE�O /h���,
 ���&��/��/ �E�Y hO�kE�[OY��O�kE�[OY��O�Z �<��vw�� $0 populatetemplate populateTemplate� �x� x  ���� 0 
theproject 
theProject� $0 cleanedvariables cleanedVariables� "0 thereplacements theReplacements�  v �������������� 0 
theproject 
theProject� $0 cleanedvariables cleanedVariables� "0 thereplacements theReplacements� .0 delimcleanedvariables delimCleanedVariables� 0 i  � &0 theattachmentlist theAttachmentList� (0 possibledatechange possibleDateChange� 0 thefullnote theFullNote� 0 
thenewnote 
theNewNote� &0 attachmentrequest attachmentRequest� 00 theattachfilepathalias theAttachFilePathAlias� 0 theattachment theAttachment� "0 completethetask completeTheTaskw F�~�}	2�|�{�z�y�x�w�v��u�t��s�r�q�p�o14:=�n�mae�l�k�j�i�h�g�f�e�d�c�b�a�`�����_���^�]�\��[%L�Z�Y������	 	
�~ 
leng
�} 
cobj
�| 
FCDo
�{ 
ID  
�z 
pcls
�y 
TEXT�x  0 attachmentlist attachmentList
�w 
pnam�v $0 replacevariables replaceVariables
�u 
msng�t 80 checkingfordateinformation checkingForDateInformation
�s 
FCDs
�r 
FCDd
�q 
FCno�p (0 eliminatevariables eliminateVariables
�o 
bool�n &0 cleanexcessbreaks cleanExcessBreaks
�m 
prmp
�l .sysostdfalis    ��� null
�k 
ctxt
�j 
kocl
�i 
OSfA
�h 
prdt
�g 
atfn
�f 
OSin�e 
�d .corecrel****      � null�c  �b  
�a .corecnte****       ****
�` 
FCft
�_ 
btns
�^ 
dflt
�] .sysodlogaskr        TEXT
�\ 
bhit
�[ 
FCcd
�Z 
FCct�Y &0 workingthecontext workingTheContext�VjvE�O k��,Ekh b  ��/%�6F[OY��O�-*�,&�!)*�,*�,�&l+ E�O��,j )*�,��m+ 	*�,FY hO�kvE�O ch��k/�)*��m+ E�O��k/� ,��l/�  ��k/*�,FY 
��k/*�,FO��m/*a ,FY ��,l  ��l/*a ,FY h[OY��O��,j $*a ,E�O)�k+ E�O)���m+ 	*a ,FY hOfE�O*a ,a 
 *a ,a a & )eE�O)*a ,a a lva a lvm+ 	*a ,FY hO)*a ,k+ *a ,FO� P D*a a *�,%a %l a &E�O*a , *a a  a !a "�a #fa $a $ %UW X & 'hY hO*a , 5 2�[a �l (kh *a a  a !a "�a #fa $a $ %[OY��UOfE�Ojk*a )-j (kh *a )�/L)*�,*�,�&l+ E�O��,j )*�,��m+ 	*�,FY hOfE�O*a ,a *
 *a ,a +a & /a ,*�,%a -%a .a /a 0lva 1la $ 2a 3,a 4 E�Y hO� e*a 5,FY�)*a ,a 6a 7lva 8a 9lvm+ 	*a ,FOa :kvE�O eh��k/�)*��m+ E�O��k/� .��l/a ;  ��k/*�,FY 
��k/*�,FO��m/*a ,FY ��,l  ��l/*a ,FY h[OY��O��,j 8)*a ,��m+ 	*a ,FO*a <,� )*a <,��m+ =*a <,FY hY hOfE�O*a ,a >
 *a ,a ?a & )eE�O)*a ,a @a Alva Ba Clvm+ 	*a ,FY hO)*a ,k+ *a ,FO� P D*a a D*�,%a E%l a &E�O*a , *a a  a !a "�a #fa $a $ %UW X & 'hY hO*a , 5 2�[a �l (kh *a a  a !a "�a #fa $a $ %[OY��UOfE�OfE�U[OY��O�UUU[ �X	:�W�Vyz�U�X $0 replacevariables replaceVariables�W �T{�T {  �S�R�Q�S 0 thetext theText�R 0 thevariables theVariables�Q "0 thereplacements theReplacements�V  y �P�O�N�M�P 0 thetext theText�O 0 thevariables theVariables�N "0 thereplacements theReplacements�M 0 i  z 	�L�K�J�I�H�G�F�E�D
�L 
leng
�K 
cobj
�J 
txdl
�I 
citm
�H 
pcls
�G 
ldt 
�F 
dstr
�E 
ctxt
�D 
TEXT�U c��,j  �Y hO Ok��,Ekh ��/)�,FO��-E�O��/�,�  ��/�,�&)�,FY 
��/)�,FO��&E�Ojv)�,F[OY��O�\ �C	��B�A|}�@�C (0 eliminatevariables eliminateVariables�B �?~�? ~  �>�> 0 thenote theNote�A  | �=�<�;�:�= 0 thenote theNote�< 0 i  �; $0 variableposition variablePosition�: 0 
returnnote 
returnNote} �9�8	��7�6�5�4


�9 
cpar
�8 .corecnte****       ****
�7 
ret 
�6 
txdl�5��
�4 
ctxt�@ ���-j k  �Y � *��-j kih ��/b   
�E�OY h[OY��O�kv)�,FO���-j   �[�\[Zk\Z�2�&E�Y 9�k  �[�\[Zl\Zi2�&E�Y !�[�\[Zk\Z�k2�[�\[Z�k\Zi2%�&E�O�)�,FO�] �3
�2�1��0�3 &0 workingthecontext workingTheContext�2 �/��/ �  �.�-�,�. 0 
thecontext 
theContext�- 0 thevariables theVariables�, "0 thereplacements theReplacements�1   �+�*�)�(�'�&�%�$�#�"�!�+ 0 
thecontext 
theContext�* 0 thevariables theVariables�) "0 thereplacements theReplacements�( 0 i  �' 0 variablefound variableFound�& (0 desiredcontextname desiredContextName�% $0 contextsinfolder contextsInFolder�$ "0 positionoffound positionOfFound�# 20 namesofcontextsinfolder namesOfContextsInFolder�" 0 thecontainer theContainer�! 0 
newcontext 
newContext� 
�� ����������������
�  
msng
� 
leng
� 
bool
� 
pnam
� 
cobj� $0 replacevariables replaceVariables
� 
ctnr
� 
pcls
� 
docu
� 
FCDo
� 
FCct
� 
null
� 
kocl
� 
insh
� 
prdt� 
� .corecrel****      � null�0 �� ߠ�  hY �kE�OfE�O -h���,	 ��&��,��/ eE�Y hO�kE�[OY��O� �Y �)��,��m+ E�O��,�,�  *�,�-E�Y 	��,�-E�O�E�OjvE�O +k��,Ekh ��/�,�6FO��/�  �E�Y h[OY��O�� ��/EY %��,E�O� *���*�-6��la  E�UO�U^ �
������� $0 findthevariables findTheVariables� ��� �  �
�
 0 
theproject 
theProject�  � �	��������� �������	 0 
theproject 
theProject� 0 thefullnote theFullNote� 0 thenote theNote� 0 i  � $0 cleanedvariables cleanedVariables� 0 thevariables theVariables� 0 thevar theVar� 0 optionlists optionLists� 0 thesplit theSplit�  &0 newoptionlisttext newOptionListText�� 0 newoptionlist newOptionList�� 0 
emptyfound 
emptyFound�� 0 j  � !������������,��������E�����������
�� 
FCDo
�� 
FCno
�� 
msng
�� 
null
�� 
cpar
�� .corecnte****       ****
�� 
txdl
�� 
citm
�� 
leng
�� 
cobj
�� 
bool
�� 
spac�� ��������*�,Ҡ�,E�O��  jvjvlvY hO�E�O -��-j kih ��/b   ��/E�OY h[OY��O��  jvjvlvY hOjvE�O�b  %b  lv)�,FO��-E�O %k��,Ekh ��/� ��/�6FY h[OY��OjvE�Ok��,Ekh ��/b  	 ��/b  �& ��b  %�%�b  %�%�b  %�b  %b  b  �v)�,FO��/�-E�O��k/��/FO��l/E�Oa a lv)�,FO��-E�OeE�O �h� wk��,Ekh fE�O��/a   X�k  �[�\[Zl\Zi2E�Y 9���,  �[�\[Zk\Za 2E�Y �[�\[Zk\Z�k2�[�\[Z�k\Zi2%E�OeE�OY h[OY��[OY��O��6FY jv�6F[OY��Ojv)�,FOPUUO��lv_ ��/���������� *0 findthereplacements findTheReplacements�� ����� �  ������ 0 thevariables theVariables�� 0 optionlists optionLists��  � 
���������������������� 0 thevariables theVariables�� 0 optionlists optionLists�� "0 thereplacements theReplacements�� 0 thetitle theTitle�� 0 i  �� 0 thetext theText��  0 thereturninput theReturnInput��  0 thecurrentdate theCurrentDate�� 0 	errortext 	errorText�� 0 errornumber errorNumber� 
��D����V��es��y����������������������������
�� 
FCDo
�� 
leng
�� 
cobj
�� .misccurdldt    ��� null
�� 
quot
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
ttxt�� 0 englishtime englishTime
�� 
time
�� 
prmp
�� .gtqpchltns    @   @ ns  
�� 
TEXT�� 0 	errortext 	errorText� ������
�� 
errn�� 0 errornumber errorNumber��  ������
�*�, �jvE�O�E�O �k��,Ekh ��/� *j �6FY A��/� ��%��/%�%�%E�Y '��/jv ��/%�%E�Y ��%��/%�%�%E�O��/� � i��/jv  I�a a l a ,E�O��/a  #)�k+ E�O*j E�Oj�a ,FO��E�Y hO��6FY ��/a �l a &�6FW X  �a   fY hY h[OY�UUO�` ������������ &0 cleanexcessbreaks cleanExcessBreaks�� ����� �  ���� 0 thetext theText��  � �������������� 0 thetext theText�� 0 i  �� 0 textends textEnds�� 0 j  �� 0 
textstarts 
textStarts�� 0 
thenewtext 
theNewText� ��%(����BZ������z
�� 
msng
�� 
cpar
�� .corecnte****       ****
�� 
ret 
�� 
txdl
�� 
ctxt�� ���  �Y hO��  �Y hO��-j k  �Y hO &��-j kih ��/� 
�E�OY h[OY��O &k��-j kh ��/� 
�E�OY h[OY��O�kv*�,FO�[�\[Z�\Z�2�&E�O�*�,FO�a ������������� .0 checkforothertemplate checkForOtherTemplate��  ��  � �������������������������� 0 thecount theCount�� (0 templatefolderlist templateFolderList�� 00 templatefoldernamelist templateFolderNameList�� 0 	thefolder 	theFolder�� 0 nextlistitem nextListItem�� 00 selectedtemplatefolder selectedTemplateFolder�� 00 templatefolderposition templateFolderPosition�� 20 existingtemplatefolders existingTemplateFolders�� 0 i  �� *0 oldtemplateprojects oldTemplateProjects�� 40 possibletemplateprojects possibleTemplateProjects�� 20 templatefolderisdropped templateFolderIsDropped� #��������������������������������������������
�� 
FCDo
�� 
FCff�  
�� 
pnam
�� .corecnte****       ****
�� 
kocl
�� 
cobj
�� 
ctnr
�� 
pcls
�� 
FCAr
�� 
appr
� 
prmp
� 
okbt
� 
mlsl� 
� .gtqpchltns    @   @ ns  � (0 selectionpositions selectionPositions
� 
leng
� 
FCHi
� 
FCfx
� 
FCPs
� FCPsFCPD
� FCPsFCPd�  �  
� 
FCno�����*�,�*�-�[�,\Z�@1j E�O�j  �*�-E�OjvE�O 6�[��l kh �E�O��,�,�  �E�Y hO���,%E�O��6F[OY��O���a a a a a ea  E�O�f  iY hO)��em+ E�OjvE�O k�a ,Ekh ��/�6F[OY��Y *�-�[�,\Za @1E�OjvE�OjvE�O �k�a ,Ekh ��/a ,e E�O a� 6�*a -�[[[�,\Z��/8\[a ,\Za 9A\[a ,\Za 9A1%E�Y %�*a -�[[�,\Z��/8\[a ,\Za 9A1%E�W X   h[OY��O -k�a ,Ekh ��/a !,a " ��/�6FY h[OY��UUO�b �������� 20 adjustoldtemplatesyntax adjustOldTemplateSyntax� ��� �  �� *0 oldtemplateprojects oldTemplateProjects�  � ����� *0 oldtemplateprojects oldTemplateProjects� 0 i  � 0 tempname tempName� 0 tempnote tempNote� �������������~�}Oe�
� 
FCDo
� 
leng
� 
cobj
� 
txdl
� 
pnam
� 
citm
� 
FCno
� 
TEXT
�~ 
FCft
�} .corecnte****       ****��*�, � �k��,Ekh ��/ ��)�,FO*�,E�O��-E�O*�,E�O��-E�Ob  )�,FO��&E�O��&E�O�)�,FO��-E�O��-E�O�)�,FO��&*�,FO��&*�,FO yk*�-j kh *�/ _�)�,FO*�,E�O��-E�O*�,E�O��-E�Ob  )�,FO��&E�O��&E�O�)�,FO��-E�O��-E�Oa )�,FO��&*�,FO��&*�,FU[OY��U[OY�Oa )�,FUUc �|��{�z���y�| 80 checkingfordateinformation checkingForDateInformation�{ �x��x �  �w�v�u�w 0 theitem theItem�v 0 thevariables theVariables�u "0 thereplacements theReplacements�z  � �t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�t 0 theitem theItem�s 0 thevariables theVariables�r "0 thereplacements theReplacements�q 0 thenote theNote�p "0 theoriginalnote theOriginalNote�o 0 
dueorstart 
dueOrStart�n 0 
askfordate 
askForDate�m &0 relativetoproject relativeToProject�l 0 datevariable dateVariable�k &0 thenoteparagraphs theNoteParagraphs�j 0 i  �i ,0 datevariableposition dateVariablePosition�h 0 classofitem classOfItem�g 0 displaytext displayText�f 0 	inputdate 	inputDate�e 0 	errortext 	errorText�d 0 errornumber errorNumber�c (0 possibledelimiters possibleDelimiters�b 0 tempdate tempDate�a "0 secondsdeferred secondsDeferred�` 0 desireddate desiredDate�_ 0 relativedate relativeDate� I�^�]�\�[�Z�Y�X�W���V���U%M�T�SZ�Re{}�Q�P��O��N�M�L��K�J��������I�H�G�F��E�D�C:�B�A�@������?�>�������
�^ 
FCDo
�] 
FCdw
�\ 
FCcn
�[ 
FCno
�Z 
null
�Y 
cpar
�X 
leng
�W 
cobj
�V 
bool
�U 
msng
�T 
pcls
�S 
FCac
�R 
FCpr
�Q 
quot
�P 
pnam
�O 
dtxt
�N .sysodlogaskr        TEXT
�M 
ttxt�L 0 	errortext 	errorText� �=�<�;
�= 
errn�< 0 errornumber errorNumber�;  �K���J $0 getridofdateinfo getRidOfDateInfo�I 
�H 
TEXT
�G 
txdl
�F 
citm�E 0 englishtime englishTime
�D .misccurdldt    ��� null
�C 
time
�B 
FCPr
�A 
FCDd
�@ 
FCDs�? �> 
0 notify  �y���*�,�*�k/�*�,���,E�O�EQ�O�E�OfE�OfE�OfE�O��-E�O 1k��,Ekh 
��/�
 
��/��& ��/E�OY h[OY��O�� �E�Y �� �E�Y hO��  a kvY9�a  eE�Y hO�a  eE�Y hO 'k��,Ekh 
���/ eE�O�E�OY h[OY��O� �a E�O�a ,a   
a E�Y �a ,a   
a E�Y hOa �%a %�%a %_ %�a ,%_ %a %E�O �a a  l !a ",E�W "X # $] a %  a )��l+ &lvY hY ^a 'a (a )a *a +a ,a -a .vE^ O� ��/a /&] 6FY hO] )a 0,FO�a 1-EQ^ Oa 2)a 0,FO] a /&E�O)�k+ 3E^ O] i  a )��l+ &lvY hO� �� &*j 4E^ Oj] a 5,FO] ] E^ OPY ��a ,a   a kvY hO�a 6  :�a 7,a 8,E^ O] a   a )��l+ &lvY hO] ] E^ Y =�a 7,a 9,E^ O] a   *j 4E^ Oj] a 5,FY hO] ] E^ Y ��/] E^ O�a ,a  ʥa : 	 �a 7,a 8,a �& f] *j 4 $)a ;a <�a ,%a =%b  
a >a ?+ @Y 5] �a 7,a 8, $)a Aa B�a ,%a C%b  
a Da ?+ @Y hY I�a 7,a 8,a  8] �a 7,a 8, $)a Ea F�a ,%a G%b  
a Ha ?+ @Y hY hY hO)��l+ &E�O] ��mvUUUUd �:#�9�8���7�: 0 englishtime englishTime�9 �6��6 �  �5�5 0 datedesired dateDesired�8  � "�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ��������������4 0 datedesired dateDesired�3 0 
monthfound 
monthFound�2 0 weekdayfound weekdayFound�1 &0 minuteleadingzero minuteLeadingZero�0 0 timemissing timeMissing�/ 0 daysmissing daysMissing�. 0 weeksmissing weeksMissing�-  0 timedelimiters timeDelimiters�, 0 daydelimiters dayDelimiters�+  0 weekdelimiters weekDelimiters�* "0 monthdelimiters monthDelimiters�) &0 weekdaydelimiters weekdayDelimiters�( <0 specialrelativedaydelimiters specialRelativeDayDelimiters�' "0 otherdelimiters otherDelimiters�& 0 inthe inThe�% 00 howmanynumbersinputted howManyNumbersInputted�$ 0 numlist numList�# 0 
checkinput 
checkInput�" &0 checkinputcleaned checkInputCleaned�! 0 i  �  0 thedatecheck theDateCheck� 0 
todaysdate 
todaysDate� 0 
targetdate 
targetDate� 0 thetime theTime� &0 timestorelocation timeStoreLocation� 0 tempnum tempNum� 0 	inputlist 	inputList� 0 tempitem tempItem� 0 weeksdeferred weeksDeferred� 0 daysdeferred daysDeferred� $0 timedeferredtemp timeDeferredTemp� 0 timedeferred timeDeferred� &0 totaltimedeferred totalTimeDeferred� 60 timefromtodayuntildesired timeFromTodayUntilDesired� U-dhlps�|����������������������������� /�4=B����k���
��	�������������� ��)W������'��������� � � � (0 isnumberidentifier isNumberIdentifier
� 
txdl
� 
citm
� 
leng
� 
cobj
�
 
bool
�	 .misccurdldt    ��� null
� 
time� 00 understandabsolutedate understandAbsoluteDate
� 
nmbr�  �  � $0 figureoutthetime figureOutTheTime� &0 understandthetime understandTheTime
� 
cha 
�  
long
�� 
pcls
�� 
rvse�� 0 howmanydays howManyDays
�� 
days
�� 
week�� 00 daysfromtodaytoweekday daysFromTodayToWeekday�� 40 figuringtimetodesiredday figuringTimeToDesiredDay�7���  jY hOjE�OjE�OfE�OfE�OfE�OfE�O������vE�O���mvE�O���mvE�O���a a a a a a a a a a vE�Oa a a a a a a  a !vE�Oa "a #a $mvE�Oa %a &a 'a (a )�vE�Oa *E�OjE�OjvE^ O*a +�l+ , 
a -E�Y hO*a .�l+ , 
a /E�Y hO��%�%)a 0,FO�a 1-E^ OjvE^ O 9k] a 2,Ekh ] a 3] /a 4 ] a 3] /] 6FY h[OY��O�] a 3k/E^ O] a 5
 ] a 6a 7&
 ] a 8a 7&M*j 9E^ Oj] a :,FO)] k+ ;E^ O] i  iY hOa <)a 0,FO] a 2,k  ] ] a =&Y �] [a 3\[Zl\Zi2E^ OjvE^ O] a 2,E^ O �h] j �] jv 	 ] a 3] /a >a 7& 3] a 3] k/] a 3] /%a =&] 6FOeE�O] lE^ Y 3] a 3] /a =&E^ O] j ] ] 6FY hO] kE^ W X ? @h[OY�kO*] fee��+ AE^ O*] �fm+ BE^ O] ] ] a =&Y hW X ? @hO Rk�a 2,Ekh ��a 3] / ] E�OY hO] �a 2, ��a 3] / 
] E�Y hY h[OY��O��%�%�%�%�%*a 0,FO�a 1-E^ Oa Ckv*a 0,FO jk] a 2,Ekh ] a 3] /a D 	 a E] a 3] k/a Fk/a 7& )] a 3] /] a 3] k/%] a 3] k/FY h[OY��O hk] a 2,Ekh ] a 3] /a G ; /] a 3] /a H&E^ O] a I,a H  
�kE�Y hW X ? @hY hOa JE^ [OY��O] a 2,E^ O �h] j �] jv 	 ] a 3] /a Ka 7& 3] a 3] k/] a 3] /%a =&] 6FOeE�O] lE^ Y G ] a 3] /a =&E^ W X ? @] kE^ O] j ] ] 6FY hO] kE^ W X ? @h[OY�WO] a L,E^ O�j 	 	�j a 7& Р 7)a M*l+ ,E�O)a N*l+ ,E�O��a H&�a H&j  eE�Y hUO� ] a 3k/E^ Y jE^ O� *] �l+ OE^ Y �a P 
kE^ Y jE^ O*] �����+ AE^ O*] ��m+ BE^ O] j ] ] _ Q ] _ R E^  Y 	] E^  OPY ٢j	 	�j a 7& e] a 2,k eE�Y hO*] �ee��+ AE^ O*] ��m+ BE^ O*�k+ SE^ O] j ] _ Q ] E^  Y 	] E^  Y f] a 2,l eE�Y hO*] �fe��+ AE^ O*] ��m+ BE^ O*�] a 3k/l+ TE^ !O] j ] !] E^  Y 	] E^  O]  OPe ������������ (0 isnumberidentifier isNumberIdentifier�� ����� �  ������ (0 possibleidentifier possibleIdentifier�� "0 containerstring containerString��  � ������������������ (0 possibleidentifier possibleIdentifier�� "0 containerstring containerString�� $0 numberidentifier numberIdentifier�� 20 identifierisincontainer identifierIsInContainer�� 40 positionoflastidentifier positionOfLastIdentifier�� 0 charlist charList�� 0 i  �� "0 characterbefore characterBefore� 	��������������v��
�� 
cha 
�� 
leng
�� 
cobj
�� 
bool
�� 
long��  ��  
�� 
pcls�� �eE�OfE�OjE�O��-E�O %k��,Ekh ��/�  eE�O�E�Y h[OY��O�j 
 �k �& fE�Y 4��k/E�O 
��&E�W X  hO��	 	��,��& fE�Y hO�f ������������� 0 howmanydays howManyDays�� ����� �  ������ 0 numlist numList�� 0 weeksmissing weeksMissing��  � �������� 0 numlist numList�� 0 weeksmissing weeksMissing�� 0 daysdeferred daysDeferred� ��
�� 
cobj�� � ��l/E�Y ��k/E�O�g ������������� $0 figureoutthetime figureOutTheTime�� ����� �  ������������ 0 numlist numList�� 0 timemissing timeMissing�� 0 daysmissing daysMissing�� 0 weeksmissing weeksMissing�� &0 minuteleadingzero minuteLeadingZero��  � �������������� 0 numlist numList�� 0 timemissing timeMissing�� 0 daysmissing daysMissing�� 0 weeksmissing weeksMissing�� &0 minuteleadingzero minuteLeadingZero�� $0 timedeferredtemp timeDeferredTemp� ���������
�� 
cobj
�� 
txdl
�� 
long
�� 
ctxt�� =� 3� ��i/E�Y #�*�,FO�[�\[Zi\Zk��&��&2�&�&E�Y jE�O�h ������������ &0 understandthetime understandTheTime�� ��� �  ���� $0 timedeferredtemp timeDeferredTemp� 0 inthe inThe� 0 timemissing timeMissing��  � ������� $0 timedeferredtemp timeDeferredTemp� 0 inthe inThe� 0 timemissing timeMissing� 0 timedeferred timeDeferred� "0 minutesdeferred minutesDeferred� 0 hoursdeferred hoursDeferred� ���������d����������	`
� .sysodisAaleR        TEXT
� 
days� d
� 
ctxt
� 
cha ���
� 
long���� 
� 
hour
� 
min 
� 
bool� � �� jE�Y �� �j OiE�OPY ߠ�  
�E�OPY Ѡ� b��&[�\[Z�\Zi2�&�&E�O��&[�\[Zk\Z�2�&�&E�O��  ��� �� E�Y !�� 	 �� �& 
�� E�Y �� �� E�OPY k�a  a j OiE�OPY S�a  J�a   �E�Y 9�� 	 	�a �& 
�� E�Y !��
 	�a �& 
�� E�Y 	��� E�Y hO�i ������� 40 figuringtimetodesiredday figuringTimeToDesiredDay� ��� �  ��� 0 monthdesired monthDesired� 0 
daydesired 
dayDesired�  � ����� 0 monthdesired monthDesired� 0 
daydesired 
dayDesired� 0 
todaysdate 
todaysDate� $0 exactdesireddate exactDesiredDate� �����
� .misccurdldt    ��� null
� 
time
� 
day 
� 
mnth
� 
year� <*j  E�Oj��,FO�EQ�O���,FO���,FO�*j   ��,k��,FY hO��j �_������ 00 daysfromtodaytoweekday daysFromTodayToWeekday� ��� �  ��  0 weekdaydesired weekdayDesired�  � ����  0 weekdaydesired weekdayDesired�  0 currentweekday currentWeekday� 0 daysdeferred daysDeferred� ����
� .misccurdldt    ��� null
� 
wkdy
� 
long� � 1*j  �,�&E�O��  jE�Y �� 
��E�Y 	��E�O�k �������� 00 understandabsolutedate understandAbsoluteDate� ��� �  �� 0 thetext theText�  � ������ 0 thetext theText� 0 thedate theDate� 0 thepositions thePositions� 0 i  � 0 
targetdate 
targetDate� �~�}�|�{�z��������y�x�w�v�u�t�s�r�q��p�o�n�m�l�k
�~ .misccurdldt    ��� null
�} 
day 
�| 
mnth
�{ 
days
�z 
shdt�y 
�x 
txdl
�w 
citm�v 0 theday theDay�u 0 themonth theMonth�t 0 theyear theYear�s 
�r 
leng
�q 
cobj
�p 
time
�o 
bool
�n 
nmbr�m 0 solvetheyear solveTheYear
�l 
year�k 40 adjustpositionsfornoyear adjustPositionsForNoYear�;*j  E�Ok��,FOl��,FO�k� E�O��,E�O��������v*�,FO��-E�O�ja ja ja E�O Fk�a ,Ekh �a �/ +a * ��a ,FY a * 
���,FY 	��a ,FU[OY��O��-E�O*j  E�Oj�a ,FO�a ,l	 �a ,ma & iY w�a ,m  *�a �a ,E/a &k+ �a ,FY 
*�k+ E�O�a �a ,E/a &��,FO�a ��,E/a &��,FO�*j   *j  a ,k�a ,FY hO�l �j��i�h���g�j 40 adjustpositionsfornoyear adjustPositionsForNoYear�i �f��f �  �e�e 0 thepositions thePositions�h  � �d�c�d 0 thepositions thePositions�c 0 yearposition yearPosition� �b�a�`�b 0 theyear theYear�a 0 themonth theMonth�` 0 theday theDay�g K��,k  ��,k��,FO��,k��,FY +�l  $��,��, ��,k��,FY ��,k��,FY hO�m �_��^�]���\�_ 0 solvetheyear solveTheYear�^ �[��[ �  �Z�Z 0 num  �]  � �Y�Y 0 num  � �X�W�X��W��\ �� �Y �n �V�U�T���S�V 
0 notify  �U �R��R �  �Q�P�O�N�Q 0 thetitle theTitle�P  0 thedescription theDescription�O 0 thetype theType�N 0 theurl theURL�T  � �M�L�K�J�I�M 0 thetitle theTitle�L  0 thedescription theDescription�K 0 thetype theType�J 0 theurl theURL�I 0 	isrunning 	isRunning� *�H��G(�FU�E�D�C�B�A�@�?�>�=�<�;�:�9
�H 
prcs
�G 
bnid
�F .corecnte****       ****
�E 
appl
�D 
anot
�C 
dnot
�B 
iapp�A 
�@ .registernull��� ��� null
�? 
leng
�> 
name
�= 
titl
�< 
desc
�; .notifygrnull��� ��� null
�: 
curl�9 
�S }� *�-�[�,\Z�81j jE�UO� _� W*�b  �b  �b  �b  � O��,j  *���b  a �� Y *���b  a �a �a  UY ho �8[�7�6���5�8  0 attachmentlist attachmentList�7 �4��4 �  �3�2�3 0 theid theID�2 0 theclass theClass�6  � �1�0�/�.�-�1 0 theid theID�0 0 theclass theClass�/ &0 theattachmentlist theAttachmentList�. ,0 numberoffileattached NumberOfFileAttached�- 0 i  � ��,p�+�*�)y�(�'�&�%��$
�, 
docu
�+ 
FCac
�* kfrmID  
�) 
FCno
�( 
OSfA
�' 
OSin
�& 
atfn
�% 
TEXT
�$ 
FCpr�5 �jvE�O��k/ ���  E*��0�, 7�E�OkE�O ,h��*�/�,e *�/�,�&�6FY hO�kE�[OY��UY hO��  E*��0�, 7�E�OkE�O ,h��*�/�,e *�/�,�&�6FY hO�kE�[OY��UY hUO�p �#��"�!��� �# $0 getridofdateinfo getRidOfDateInfo�" ��� �  ��� "0 theoriginalnote theOriginalNote� 0 
dueorstart 
dueOrStart�!  � ������� "0 theoriginalnote theOriginalNote� 0 
dueorstart 
dueOrStart� 0 numparagraphs numParagraphs� 0 i  � 0 datespot dateSpot� 0 thenote theNote� 	�������P
� 
cpar
� 
leng
� 
ret 
� 
txdl
� .corecnte****       ****
� 
TEXT����  ���-�,E�O  k�kh ��/� 
�E�OY h[OY��O�kv)�,FO�k  &��-j k  �E�Y �[�\[Zl\Zi2�&E�Y 9��  �[�\[Zk\Z�2�&E�Y !�[�\[Zk\Z�k2�[�\[Z�k\Zi2%�&E�O�)�,FO�q �������
� .aevtoappnull  �   � ****� k    	��  {��  �  �  � �
�	����
 0 	errortext 	errorText�	 0 errornumber errorNumber� 0 	thefolder 	theFolder� 0 
theproject 
theProject� 0 i  � �z���� �� � �� �������� ��� ��� ������������� �����������������������+��D��H��K����������������������������������������������������8<@DHK������Y��m�����������������������!9��F�Q`w}�������������������?��KOX�fjo���������B�bnr
� 
FCDo� .0 checkforothertemplate checkForOtherTemplate� :0 othertemplatescriptprojects otherTemplateScriptProjects
� 
leng
� 
btns
�  
dflt�� 
�� .sysodlogaskr        TEXT
�� 
bhit�� (0 changeoldtemplates changeOldTemplates�� 20 adjustoldtemplatesyntax adjustOldTemplateSyntax
�� 
dtxt
�� 
ttxt�� 0 	errortext 	errorText� ���
� 
errn� 0 errornumber errorNumber�  ����
�� 
FCff
�� 
pnam
�� .corecnte****       ****�� 0 thecount theCount
�� 
FCHi�� (0 templatefolderlist templateFolderList�� 00 templatefoldernamelist templateFolderNameList
�� 
kocl
�� 
cobj�� 0 nextlistitem nextListItem
�� 
ctnr
�� 
pcls
�� 
FCAr
�� 
appr
�� 
prmp
�� 
okbt�� 
�� .gtqpchltns    @   @ ns  �� 00 selectedtemplatefolder selectedTemplateFolder�� (0 selectionpositions selectionPositions�� 00 templatefolderposition templateFolderPosition
�� 
null
�� 
FCfx
�� 
FCPs
�� FCPsFCPD
�� FCPsFCPd�� 0 projectlist projectList�� "0 projectnamelist projectNameList
�� .sysodisAaleR        TEXT�� "0 chooselisttitle chooseListTitle��  0 chooselisttext chooseListText�� 0 chooselistok chooseListOK�� "0 selectedproject selectedProject�� "0 projectposition projectPosition�� 20 selectedprojecttemplate selectedProjectTemplate�� (0 defaultfolderfound defaultFolderFound
�� 
FCno�� "0 parawithpointer paraWithPointer
�� 
cpar�� 0 folderpointer folderPointer
�� 
txdl
�� 
citm�� 0 newfoldertext newFolderText�� &0 cleanedfoldertext cleanedFolderText
�� 
TEXT�� 00 selectedfoldertemplate selectedFolderTemplate�� 0 containfolder containFolder������  ��  �� $0 findthevariables findTheVariables�� 0 thevariables theVariables�� 00 thelistvariableoptions theListVariableOptions�� 0 justduplicate justDuplicate
�� 
quot
� 
FCHe� 0 
folderlist 
folderList�  0 foldernamelist folderNameList�  0 selectedfolder selectedFolder�  0 folderposition folderPosition
� 
insh
� 
FCpr
� 
insl
� .coreclon****      � ****� (0 newprojectinstance newProjectInstance� 
0 notify  � $0 populatetemplate populateTemplate
� FCPsFCPh
� 
bool
� FCPsFCPa
� 
ID  � 0 theurl theURL
� .OFOCFCsynull���     obj � *0 findthereplacements findTheReplacements� "0 thereplacements theReplacements
� 
rslt� 0 tempnote tempNote
� 
ret � 0 newnote newNote�  0 theattachments theAttachments�	�	*�,	b   �)j+ E�O�i  hY hO��,j &����lv�l� �,E�O��  )�k+ Y hY hO a a a l a ,Ec  W X  �a   hY hOfEc  Y hO*a -a [a ,\Za @1j E` O*a -a [a ,\Za @1j j  �*a -a [a ,\Zf81E` OjvE`  O T_ [a !a "l kh a #E` $O�a %,a &,a '  a (E` $Y hO_ $�a ,%E` $O_ $_  6F[OY��O_  a )a *a +a ,a -a .a / 0E` 1O_ 1f  hY hO)_ 1_  fm+ 2E` 3O_ a "_ 3/Ec  Y a 4Ec  Ob  a 4  =*a 5-a [[[a ',a ,\Za 6@\[a 7,\Za 89A\[a 7,\Za 99A1E` :Y 8*a 5-a [[[a ',\Zb  8\[a 7,\Za 89A\[a 7,\Za 99A1E` :OjvE` ;O $_ :[a !a "l kh �a ,_ ;6F[OY��O_ ;�,j  a <j =OhY hOa >E` ?Oa @E` AOa BE` CO_ ;a )_ ?a +_ Aa -_ Ca / 0E` DO_ Df  hY hO)_ D_ ;fm+ 2E` EO_ :a "_ E/E` FOfE` GO_ Fa H,b  qkE` IO :_ Fa H,a J-j kih _ Fa H,a J�/b   
�E` IY h[OY��O_ Fa H,a J_ I/E` KOa La Ma Na Oa Pa Qa /v)a R,FO_ Ka S-E` TOa U)a R,FOjvE` VO <k_ T�,Ekh _ Ta "�/a W _ Ta "�/a X&a Jk/_ V6FY h[OY��O �_ V�,k  #*a k/a [a ,\Z_ Va "k/81E` YY d*a -a [a ,\Z_ Va "i/81E�O Ek��,Ekh �a "�/a %,E` ZO_ Za ,_ Va "a [/  �a "�/E` YOY h[OY��OeE` GW X \ ]hY hO)_ Fk+ ^a "k/E` _O)_ Fk+ ^a "l/E` `Oa aE` bO_ _�,j  Da c_ d%b  %a e%_ d%a f%�a ga hlv�l� =�,E` bO_ ba i hY hY hO_ G*a -a [[a ,\Za j@C\[a k,\Zf8A1E` lOa mkvE` nO T_ l[a !a "l kh a oE` $O�a %,a &,a '  a pE` $Y hO_ $�a ,%E` $O_ $_ n6F[OY��Oa qE` ?Oa rE` AOa sE` CO_ na )_ ?a +_ Aa -_ Ca / 0E` tO_ tf  hY 9_ ta ukv  a vE` YY #)_ t_ nfm+ 2kE` wO_ la "_ w/E` YY hO_ ba x _ Ya y  ?b   a z  _ Fa {*a |-a }3l ~E` Y _ Fa {*a |-6l ~E` Y @b   a �  _ Fa {_ Ya |-a }3l ~E` Y _ Fa {_ Ya |-6l ~E` O)a �a �b  a ��+ �O)_ jvjvm+ �O_ a 7,a � 
 _ a 7,a 8 a �& a �_ a 7,FY hOa �_ a �,%E` �O)a �a �b  	_ ��+ �Oa �E` bO 
*j �W X \ ]hOhY hO)a �a �b  a ��+ �O)_ __ `l+ �E` �O_ �f  hY hO_ Ya �  ?b   a �  _ Fa {*a |-a }3l ~E` Y _ Fa {*a |-6l ~E` Y @b   a �  _ Fa {_ Ya |-a }3l ~E` Y _ Fa {_ Ya |-6l ~E` O_ a 7,a �  a �_ a 7,FY hO_ G �_ a H,EQ` �O 8_ Fa H,a J-j kih _ �a J�/b   
�E` IY hO[OY��O_ �kv)a R,FO_ Ik  _ �[a J\[Zl\Zi2a X&E` �Y c_ I_ Fa H,a J-j   _ �[a J\[Zk\Za [2a X&E` �Y 1_ �[a J\[Zk\Z_ Ik2_ �[a J\[Z_ Ik\Zi2%a X&E` �Oa �)a R,FO_ �_ a H,FY hO)_ _ __ �m+ �E` �Oa �_ a �,%E` �O)a �a �b  	_ ��+ �O 
*j �W X \ ]hUUascr  ��ޭ