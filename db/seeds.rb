100.times do
  Event.create(name: Forgery('name').full_name, date: Forgery('date').date)
end
