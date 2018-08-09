# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 20.times do |i|
#     uid =[1,2].sample
#     Session.create!(title: "#{i+1}번 째 글입니다.", content: "Hack your life!", user_id: uid)
# end

User.create(email: 'a@likelion.org', password: '123456', name: '은진')
User.create(email: 'qkrgusdn21@likelion.org', password: '123456', name: '현우')
User.create(email: 'davidkunin@likelion.org', password: '123456', name: '건')
User.create(email: 's@likelion.org', password: '123123', name: '승윤')

20.times do |i|
    uid = ["a@likelion.org", "qkrgusdn21@likelion.org", "davidkunin@likelion.org", "s@likelion.org"].sample
    Qna.create!(title: "#{i+1} 번 째 글입니다.", content: "Hack Your Like", user_email: uid)
end

20.times do |i|
    uid = ["a@likelion.org", "qkrgusdn21@likelion.org", "davidkunin@likelion.org", "s@likelion.org"].sample
    Tip.create!(title: "#{i+1} 번 째 글입니다.", content: "Hack Your Like", user_email: uid)
end

20.times do |i|
    uid = ["a@likelion.org", "qkrgusdn21@likelion.org", "davidkunin@likelion.org", "s@likelion.org"].sample
    Lsession.create!(title: "#{i+1} 번 째 글입니다.", content: "Hack Your Like", user_email: uid)
end

20.times do |i|
    uid = ["a@likelion.org", "qkrgusdn21@likelion.org", "davidkunin@likelion.org", "s@likelion.org"].sample
    Quiz.create!(title: "#{i+1} 번 째 글입니다.", content: "Hack Your Like", user_email: uid)
end