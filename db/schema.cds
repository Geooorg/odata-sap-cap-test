namespace RealEstateModel;

entity Users {
  key ID : Integer not null;
  Name : LargeString;
  Email : LargeString;
  Properties : Association to many Properties on Properties.Owner_ID = ID;
};

entity Properties {
  key ID : Integer not null;
  Type : LargeString;
  ConstructionYear : Integer;
  Owner_ID : Integer;
};
