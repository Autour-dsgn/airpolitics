# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts "Detroying all Table"

Booking.destroy_all
Review.destroy_all
Politician.destroy_all

puts "Creating new politician"

file = URI.open('https://www.moustique.be/wp-content/uploads/2022/04/methode_times_prod_web_bin_298872bc-bf21-11ec-8413-422ef6319ad0.jpg')
politician =Politician.create!(full_name:'Emmanuel Macron', email:'manu@gov.fr', password:'brigitte', phone_number:'+32 6 58 69 62', country:'France', address:'1 rue des champs-Elysées', gender:'Homme', description:'Je vous propose de vous accompagner pour charmer le peuple', political_camp:'Je ne sais pas', expertise:'Art de la manipulation', price:'250000')
politician.photo.attach(io: file, filename: 'macron.jpg', content_type: 'image/jpg')

file = URI.open('https://static.lpnt.fr/images/2012/10/19/berlusconi-proces-707198-jpg_486901_660x287.JPG')
politician =Politician.create!(full_name:'Silvio Berlusconi', email:'Silvio-Berlusconi@gov.it', password:'ragazzo', phone_number:'+39 46 78 69 69', country:'Italie', address:'Viale della Trinità dei Monti, 1, 00187 Roma RM,', gender:'Homme', description:'Je vous trouve toutes les filles que vous voulez', political_camp:'Droite', expertise:'Art de la séduction', price:'125000')
politician.photo.attach(io: file, filename: 'berclusconi.jpg', content_type: 'image/jpg')

file = URI.open('https://www.gala.fr/imgre/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fprismamedia_people.2F2017.2F06.2F30.2F13cc903e-9db1-41a8-8d4d-07d705926fd0.2Ejpeg/340x340/quality/80/dominique-strauss-kahn.jpg')
politician =Politician.create!(full_name:'Dominique Strauss Kahn', email:'domi@fmi.fr', password:'ladouchesofitel', phone_number:'+32 6 55 69 72 42', country:'France', address:'15 Rue Boissy Anglas', gender:'Homme', description:'Je vous accompagne dans la gestion de vos finances et également en conseil séduction', political_camp:'Gauche', expertise:'Art de la séduction', price:'1000000')
politician.photo.attach(io: file, filename: 'dsk.jpg', content_type: 'image/jpg')

file = URI.open('https://www.challenges.fr/assets/img/2016/11/19/cover-r4x3w1000-5830b338e2c9a-franc-ois-fillon-bio.jpg')
politician =Politician.create!(full_name:'François Fillon', email:'franfran@gov.fr', password:'123', phone_number:'+32 3 62 38 56', country:'France', address:'Manoir de Beaucé, 72300 Solesmes', gender:'Homme', description:'Je vous propose de vous accompagner afin de vous aider à détourner des fonds publics', political_camp:'Droite', expertise:'Art de la fraude fiscale', price:'129999')
politician.photo.attach(io: file, filename: 'fillon.jpg', content_type: 'image/jpg')

file = URI.open('https://ladaws-pm-prod.s3.amazonaws.com/var/partenaire/ifop/PhotosPrint/Chirac/SC_SIPA_00611138_000001.jpg')
politician =Politician.create!(full_name:'Jacques Chirac', email:'chirac@gov.fr', password:'123', phone_number:'+32 6 94 72 53', country:'France', address:'4 rue de tournon 75006 paris', gender:'Homme', description:'Je vous propose de vous aider à apprendre à draguer une demoiselle discrètement, même lorsque votre épouse est dans les parages', political_camp:'Droite', expertise:'Art de la séduction', price:'133699')
politician.photo.attach(io: file, filename: 'chirac.jpg', content_type: 'image/jpg')

file = URI.open('https://ds.static.rtbf.be/article/image/1248x702/5/0/0/8e1ba5b251547dc7e82cdcd47bdc9f1b-1344186066.jpg')
politician =Politician.create!(full_name:'Michel Daerden', email:'papamichmich@belgovino.be', password:'jaimelevin', phone_number:'+32 475 60 20 15', country:'Belgique', address:'Bruxelles', gender:'Homme', description:'Je vous propose une aisance oratoire. Vous oublierez votre stress (et peut-être votre discours) mais vous serez toujours avec un grand sourire à travers les médias.', political_camp:'Gauche', expertise:'Art de la séduction', price:'349,99')
politician.photo.attach(io: file, filename: 'daerden.jpg', content_type: 'image/jpg')

file = URI.open('https://www.leparisien.fr/resizer/YpaI9x9k1_2hrTsWszml3LcVetY=/622x346/arc-anglerfish-eu-central-1-prod-leparisien.s3.amazonaws.com/public/JSRO2SGAUYO3MJPACFIOPN5JZE.jpg')
politician =Politician.create!(full_name:'Vladimir Poutine', email:'vlavla@gov.ru', password:'zelinsky', phone_number:'+7 417 119 169', country:'Russie', address:'Moscou', gender:'Homme', description:'Mon armée peut veut aider à conquérir le pays de votre choix', political_camp:'Droite', expertise:'Art de la guerre', price:'1000000')
politician.photo.attach(io: file, filename: 'poutine.jpg', content_type: 'image/jpg')

file = URI.open('https://lesjours.fr/ressources/res840/square/people/coralie-dubost.jpeg')
politician =Politician.create!(full_name:'Coralie Dubos', email:'cocodudu@gov.fr', password:'millesrobes64', phone_number:'+32 7 65 59 72 42', country:'France', address:'57 rue de Varenne', gender:'Femme', description:'Amoureuse du shopping votre argent public ', political_camp:'Je ne sais pas', expertise:'Art de la fraude fiscale', price:'30000')
politician.photo.attach(io: file, filename: 'coralie.jpg', content_type: 'image/jpg')

file = URI.open('https://cdn.britannica.com/42/172742-138-B0830C03/overview-George-W-Bush.jpg?w=800&h=450&c=crop')
politician =Politician.create!(full_name:'George W. Bush', email:'george@gmail.com', password:'georgybush', phone_number:'+1 6 73 54 79 41', country:'Etats Unis', address:'1341 G St NW, Washington, DC 20005', gender:'Homme', description:'Appelez moi si vous avez besoin de créer des problèmes quelque part dans le but de pouvoir y faire la guerre ensuite', political_camp:'Droite', expertise:'Art de la guerre', price:'2799990,99')
politician.photo.attach(io: file, filename: 'bush.jpg', content_type: 'image/jpg')

file = URI.open('https://ichef.bbci.co.uk/news/640/cpsprodpb/E595/production/_120437785_gettyimages-110140621-1.jpg')
politician =Politician.create!(full_name:'Saddam Hussein', email:'dadam@gmail.com', password:'saddam', phone_number:'+2 6 46 73 89 96', country:'Irak', address:'GPH4+5Q7, Al Awja', gender:'Homme', description:'Je suis disponible pour vous aider à commander une armée afin de mener à bien vos futures guerres', political_camp:'Gauche', expertise:'Art de la guerre', price:'799990,99')
politician.photo.attach(io: file, filename: 'saddam.jpg', content_type: 'image/jpg')

file = URI.open('https://www.lavenir.net/resizer/7do67zn8WP8eI4lV25aMdzGT0gw=/768x512/filters:quality(70):format(jpg):focal(545x371.5:555x361.5)/cloudfront-eu-central-1.images.arcpublishing.com/ipmgroup/RNVGW6SQNNAVVMU2ECBFQLVCQE.jpg')
politician =Politician.create!(full_name:'Patrick Balkany', email:'patpat@gmail.com', password:'patou', phone_number:'+32 5 73 82 93 03', country:'France', address:'1 Pl. de la République, 92300 Levallois-Perret', gender:'Homme', description:'Je peux vous conseiller sur les meilleures façons de détourner de l argent public', political_camp:'Droite', expertise:'Art de la fraude fiscale', price:'1099990,99')
politician.photo.attach(io: file, filename: 'balka.jpg', content_type: 'image/jpg')

file = URI.open('https://cdn-s-www.ledauphine.com/images/008623EA-70D8-4471-AC8A-59DC7F41386F/NW_raw/jerome-cahuzac-photo-eric-feferberg-afp-1554886230.jpg')
politician =Politician.create!(full_name:'Jérôme Cahuzac', email:'jeje@gmail.com', password:'cahuhu', phone_number:'+32 6 87 35 82 98', country:'France', address:'412 Cr de la Libération, 33400 Talence', gender:'Homme', description:'Je peux vous apprendre de A à Z tout le fonctionnement du blanchiement d argent', political_camp:'Gauche', expertise:'Art de la fraude fiscale', price:'99990,99')
politician.photo.attach(io: file, filename: 'balka.jpg', content_type: 'image/jpg')

file = URI.open('https://fr.web.img2.acsta.net/newsv7/20/11/18/09/51/5712057.jpg')
politician =Politician.create!(full_name:'Édouard Philippe', email:'phiphi@gmail.com', password:'edouardo', phone_number:'+32 3 67 53 49 08', country:'France', address:'31 Rue Louis Blanc, 76600 Le Havre', gender:'Homme', description:'Je peux vous apprendre à manipuler le peuple en changeant d avis sur la politique covid toutes les deux minutes sans que personne ne s en rende compte', political_camp:'Droite', expertise:'Art de la manipulation', price:'499990,99')
politician.photo.attach(io: file, filename: 'philippe.jpg', content_type: 'image/jpg')

file = URI.open('https://img.20mn.fr/mKFa7zf6QCyHhqbFlc67hg/1200x768_donald-trump-a-orlando-en-floride-le-26-fevrier-2022')
politician =Politician.create!(full_name:'Donald Trump', email:'donald@gmail.com', password:'trumpy', phone_number:'+1 3 64 53 63 83', country:'Etats Unis', address:'725 5th Ave, New York, NY 10022', gender:'Homme', description:'C est avec plaisir que je vous apprendrais l art de bien vendre du rêve aux peuple', political_camp:'Droite', expertise:'Art de la manipulation', price:'87499990,99')
politician.photo.attach(io: file, filename: 'trump.jpg', content_type: 'image/jpg')

file = URI.open('https://www.leparisien.fr/resizer/INaRSpI-ES2VSZPkwq4wH7DONwQ=/932x582/cloudfront-eu-central-1.images.arcpublishing.com/leparisien/KX27AINZEVCQRFWP6WQYOXULZI.jpg')
politician =Politician.create!(full_name:'Nicolas Sarközy', email:'sarko@gmail.com', password:'nico', phone_number:'+33 6 74 38 01 39', country:'France', address:'6 Rue Daubigny, 75017 Paris', gender:'Homme', description:'Je vous apprendrais les meilleures façons de structurer votre discours rempli de fausses promesses', political_camp:'Droite', expertise:'Art de la manipulation', price:'2499990,99')
politician.photo.attach(io: file, filename: 'sarko.jpg', content_type: 'image/jpg')
