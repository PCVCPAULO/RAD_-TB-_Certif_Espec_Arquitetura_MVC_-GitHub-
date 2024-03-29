unit Menus.Controller.ListBox.Factory;

interface

uses Menus.Controller.Interfaces, System.Classes,
  Menus.Controller.ListBox.Default;

type
  TControllerListBoxFactory = class(TInterfacedObject, iControllerListBoxFactory)
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxFactory;
    function Default(Container: TComponent) : iControllerListBoxDefault;
    function Principal(Container: TComponent) : iControllerListBoxMenu;
    function Produtos(Container: TComponent) : iControllerListBoxMenu;
    function Clientes(Container: TComponent) : iControllerListBoxMenu;
  end;

implementation

{ TControllerListBoxFactory }

uses Menus.Controller.ListBox.Principal, Menus.Controller.ListBox.Itens.Factory;

function TControllerListBoxFactory.Clientes(
  Container: TComponent): iControllerListBoxMenu;
begin
//  Result := TControllerListBoxClientes.New(Container);
end;

constructor TControllerListBoxFactory.Create;
begin

end;

function TControllerListBoxFactory.Default(
  Container: TComponent): iControllerListBoxDefault;
begin
  Result := TControllerListBoxDefault.New(Container);
end;

destructor TControllerListBoxFactory.Destroy;
begin

  inherited;
end;

class function TControllerListBoxFactory.New: iControllerListBoxFactory;
begin
  Result := Self.Create;
end;

function TControllerListBoxFactory.Principal(
  Container: TComponent): iControllerListBoxMenu;
begin
  Result := TControllerListBoxPrincipal.Create(Container);
end;

function TControllerListBoxFactory.Produtos(
  Container: TComponent): iControllerListBoxMenu;
begin
//  Result := TControllerListBoxProdutos.New(Container);
end;

end.
