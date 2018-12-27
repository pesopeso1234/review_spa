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

Spa.create(:id => 1, :spa_name => "〇〇の風呂　港南店", :area_id => 7, :address => "〒〇〇〇-〇〇〇　神奈川県横浜市港南区〇〇町1-1", :phone_number => "111-111-1111", :regular_holiday => "年中無休", :website => "https://web-camp.io/", :charge => "平日600円　休日700円", :opening_day => "2003年4月1日", :all_rating => 0 , :bath_rating => 0 , :meal_rating => 0, :other_rating => 0)
Spa.create(:id => 2, :spa_name => "〇〇の風呂　瀬谷店", :area_id => 7, :address => "〒〇〇〇-〇〇〇〇　神奈川県横浜市瀬谷区〇〇台1-2", :phone_number => "111-111-1111", :regular_holiday => "年中無休", :website => "https://web-camp.io/", :charge => "平日600円　休日700円", :opening_day => "2003年6月1日", :all_rating => 0 , :bath_rating => 0 , :meal_rating => 0, :other_rating => 0)
Spa.create(:id => 3, :spa_name => "〇〇の風呂　金沢店", :area_id => 7, :address => "〒〇〇〇-〇〇〇〇　神奈川県横浜市金沢区〇〇町1-3", :phone_number => "111-111-1111", :regular_holiday => "年中無休", :website => "https://web-camp.io/", :charge => "平日600円　休日700円", :opening_day => "2003年8月1日", :all_rating => 0 , :bath_rating => 0 , :meal_rating => 0, :other_rating => 0)
Spa.create(:id => 4, :spa_name => "〇〇の風呂　磯子店", :area_id => 7, :address => "〒〇〇〇-〇〇〇　神奈川県横浜市磯子区〇〇町1-4", :phone_number => "111-111-1111", :regular_holiday => "年中無休", :website => "https://web-camp.io/", :charge => "平日600円　休日700円", :opening_day => "2003年10月1日", :all_rating => 0 , :bath_rating => 0 , :meal_rating => 0, :other_rating => 0)

Service.create(:id =>1, :spa_id => 1, :service_name => "絹の湯", :service_type => 2, :vote => 0)
Service.create(:id =>2, :spa_id => 1, :service_name => "赤の湯", :service_type => 2, :vote => 0)
Service.create(:id =>3, :spa_id => 1, :service_name => "ジャクジー", :service_type => 1, :vote => 0)
Service.create(:id =>4, :spa_id => 1, :service_name => "水風呂", :service_type => 1, :vote => 0)
Service.create(:id =>5, :spa_id => 1, :service_name => "炭酸風呂", :service_type => 1, :vote => 0)
Service.create(:id =>6, :spa_id => 1, :service_name => "ハイパーサウナ", :service_type => 3, :vote => 0)









