User.destroy_all
Shelter.destroy_all
Meal.destroy_all
Gender.destroy_all
Address.destroy_all

User.new(email: "admin@shelterme.org",
         password: "password",
         password_confirmation: "password").save!(validate: false)

Shelter.new(name: "Joshua Ministries Shelter",
            description: "Homeless shelter for men" ,
            beds: 50,
            fee: false,
            age_min: 0,
            age_max: 0,
            phone: "(773) 533-0254").save!(validate: false)

Shelter.new(name: "Interfaith House",
            description: "Injured homeless adults" ,
            beds: 25,
            fee: true,
            age_min: 0,
            age_max: 0,
            phone: "(773) 533-6013").save!(validate: false)

Shelter.new(name: "Primo Center for Women & Children",
            description: "" ,
            beds: 64,
            fee: false,
            age_min: 0,
            age_max: 0,
            phone: "(773) 722-0544").save!(validate: false)
