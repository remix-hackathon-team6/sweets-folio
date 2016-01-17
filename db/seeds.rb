# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(user_name: 'めぐみさん', email: 'megumi@hoge.jp', user_image: 'megumi.jpg', user_info: '7歳のときからパティシエになるのが夢でした。腕には絶対的のがあります♡', shouhin_id: '1', pastry: true )
User.create(user_name: '山田一郎', email: 'yamada@huga.jp', user_image: 'yamada.jpg', user_info: '今はサラリーマンをやっていますが、休日のひとときに甘いものを食べるのは気持ちがやすらぎますね。', shouhin_id: '1', pastry: false )
User.create(user_name: '渡辺陽一', email: 'watanabe@huga.jp', user_image: 'watanabe.jpg', user_info: 'スイーツには目が無いじゃわい。それだけが楽しみじゃて。', shouhin_id: '1', pastry: false )
User.create(user_name: 'ともや', email: 'tomoya@huga.jp', user_image: 'tomoya.jpg', user_info: '30年以上も前からお菓子を作ってきました。皆さんの期待に答えられるように日々おいしいおかしを開発しています。', shouhin_id: '4', pastry: true )
User.create(user_name: '吉田直哉', email: 'yoshida@huga.jp', user_image: 'yoshida.jpg', user_info: 'たまにご利用しています', shouhin_id: '4', pastry: true )
User.create(user_name: '剛田よしみ', email: 'gouda@huga.jp', user_image: 'gouda.jpg', user_info: 'たまにご利用しています', shouhin_id: '4', pastry: true )


Shouhin.create(shouhin_name: 'さくらんぼのショートケーキ', shouhin_info: '素材にこだわりぬいた本当にこだわりのケーキです。', shouhin_eval: '4', user_id: '1', shouhin_image_1: 'cake.jpg', shouhin_image_2: 'cake.jpg', shouhin_image_3: 'cake.jpeg', shouhin_image_4: 'cake.jpeg')
Shouhin.create(shouhin_name: '洋ナシのタルト', shouhin_info: '素材にこだわりぬいた本当にこだわりのタルトです。', shouhin_eval: '4', user_id: '4', shouhin_image_1: 'tart.jpg', shouhin_image_2: 'tart.jpg', shouhin_image_3: 'tart.jpeg', shouhin_image_4: 'tart.jpeg')
Shouhin.create(shouhin_name: 'パンプキンパイ', shouhin_info: '素材にこだわりぬいた本当にこだわりのパンプキンパイです。', shouhin_eval: '4', user_id: '1', shouhin_image_1: 'pi.jpg', shouhin_image_2: 'pi.jpg', shouhin_image_3: 'pi.jpeg', shouhin_image_4: 'pi.jpeg')
Shouhin.create(shouhin_name: '手作りドーナツ', shouhin_info: '可愛く仕上げてみました。', shouhin_eval: '4', user_id: '4', shouhin_image_1: 'do.png', shouhin_image_2: 'do.png', shouhin_image_3: 'do.png', shouhin_image_4: 'do.png')
Shouhin.create(shouhin_name: '果物の盛り合わせ', shouhin_info: '女性に非常に人気です。', shouhin_eval: '4', user_id: '1', shouhin_image_1: 'kudamono.jpg', shouhin_image_2: 'kudamono.jpg', shouhin_image_3: 'kudamono.jpg', shouhin_image_4: 'kudamono.jpg')
Shouhin.create(shouhin_name: 'まっちゃロールケーキ', shouhin_info: 'たまには抹茶もいかが？おいしいですよ。', shouhin_eval: '4', user_id: '4', shouhin_image_1: 'matya.jpg', shouhin_image_2: 'matya.jpg', shouhin_image_3: 'matya.jpg', shouhin_image_4: 'matya.jpg')
Shouhin.create(shouhin_name: 'マンゴーのソテー', shouhin_info: '他ではなかなか味わえないものをご提供。', shouhin_eval: '4', user_id: '4', shouhin_image_1: 'sote.png', shouhin_image_2: 'sote.png', shouhin_image_3: 'matya.png', shouhin_image_4: 'sote.png')
Shouhin.create(shouhin_name: '本物メロンのアイス', shouhin_info: '口に溶け込むメロンは最高です。', shouhin_eval: '4', user_id: '4', shouhin_image_1: 'meron.jpg', shouhin_image_2: 'meron.jpg', shouhin_image_3: 'meron.jpg', shouhin_image_4: 'meron.jpg')
Shouhin.create(shouhin_name: '特性カステラ', shouhin_info: '極上のカステラです。', shouhin_eval: '4', user_id: '4', shouhin_image_1: 'kasu.jpg', shouhin_image_2: 'kasu.jpg', shouhin_image_3: 'kasu.jpg', shouhin_image_4: 'kasu.jpg')

Eval.create();

