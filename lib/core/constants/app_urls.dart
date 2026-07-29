class AppUrl {
  // 1. Définissez votre "Cloud Name" (vous le trouverez sur votre dashboard Cloudinary)
  static const String cloudName = 'db0hvoyln';

  // 2. L'URL de base standard pour récupérer des images sur Cloudinary
  static const String storageBase =
      'https://res.cloudinary.com/$cloudName/image/upload/';

  // 3. Les chemins vers vos dossiers.
  // Note : Utilisez des slashs normaux "/" au lieu de "%2F"
  static const String categoryImage = '${storageBase}Categories/Images/';
  static const String productImage = '${storageBase}Products/Images/';

  // 4. Cloudinary n'a pas besoin de paramètre supplémentaire pour afficher l'image.
  // On le laisse vide pour ne pas casser le reste de votre code qui utilise "alt".
  static const String alt = '';
}
