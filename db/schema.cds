namespace RealEstateModel;

entity Users {
    key ID   : Integer;
    Name     : String;
    Email    : String;
}

entity Properties {
    key ID   : Integer;
    Type     : String;
    ConstructionYear : Integer;
    Owner    : Association to Users;
}
