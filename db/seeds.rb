# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Area.create(:id => 1, :prefecture => 1, :area_name => "道北")
Area.create(:id => 2, :prefecture => 1, :area_name => "道東")
Area.create(:id => 3, :prefecture => 1, :area_name => "道央")
Area.create(:id => 4, :prefecture => 1, :area_name => "道南")
Area.create(:id => 5, :prefecture => 2, :area_name => "津軽")
Area.create(:id => 6, :prefecture => 2, :area_name => "南部")
Area.create(:id => 7, :prefecture => 14, :area_name => "横浜")
Area.create(:id => 8, :prefecture => 14, :area_name => "川崎")
Area.create(:id => 9, :prefecture => 14, :area_name => "横須賀三浦")
Area.create(:id => 10, :prefecture => 14, :area_name => "県央")
Area.create(:id => 11, :prefecture => 14, :area_name => "湘南")
Area.create(:id => 12, :prefecture => 14, :area_name => "県西")

Spa.create(:id => 1, :spa_name => "おふろの王様　港南台店", :area_id => 7, :address => "〒234-0053　神奈川県横浜市港南区日野中央2-45-7", :phone_number => "045-830-2603", :regular_holiday => "年中無休", :website => "https://www.ousama2603.com/shop/kounandai/", :opening_day => "2003年4月1日", :all_rating => 4 , :bath_rating => 4 , :meal_rating => 4, :other_rating => 4)
Spa.create(:id => 2, :spa_name => "おふろの王様　瀬谷店", :area_id => 7, :address => "〒246-0007　神奈川県横浜市瀬谷区目黒町24-6", :phone_number => "045-924-1126", :regular_holiday => "年中無休", :website => "https://www.ousama2603.com/shop/seya/", :opening_day => "2003年2月1日", :all_rating => 3 , :bath_rating => 3 , :meal_rating => 3, :other_rating => 3)








