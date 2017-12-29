# 100.times do
#   Event.create(
#     name: Forgery('name').full_name,
#     date: Forgery('date').date,
#     available: false)
# end
#
# 2.times do
#   Event.create(
#     name: Forgery('name').full_name,
#     date: Forgery('date').date,
#     available: true)
# end

  User.create(
    name: "admin",
    email: "shoku.kouryu@gmail.com",
    password: "kazumarodon",
    password_confirmation: "kazumarodon"
  )
