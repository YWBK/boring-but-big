# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

[Program, User].each { |obj| obj.destroy_all }

bbb = Program.create(name: 'Boring but Big')

demo_user = User.create(
    email: 'demo@demo.com',
    first_name: 'Demo User',
    password: 'Demo123',
)
UserProgram.create(
    program_id: bbb.id,
    user_id: demo_user.id,
    split: 3,
)

4.times do |index|
    UserLiftMax.create(
        user_id: demo_user.id,
        lift_id: index + 1,
        training_max: 270 / (index == 0 ? 1 : index) 
    )
    ProgramLift.create(
        program_id: bbb.id,
        lift_id: index + 1,
    )
end