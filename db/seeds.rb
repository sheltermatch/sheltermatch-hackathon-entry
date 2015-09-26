User.destroy_all
Shelter.destroy_all
Meal.destroy_all
Gender.destroy_all
Address.destroy_all

User.new(email: "admin@shelterme.org",
         password: "password",
         password_confirmation: "password").save!(validate: false)
