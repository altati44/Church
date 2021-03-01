program Church;
//Principal in 'Principal.pas' {Form1},
uses
  Forms,
  Principal in 'Principal.pas' {Form1},
  UnitSplash in 'UnitSplash.pas' {FormSplash},
  UnitCheckKey in 'UnitCheckKey.pas' {FormCheckKey};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Church - lasptaniSoft';
  //'''''''''''''''''''''''''''
  with TformSplash.Create(nil) do
  try
    Show;
    Update; // Fuerza que se muestre formSplash
  //'''''''''''''''''''''''''''
  //Application.HelpFile := 'HelpChurch.hlp';

  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormCheckKey, FormCheckKey);
  finally
    hide;
    free;
  end;
  Application.ShowMainForm:=false;
  Application.Run;
end.

