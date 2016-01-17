# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(user_name: 'めぐみさん', email: 'megumi@hoge.jp', user_image: 'megumi.jpg', user_info: '7歳のときからパティシエになるのが夢でした。腕には絶対的の地震があります♡', shouhin_id: '1', pastry: true )
User.create(user_name: '山田一郎', email: 'yamada@huga.jp', user_image: 'yamada.jpg', user_info: 'ほげ-ほげ', shouhin_id: '2', pastry: false )
User.create(user_name: '渡辺陽一', email: 'watanabe@huga.jp', user_image: 'watanabe.jpg', user_info: 'スイーツには目が無いです', shouhin_id: '3', pastry: false )

Shouhin.create(shouhin_name: 'さくらんぼのショートケーキ', shouhin_info: '素材にこだわりぬいた本当にこだわりのケーキです。', shouhin_eval: '4', user_id: '1',
	           shouhin_image_1: 'cake.jpg', shouhin_image_2: 'cake.jpg', shouhin_image_3: 'cake.jpeg', shouhin_image_4: 'cake.jpeg')
Shouhin.create(shouhin_name: '洋ナシのタルト', shouhin_info: '素材にこだわりぬいた本当にこだわりのタルトです。', shouhin_eval: '4', user_id: '1',
	           shouhin_image_1: 'tart.jpg', shouhin_image_2: 'tart.jpg', shouhin_image_3: 'tart.jpeg', shouhin_image_4: 'tart.jpeg')
Shouhin.create(shouhin_name: 'パンプキンパイ', shouhin_info: '素材にこだわりぬいた本当にこだわりのパンプキンパイです。', shouhin_eval: '4', user_id: '2',
	           shouhin_image_1: 'pi.jpg', shouhin_image_2: 'pi.jpg', shouhin_image_3: 'pi.jpeg', shouhin_image_4: 'pi.jpeg')
