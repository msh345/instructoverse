# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'Tee', email: 'tee@dev.com', password:'password', password_confirmation:'password')
User.create(username: 'Mark', email: 'mark@dev.com', password:'password', password_confirmation:'password')
User.create(username: 'Maria', email: 'maria@dev.com', password:'password', password_confirmation:'password')
User.create(username: 'Ryan', email: 'ryan@dev.com', password:'password', password_confirmation:'password')

Course.create(title: 'How to cook Classic Lasagne', description: 'Lasagne is very easy to cook. Just watch me', url: '//www.youtube.com/embed/O0bWSiiew2A', creator_id: 1)
Course.create(title: 'Ruby on Rails Introduction', description: 'Watch this video to learn about ruby on rails', url: '//www.youtube.com/embed/di60mvq5ImA', creator_id: 1)
Course.create(title: 'Javascript', description: 'This video is for Javascript beginnner', url: '//www.youtube.com/embed/yQaAGmHNn9s', creator_id: 2)
Course.create(title: 'Juggling', description: 'This video will teach you all the juggling tricks', url: '//www.youtube.com/embed/YB_sfnwbgvk', creator_id: 2)
Course.create(title: 'Boxing Basic', description: 'This video will teach you all the boxing tricks you need to learn', url: '//www.youtube.com/embed/8OPUR0WoIyQ', creator_id: 3)
Course.create(title: 'Singing', description: 'Watch this video to learn how to sing', url: '//www.youtube.com/embed/hdIF2irWHBI', creator_id: 3)
Course.create(title: 'How to play golf', description: 'Watch this video to learn how to golf', url: '//www.youtube.com/embed/H25jGApaqQM', creator_id: 3)
Course.create(title: 'Basketball Basic', description: 'Watch this video to become a better dribbler', url: '//www.youtube.com/embed/HJJebHkUiBo', creator_id: 4)
Course.create(title: 'Microsoft Excel', description: 'This video will teach you all the basics of microsoft excel', url: '//www.youtube.com/embed/-SnBlC_1tSk', creator_id: 4)
Course.create(title: 'Jquery', description: 'This video will teach you how to do jquery', url: '//www.youtube.com/embed/VRnQOcVclS8', creator_id: 4)

