# LAZARUS IDE

### HOW TO CREATE A TODO COMMENTS
```
procedure TForm1.FormCreate(Sender: TObject);
begin
  //TODO: implement this funcion.
end;   
```
Is possible to see To Do comments in window  
View -> ToDo List  

### THE SUGGEST WAY TO NAME COMPONENTS
```
act	TActionList, TAction
amt	TAnimate
bev	TBevel
btm	TBatchMove
btn	TButton, TSpeedButton, TBitBtn
cbr	TCoolBar
chk	TCheckBox, TDBCheckBox
cht	TChart, TDBChart, TQRChart
clg	TColorDialog
cmb	TComboBox, TDBComboBox, TDBLookUpComboBox
ctb	TControlBar
dcc	TDdeClientConv
dci	TDdeClientItem
dlg	TOpenDialog, TSaveDialog
dsc	TDataSource
dsc	TDdeServerConv
dsi	TDdeServerItem
dtb	TDatabase
dtp	TDateTimePicker
edt	TEdit, TMaskEdit
flg	TFontDialog
frm	TForm
grd	TStringGrid, TDrawGrid, TDBGrid, TDBCtrlGrid
grp	TGroupBox, TRadioGroup, TDBRadioGroup
hdc	THeaderControl
htk	THotKey
ilg	TOpenPictureDialog, TSavePictureDialog
img	TImage, TDBImage, TImageList, TQRImage, TQRDBImage
lbl	TLabel, TQRLabel
lst	TListBox, TDBListBox, TCheckListBox, TDBLookUpListBox
lvw	TListView
mcd	TMonthCalendar
mem	TMemo, TDBMemo, TQRMemo, TQRExprMemo
mpl	TMediaPlayer
ntb	TNestedTable
nvg	TDBNavigator
ole	TOleContainer
pgb	TProgressBar, TGauge
pgc	TPageControl
pgs	TPageScroller
plg	TPrintDialog, TPrinterSetupDialog
pnb	TPaintBox
pnl	TPanel
qcr	TQRCompositeReport
qcs	TQRCSVFilter
qex	TQRExpr
qht	TQRHTMLFilter
qpw	TQRPreview
qrb	TQRBand, TQRChildBand
qrg	TQRGroup
qrp	TQuickReport
qry	TQuery
qsb	TQRStringsBand
qsd	TQRSubDetail
qsy	TQRSysData
qtf	TQRTextFilter
rch	TRichEdit, TDBRichEdit, TQRRichText, TQRDBRichText
rdb	TRadioButton
scb	TScrollBar
ses	TSession
shp	TShape, TQRShape
spl	TSplitter
spn	TSpinEdit
srl	TScrollBox
stb	TStatusBar
stp	TStoredProc
tbc	TTabControl
tbl	TTable
tbr	TToolBar
tkb	TTrackBar
tlg	TFindDialog, TReplaceDialog
tmr	TTimer
tvw	TTreeView
txt	TStaticText, TDBText, TQRBText
udn	TUpDown
ups	TUpdateSQL
``` 

## FILE STRUCTURE

### .pas FILE
```pascal
unit <UnitName>;  -> Same name as the unit file when saved

{$mode objfpc}{$H+} -> Compilation directive automatically inserted by the IDE

interface  -> Start of the interface section

uses    
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs;
    -> References classes and/or libraries required for compiling this Unit

type
  TForm1 = class(TForm) -> Below are the objects and methods inside the Form1 container

  private -> Anything declared inside the private clause is only available to this Unit

  public -> Anything declared inside the public clause is available to other Units

  end;

var
  Form1: TForm1;
    -> Global scope variables and objects for the form 

implementation  -> Start of the implementation section

uses
    unitAuxiliar;  -> References external forms and libraries used for implementing 
                    the form. Also used to avoid circular reference errors.

{$R *.lfm} -> Configuration directive automatically inserted by the IDE

end.

```

---

## OPERATORS

### COMPARISON

* `>` : greater than
* `<` : less than
* `>=` : greater than or equal to
* `<=` : less than or equal to
* `=` : equality (comparison)
* `<>` : not equal to

### ARITHMETIC

* `+` : addition
* `-` : subtraction
* `*` : multiplication
* `/` : division
* `div` : integer division
* `mod` : returns the remainder of a division

### LOGICAL

* `AND` : logical "and"
* `OR` : logical "or"
* `NOT` : logical "not" (inversion operator)
* `XOR` : exclusive or

### ASSIGNMENT OPERATORS

* `:=` : assigns a value to a variable

---

## STATEMENTS

### CONDITIONAL STATEMENTS

#### IF

`if-statement = if Boolean-expression then statement [ else-part ] .`

**Examples:**

```pascal
if x < 1.5 then z := x + y else z := 1.5

if (condition) then
  begin
    A := 3;
    B := 5;
  end
else
  begin
    A := 1;
    B := 7;
end;

```

#### CASE

`case-statement = case expression of case-list-element { ; case-list-element } [ ; ] end .`

`case-list-element = case-constant-list : statement .`

**Example:**

```pascal
case combobox1.ItemIndex of 
  0 :
    begin 
      Label1.caption := 'OPTION1'; 
      Label2.caption := 'OPTION2'; 
    end; 
  1 : 
    begin 
      Label1.caption := 'TEST1'; 
      Label2.caption := 'TEST2'; 
    end; 
end; 

```

### LOOP STATEMENTS

#### WHILE

**Example:**

```pascal
While (a < 5) Do
begin
  label1.Caption := 'a';
  a := a + 1;
end; 

```

#### FOR

`for-statement = for control-variable := initial-value ( to | downto ) final-value do statement .`

**Example:**

```pascal
For cont := 1 To 100 Do { Repeats the block 100 times }
begin
  x := x + cont;
  Label4.caption := IntToStr(x);
end; 

```

---

## FUNCTIONS AND PROCEDURES

### FUNCTION

**Example:**

```pascal
function <name>(<parameters>): <output_type>
function somar(A: integer; B: integer): integer;

```

### PROCEDURE

```pascal
procedure <name>(<parameters>);

```

**Example:**

```pascal
procedure limpar(executar: boolean);

```

---

## OTHERS

### SHORTCUT KEYS

* **Ctrl + Space** : Activates the object's autocomplete list (methods and properties) -> CodeTools commands -> Identifier completion.
* **Ctrl + Shift + C** : Creates a function or a procedure in the code.
* *Ex:* Declare a function or procedure in `private` or `public` and use the shortcut on the same line. The implementation stub will be created at the end of the file.


```pascal
private
function somar(A: integer; B: integer): integer; (Ctrl + Shift + C)          

```



> Note: Shortcut keys can be customized via **Tools -> Options -> Editor -> Key Mappings**.

```

```

## CLASSES AND OOP IN LAZARUS

## FILE STRUCTURE

### CLASS FILE (.pas)
```pascal
unit cPessoa; --> Name of the file containing the class

{$mode objfpc}{$H+} --> Compiler directive

interface --> Start of the interface section

uses
  Classes, SysUtils; --> Libraries required for compiling the class

type TPessoa = class  --> Class name and superclass type
 
  private    --> Private attributes and methods, can only be accessed within the class
    Fnome:  String;  --> Variables for internal class use (Fields)   
    Fidade: Integer;     Not accessed directly by the programmer

  protected  --> Protected attributes and methods, can only be accessed by the class
                 and its child classes.

  Public   --> Public methods. Properties and methods declared under public 
               are available to the class and its instances (objects) 
    constructor Create(nome: string); --> Constructor
    destructor Destroy; override;   --> Destructor
    function saberIdade(qtdAnos: Integer): Integer; --> Method

    property nome   :String  read Fnome   write Fnome; --> Properties
    property idade  :Integer read Fidade  write Fidade;

  Published --> Declared methods and properties are identical to those 
                declared under 'Public' and become available in the 
                object inspector (when creating components)

end;

implementation  --> Start of the implementation section

constructor TPessoa.Create(nome: string);  --> Constructor method
begin
  Fnome := nome;
end;

destructor TPessoa.Destroy; --> Destructor method
begin
  inherited;
end;

function TPessoa.saberIdade(qtdAnos: Integer): Integer; --> Method
begin
  Result := Fidade + qtdAnos;
end;

end.

```

---

## DECLARATION AND INHERITANCE

By convention, class names are always prefixed with an uppercase letter **'T'**. Class declaration is done after the `type` clause. Example:

```pascal
type 
  TPessoa = class

```

Notice that there is no class inheritance information specified. If omitted, the class will inherit from `TObject` by default. If inheritance from another class is required, the superclass must be specified as follows:

```pascal
type 
  <child_class_name> = class(<parent_class_name>)

```

It is possible to access parent class methods and properties by using the reserved word `inherited` <method_name>.

---

## PROPERTIES AND METHODS

Following good programming practices, internal class variables should not be accessed directly, which is why they are declared under the `private` clause. Those that need to be accessed by the object are either encapsulated as properties using the `property` keyword or wrapped by `get` and `set` methods.

Example of an internal class variable:

```pascal
private     
  Fnome: String;    

```

Property declaration syntax:

```pascal
property <property_name>: <property_type> 
  read <get_variable_method> write <set_variable_method>;

```

Property declaration example:

```pascal
property nome: String read Fnome write Fnome;

```

Notice that the `nome` property reads and writes to the internal variable `Fnome`. The property must be of the same type as the internal variable. It can also be read-only or read/write.

### STATIC AND DYNAMIC METHODS (Polymorphism)

Static methods are those whose behavior cannot be altered by child classes, whereas dynamic methods can be overridden (`override`). By default, methods are static.

Syntax for declaring dynamic methods:

```pascal
function/procedure <name>(<attributes>): <return_type>; virtual;

```

Example:

```pascal
function saberIdade(qtdAnos: Integer): Integer; virtual;

```

To override a method in child classes, use the following syntax:

```pascal
function/procedure <name>(<attributes>): <return_type>; override; 

```

Example:

```pascal
function saberIdade(qtdAnos: Integer): Integer; override;

```

A new method with the same name is then created inside the child class containing the new method code, thus altering its behavior.

It is possible to declare multiple methods with the same name, differentiated only by their parameters. To do this, use the `overload` keyword.
Examples:

```pascal
procedure Idioma; overload;
procedure Idioma(tipo: string); overload;
procedure Idioma(tipo: string, nivel: integer); overload;

```

---

## OBJECT INSTANTIATION

The Unit file containing the class must be declared in the `uses` clause of the Unit containing the instantiated object. Both declaration and instantiation can be performed within local scope. This helps with memory cleanup when the object is destroyed.

Declaration syntax: `var <object_name>: <Class_Type>`
Example of declaration:

```pascal
var
  obj: TPessoa;

```

Syntax for object instantiation:

```pascal
<object_name> := <class_name>.Create(<constructor_parameters>);

```

In some cases, passing parameters to the constructor method may not be necessary.
Example:

```pascal
  obj := TPessoa.Create('Leandro');

```

Object Destruction: To release the object from memory, use the syntax:

```pascal
<object_name>.Free;

```

Example:

```pascal
  obj.Free;

```

```

```
