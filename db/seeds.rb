100.times do
  Event.create(
    name: Forgery('name').full_name,
    date: Forgery('date').date,
    available: false)
end

2.times do
  Event.create(
    name: Forgery('name').full_name,
    date: Forgery('date').date,
    available: true)
end
