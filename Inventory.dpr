program Inventory;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  intemplate in 'intemplate.pas' {intemplateForm},
  injns in 'injns.pas' {injnsForm},
  ingol in 'ingol.pas' {ingolForm},
  inmrk in 'inmrk.pas' {inmrkForm},
  insize in 'insize.pas' {insizeForm},
  inwrn in 'inwrn.pas' {inwrnForm},
  inkualitas in 'inkualitas.pas' {inkualitasForm},
  inmotif in 'inmotif.pas' {inmotifForm},
  DModul in 'DModul.pas' {MastData: TDataModule},
  mylib in 'mylib.pas',
  searchtemplate in 'searchtemplate.pas' {SearchTempleteForm},
  inbrg in 'inbrg.pas' {inbrgform},
  infTemplate in 'infTemplate.pas' {inftemplateForm},
  infbrg in 'infbrg.pas' {infbrgForm},
  fsearch in 'fsearch.pas' {fsearchForm},
  fsearchjenis in 'fsearchjenis.pas' {fsearchjenisform},
  infbrgg in 'infbrgg.pas' {infbrggform},
  inbrgg in 'inbrgg.pas' {inbrggform},
  ingdg in 'ingdg.pas' {ingdgform},
  inkbrg in 'inkbrg.pas' {inkbrgform},
  infkbrg in 'infkbrg.pas' {infkbrgform},
  apval in 'apval.pas' {apvalform},
  apsup in 'apsup.pas' {apsupForm},
  apfsup in 'apfsup.pas' {apfsupform},
  arval in 'arval.pas' {arvalform},
  arwil in 'arwil.pas' {arwilform},
  arsales in 'arsales.pas' {arsalesform},
  arfsales in 'arfsales.pas' {arfsalesform},
  armhrg in 'armhrg.pas' {armhrgForm},
  arfmhrg in 'arfmhrg.pas' {arfmhrgform},
  arcust in 'arcust.pas' {arcustForm},
  arfcust in 'arfcust.pas' {arfcustForm},
  arhrgj in 'arhrgj.pas' {arhrgjform},
  arfhrgj in 'arfhrgj.pas' {arfhrgjform},
  arphrgj in 'arphrgj.pas' {arphrgjform},
  arkhrgj in 'arkhrgj.pas' {arkhrgjform};

{$R *.res}

begin
  Application.Initialize;
  IF CekMysql = True Then
  begin
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TMastData, MastData);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
  end;
end.
