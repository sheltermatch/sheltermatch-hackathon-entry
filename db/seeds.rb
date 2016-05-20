User.destroy_all
Shelter.destroy_all
Meal.destroy_all
Gender.destroy_all
Address.destroy_all

User.new(email: "admin@sheltermatch.org",
         password: "password",
         password_confirmation: "password").save!(validate: false)

Shelter.new(name: "Joshua Ministries Shelter",
            description: "Homeless shelter for men" ,
            beds: 50,
            fee: false,
            age_min: 18,
            age_max: 50,
            phone: "(773) 533-0254",
            address: "138 N LaSalle Ave. Chicago, IL 60626").save!(validate: false)

Shelter.new(name: "Interfaith House",
            description: "Injured homeless adults" ,
            beds: 25,
            fee: true,
            age_min: 18,
            age_max: 0,
            phone: "(773) 533-6013",
            address: "341 S State St. Chicago, IL 60601").save!(validate: false)

Shelter.new(name: "Primo Center for Women & Children",
            description: "None" ,
            beds: 64,
            fee: false,
            age_min: 0,
            age_max: 0,
            phone: "(773) 722-0544",
            address: "1937 W Damen Ave. Chicago, IL 60624").save!(validate: false)

Shelter.new(name: "Mercy Home",
            description: "for boys & girls" ,
            beds: 64,
            fee: false,
            age_min: 0,
            age_max: 18,
            phone: "(773) 722-0544",
            address: "183 W Monroe Ave. Chicago, IL 60612").save!(validate: false)
