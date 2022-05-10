# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts "Detroying all politicians"
Politician.destroy_all

puts "Creating new politician"

file = URI.open('https://www.moustique.be/wp-content/uploads/2022/04/methode_times_prod_web_bin_298872bc-bf21-11ec-8413-422ef6319ad0.jpg')
politician =Politician.create!(full_name:'Emmanuel Macron', email:'manu@gov.fr', password:'brigitte', phone_number:'+32 6 58 69 62', country:'France', address:'1 rue des champs-Elysées', gender:'Homme', description:'Je vous propose de vous accompagner pour charmer le peuple', political_camp:'Je ne sais pas', expertise:'Art de la manipulation', price:'250000')
politician.photo.attach(io: file, filename: 'macron.jpg', content_type: 'image/jpg')

file = URI.open('https://static.lpnt.fr/images/2012/10/19/berlusconi-proces-707198-jpg_486901_660x287.JPG')
politician =Politician.create!(full_name:'Silvio Berlusconi', email:'Silvio-Berlusconi@gov.it', password:'ragazzo', phone_number:'+39 46 78 69 69', country:'Italie', address:'Viale della Trinità dei Monti, 1, 00187 Roma RM,', gender:'Homme', description:'Je vous trouve toutes les filles que vous voulez', political_camp:'Droite', expertise:'Art de la séduction', price:'125000')
politician.photo.attach(io: file, filename: 'berclusconi.jpg', content_type: 'image/jpg')

file = URI.open('https://www.gala.fr/imgre/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fprismamedia_people.2F2017.2F06.2F30.2F13cc903e-9db1-41a8-8d4d-07d705926fd0.2Ejpeg/340x340/quality/80/dominique-strauss-kahn.jpg')
politician =Politician.create!(full_name:'Dominique Strauss Kahn', email:'domi@fmi.fr', password:'ladouchesofitel', phone_number:'+32 6 55 69 72 42', country:'France', address:'15 Rue Boissy Anglas', gender:'Homme', description:'Je vous accompagne dans la gestion de vos finances et également en conseil séduction', political_camp:'  gauche', expertise:'Art de la séduction', price:'1000000')
politician.photo.attach(io: file, filename: 'dsk.jpg', content_type: 'image/jpg')

file = URI.open('https://www.challenges.fr/assets/img/2016/11/19/cover-r4x3w1000-5830b338e2c9a-franc-ois-fillon-bio.jpg')
politician =Politician.create!(full_name:'François Fillon', email:'franfran@gov.fr', password:'123', phone_number:'+32 3 62 38 56', country:'France', address:'5 rue des évadés fiscaux', gender:'Homme', description:'Je vous propose de vous accompagner afin de vous aider à détourner des fonds publics', political_camp:'Droite', expertise:'Art de la fraude', price:'129999')
politician.photo.attach(io: file, filename: 'fillon.jpg', content_type: 'image/jpg')

file = URI.open('https://ladaws-pm-prod.s3.amazonaws.com/var/partenaire/ifop/PhotosPrint/Chirac/SC_SIPA_00611138_000001.jpg')
politician =Politician.create!(full_name:'Jacques Chirac', email:'chirac@gov.fr', password:'123', phone_number:'+32 6 94 72 53', country:'France', address:'32 rue des dragueurs fous', gender:'Homme', description:'Je vous propose de vous aider à apprendre à draguer une demoiselle discrètement, même lorsque votre épouse est dans les parages', political_camp:'Droite', expertise:'Art de la séduction', price:'133699')
politician.photo.attach(io: file, filename: 'chirac.jpg', content_type: 'image/jpg')

file = URI.open('https://ds.static.rtbf.be/article/image/1248x702/5/0/0/8e1ba5b251547dc7e82cdcd47bdc9f1b-1344186066.jpg')
politician =Politician.create!(full_name:'Michel Daerden', email:'papamichmich@belgovino.be', password:'jaimelevin', phone_number:'+32 475 60 20 15', country:'Belgique', address:'Rue des Tchèrweûs 3', gender:'Homme', description:'Je vous propose une aisance oratoire. Vous oublierez votre stress (et peut-être votre discours) mais vous serez toujours avec un grand sourire à travers les médias.', political_camp:'Gauche', expertise:'Art de la séduction', price:'349,99')
politician.photo.attach(io: file, filename: 'daerden.jpg', content_type: 'image/jpg')

file = URI.open('https://www.leparisien.fr/resizer/YpaI9x9k1_2hrTsWszml3LcVetY=/622x346/arc-anglerfish-eu-central-1-prod-leparisien.s3.amazonaws.com/public/JSRO2SGAUYO3MJPACFIOPN5JZE.jpg')
politician =Politician.create!(full_name:'Vladimir Poutine', email:'vlavla@gov.ru', password:'zelinsky', phone_number:'+7 417 119 169', country:'Russie', address:'103132 Moscow', gender:'Homme', description:'Mon armée peut veut aider à conquérir le pays de votre choix', political_camp:'Droite', expertise:'Art de la conquete', price:'1000000')
politician.photo.attach(io: file, filename: 'poutine.jpg', content_type: 'image/jpg')

file = URI.open('https://lesjours.fr/ressources/res840/square/people/coralie-dubost.jpeg')
politician =Politician.create!(full_name:'Coralie Dubos', email:'cocodudu@gov.fr', password:'millesrobes64', phone_number:'+32 7 65 59 72 42', country:'France', address:'57 rue de Varenne', gender:'Femme', description:'Amoureuse du shopping votre argent public ', political_camp:'Je ne sais pas', expertise:'Art de la fraude fiscale', price:'30000')
politician.photo.attach(io: file, filename: 'coralie.jpg', content_type: 'image/jpg')
