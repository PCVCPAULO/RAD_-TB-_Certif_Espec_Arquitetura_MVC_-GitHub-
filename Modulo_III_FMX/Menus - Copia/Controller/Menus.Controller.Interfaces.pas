unit Menus.Controller.Interfaces;

interface

uses
  System.Classes, FMX.Types;

type
    iControllerListBoxItensDefault = interface;
    iControllerListBoxDefault = interface;

    iControllerListBoxItemForm = interface
      ['{A3AB51B7-D7CA-4DC5-9C22-7969F18C9367}']
      function Show : TFmxObject;
    end;

    iControllerListBoxMenu = interface
      ['{C32A46FA-BDF9-4812-91EC-4C8ABF917E82}']
      procedure Exibir;
    end;

     iControllerListBoxButtonProduto = interface
        ['{53EE2085-FAF7-49CC-96E0-26B881B023E9}']
     end;

    iControllerListBoxItensFactory = interface
     ['{CE2D75AF-094E-4A5C-A563-92E9409D1807}']
     function Default : iControllerListBoxItensDefault;
     function Produto : iControllerListBoxItemForm;
     function Cliente : iControllerListBoxItemForm;
    end;

    iControllerListBoxFactory = interface
      ['{E3102573-0286-416C-B2D5-D06DDDF00E88}']
      function Default(Container: TComponent) : iControllerListBoxDefault;
      function Principal(Container: TComponent) : iControllerListBoxMenu;
      function Produtos(Container: TComponent) : iControllerListBoxMenu;
      function Clientes(Container: TComponent) : iControllerListBoxMenu;
    end;

     iControllerListBoxButtonFactory = interface
        ['{404C63F7-D7AA-40A2-8945-C6328C05965D}']
     end;

    iControllerListBoxItensDefault = interface
      ['{9E1C78AE-6554-4992-9F62-9BD32633C133}']
    function Name(Value : String) : iControllerListBoxItensDefault;
    function Text(Value : String) : iControllerListBoxItensDefault;
    function StyleLookup(Value : String) : iControllerListBoxItensDefault;
    function onClick(Value : TNotifyEvent) : iControllerListBoxItensDefault;
    function Item : TFMXObject;
    end;

    iControllerListBoxButtonDefault = interface
       ['{895E3FB7-168D-4043-83D6-436D2F760FE5}']
    end;

    iControllerListBoxDefault = interface
      ['{B4A78DBF-11B5-4AF6-9FB8-D5009BFF4EBC}']
    function Name(Value : String) : iControllerListBoxDefault;
    function Align(Value : TAlignLayout) : iControllerListBoxDefault;
    function ItemHeight(Value : Integer) : iControllerListBoxDefault;
    function AddItem(Value : TFmxObject) : iControllerListBoxDefault;
    function Lista : TFmxObject;
    procedure Exibir;
    end;

implementation

end.
