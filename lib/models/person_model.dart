
List<PersonModel> personList = [
  PersonModel('IJK','ijk@example.com','Tangail'),
  PersonModel('PQR','pqr@example.com','Tangail'),
  PersonModel('XYZ','xyz@example.com','Tangail'),
  PersonModel('ABC','abc@example.com','Tangail'),
  PersonModel('EFG','efg@example.com','Tangail'),
];

class PersonModel
{
  String? name,email,address;
  PersonModel(this.name,this.email,this.address);

}