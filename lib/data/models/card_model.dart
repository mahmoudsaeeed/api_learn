class CardModel {
  final int id;
  final String firstName;
  final String lastName;
  final String fullName;
  final String title;
  final String family;
  final String image;
  final String imageUrl;

  CardModel ({
    required this.id , 
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.title,
    required this.family,
    required this.image,
    required this.imageUrl,
  });


  factory CardModel.fromJSON (Map<String , dynamic> card){
    return CardModel(
      id: card['id'], 
      firstName: card['firstName'], 
      lastName: card['lastName'], 
      fullName: card['fullName'], 
      title: card['title'], 
      family: card['family'], 
      image: card['image'], 
      imageUrl: card['imageUrl'],);
  }
  
}
