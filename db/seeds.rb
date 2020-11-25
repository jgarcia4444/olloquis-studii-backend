# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Appointment.destroy_all

apps = [
    {
        month_number: 10,
        day_number: 24,
        time_start: 6,
        duration: 120,
        service_name: "Full Lash Set",
        first_name: "Test",
        last_name: "User",
        email: "test@user.com",
        price: 120
    },
    {
        month_number: 10,
        day_number: 24,
        time_start: 8,
        duration: 120,
        service_name: "Full Lash Set",
        first_name: "Test",
        last_name: "User",
        email: "test@user.com",
        price: 120
    },
    {
        month_number: 10,
        day_number: 24,
        time_start: 10,
        duration: 120,
        service_name: "Full Lash Set",
        first_name: "Test",
        last_name: "User",
        email: "test@user.com",
        price: 120
    },
    {
        month_number: 10,
        day_number: 24,
        time_start: 12,
        duration: 120,
        service_name: "Full Lash Set",
        first_name: "Test",
        last_name: "User",
        email: "test@user.com",
        price: 120
    },
    {
        month_number: 10,
        day_number: 24,
        time_start: 14,
        duration: 120,
        service_name: "Full Lash Set",
        first_name: "Test",
        last_name: "User",
        email: "test@user.com",
        price: 120
    },
    {
        month_number: 10,
        day_number: 24,
        time_start: 16,
        duration: 120,
        service_name: "Full Lash Set",
        first_name: "Test",
        last_name: "User",
        email: "test@user.com",
        price: 120
    },
    {
        month_number: 10,
        day_number: 25,
        time_start: 6,
        duration: 120,
        service_name: "Full Lash Set",
        first_name: "Test",
        last_name: "User",
        email: "test@user.com",
        price: 120
    },
    {
        month_number: 10,
        day_number: 25,
        time_start: 8,
        duration: 120,
        service_name: "Full Lash Set",
        first_name: "Test",
        last_name: "User",
        email: "test@user.com",
        price: 120
    },
    {
        month_number: 10,
        day_number: 25,
        time_start: 10,
        duration: 120,
        service_name: "Full Lash Set",
        first_name: "Test",
        last_name: "User",
        email: "test@user.com",
        price: 120
    }
]

Appointment.create(apps)