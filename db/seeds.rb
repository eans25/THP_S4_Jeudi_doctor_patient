

require 'faker'
# créé 5 docteurs
5.times do
 doctor = Doctor.create(first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            speciality: Faker::Pokemon.name,
            postal_code: Faker::Address.zip)
end

#créé 10 patients
10.times do
 patient = Patient.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name)
end
# ​
# #créé 15 rdv
15.times do
 appointement = Appointment.create(date: Faker::Date.forward(23),
 				doctor_id: rand((Doctor.first.id)..(Doctor.last.id)),
 				patient_id: rand((Patient.first.id)..(Patient.last.id)))                       
end

