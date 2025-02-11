namespace RealEstateModel;

entity Users {
    key ID   : Integer;
    Name     : String;
    Email    : String;
    Properties : Association to many Properties on Properties.Owner_ID = ID;
}

entity Properties {
    key ID   : Integer;
    Type     : String;
    ConstructionYear : Integer;
    Owner_ID : Integer;
}
