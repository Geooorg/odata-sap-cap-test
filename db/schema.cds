namespace RealEstateModel;

entity RealEstateModel.Users {
  key ID : Integer not null;
  Name : LargeString;
  Email : LargeString;
  Properties : Association to many RealEstateModel.Properties on Properties.Owner_ID = ID;
};

entity RealEstateModel.Properties {
  key ID : Integer not null;
  Type : LargeString;
  ConstructionYear : Integer;
  Owner_ID : Integer;
};
