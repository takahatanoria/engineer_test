# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(:name => 'エンターテインメント')
Category.create(:name => '暮らし')
Category.create(:name => '健康・美容')
Category.create(:name => '恋愛・結婚')
Category.create(:name => '悩み')
Category.create(:name => '趣味')
Category.create(:name => 'インターネット・通信')
Category.create(:name => '学問')
Category.create(:name => 'ビジネス')
Category.create(:name => '雑談')
Category.create(:name => 'その他')