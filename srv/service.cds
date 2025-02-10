using RealEstateModel from '../db/schema';

service RealEstateService {
    entity Users as projection on RealEstateModel.Users;
    entity Properties as projection on RealEstateModel.Properties;
}
