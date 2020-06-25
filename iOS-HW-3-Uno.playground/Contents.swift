import UIKit
/*:
 # الواجب الثالث: لعبة UNO
 
 تحتوي لعبة الأونو على ٤ ألوان و١٠ أرقام.
 - تتكرر الأرقام لكل لون مرتين. ماعدا الرقم صفر، يتواجد مرة واحدة للون الواحد.
- توجد هناك ورقتين Action Cards لكل لون.
 1. Draw
 2. Reverse
 3. Pass

*/


//: ![Uno Deck](deck.jpg)


/*:
 ### المطلوب:
#### الجزء الأول:
 -- قم بإنشاء struct باسم Card به  الصفات التالية
 * color: String
 * number: Int
 
 -- قم بإنشاء مصفوفة من نوع `Card` فارغة، ثم قم بملئها بالأرقام فقط مرة واحدة من دون ال action cards ومن دون تكرار كل رقم مرتين (تكرار الأرقام بونص 🎁)
 
 - Green: 0 -> 9
 - Red: 0 -> 9
 - Blue: 0 -> 9
 - Yellow: 0 -> 9
 
 #### الجزء الثاني:
-- قم بإنشاء دالة بداخل الستركت Card باسم  `imageName`والتي تقوم بإرجاع اسم الصورة للكرت. قم بفتح المجلد Resources الموجود بداخل الplayground من النافذة اليسرى لرؤية طريقة تسمية الكرت
 ###### مثال على تسمية الكروت موضحة كالتالي، قم بتشغيل الكود لرؤية الصور أسفل هذه الأكواد:
 */


var blue_5 = UIImage(named: "Blue_6.png")
var red_9 = UIImage(named: "Red_9.png")

var green_Skip = UIImage(named: "Green_Skip.png")
var wild_Draw = UIImage(named: "Wild_Draw.png")


/*:
 
 
 ### الجزء الثالث (تجريب الكود😍):
 قم بإزالة الملاحظة عن الأسطر الأخيرة لتجربة الكود إن كان يعمل بشكل مناسب،
 الجزء الأول سيظهر كرت عشوائي
 الجزء الثاني سيظهر مجموعة الكروت كاملة 🃏🎴
 ```
 let randomCard = cards.randomElement()!
 let randomCardImage = UIImage(named: randomCard.imageName())
```

 ```
 let cardImages = cards.map{UIImage(named: $0.imageName())}
 randomCardImage
 ```
 إن تم ذلك بالشكل الصحيح من دون أي خطأ، فقد نجحت في المهمة! 🎉
 
  #### الجزء الرابع (بونص 🎁):
 -- قم بتعبئة مجموعة الكروت كل رقم يعرض مرتين، إلا الصفر، يعرض مرة واحدة، كما هو موضح في صورة مجموعة الأونو في بداية الملف
 -- قم باستعمال For Loop لتعبئة جميع الكروت

 
 #### الجزء الخامس (إكسترا إكسترا بونص 🌶🔥)
 -- قم بتعبئة المصفوفة أيضاً ب Action Cards من خلال تحويلك للصفات إلى optional بإضافة علامة الاستفهام إليها
اسم ال Action Cards موضح في الصور بداخل ال Resources
 
 ```
 var color: String?
 var action: String?
 var number: Int?
 ```
  لا تنسى إزالة كلمة  Optional بسبب تحويلك للمتغيرات إلى متغيرات بعلامة الاستفهام. ربما ستضطر إلى كتابة بعض أوامر if
  
 */


//: ---

//: # الحل ...



/// قم بإنشاء الستركت هنا

struct Card{
    var color: String
    var number: Int


    

    
    func imageName () -> String{
      
        var blue_0 = UIImage(named: "Blue_0.png")
        var blue_1 = UIImage(named: "Blue_1.png")
        var blue_2 = UIImage(named: "Blue_2.png")
        var blue_3 = UIImage(named: "Blue_3.png")
        var blue_4 = UIImage(named: "Blue_4.png")
        var blue_5 = UIImage(named: "Blue_5.png")
        var blue_6 = UIImage(named: "Blue_6.png")
        var blue_7 = UIImage(named: "Blue_7.png")
        var blue_8 = UIImage(named: "Blue_8.png")
        var blue_9 = UIImage(named: "Blue_9.png")
        var blue_Draw = UIImage(named: "Blue_Draw.png")
        var blue_Skip = UIImage(named: "Blue_Skip.png")
        var blue_Reverse = UIImage(named: "Blue_Reverse.png")
        var yellow_1 = UIImage(named: "Yellow_1.png")
        var yellow_2 = UIImage(named: "Yellow_2.png")
        var yellow_3 = UIImage(named: "Yellow_3.png")
        var yellow_4 = UIImage(named: "Yellow_4.png")
        var yellow_5 = UIImage(named: "Yellow_5.png")
        var yellow_6 = UIImage(named: "Yellow_6.png")
        var yellow_7 = UIImage(named: "Yellow_7.png")
        var yellow_8 = UIImage(named: "Yellow_8.png")
        var yellow_9 = UIImage(named: "Yellow_9.png")
        var yellow_Draw = UIImage(named: "Yellow_Draw.png")
        var yellow_Skip = UIImage(named: "Yellow_Skip.png")
        var yellow_Reverse = UIImage(named: "Yellow_Reverse.png")
        var red_0 = UIImage(named: "Red_0.png")
        var red_1 = UIImage(named: "Red_1.png")
        var red_2 = UIImage(named: "Red_2.png")
        var red_3 = UIImage(named: "Red_3.png")
        var red_4 = UIImage(named: "Red_4.png")
        var red_5 = UIImage(named: "Red_5.png")
        var red_6 = UIImage(named: "Red_6.png")
        var red_7 = UIImage(named: "Red_7.png")
        var red_8 = UIImage(named: "Red_8.png")
        var red_9 = UIImage(named: "Red_9.png")
        var red_Draw = UIImage(named: "Red_Draw.png")
        var red_Skip = UIImage(named: "Red_Skip.png")
        var red_Reverse = UIImage(named: "Red_Reverse.png")
        var green_0 = UIImage(named: "Green_0.png")
        var green_1 = UIImage(named: "Green_1.png")
        var green_2 = UIImage(named: "Green_2.png")
        var green_3 = UIImage(named: "Green_3.png")
        var green_4 = UIImage(named: "Green_4.png")
        var green_5 = UIImage(named: "Green_5.png")
        var green_6 = UIImage(named: "Green_6.png")
        var green_7 = UIImage(named: "Green_7.png")
        var green_8 = UIImage(named: "Green_8.png")
        var green_9 = UIImage(named: "Green_9.png")
        var green_Draw = UIImage(named: "Green_Draw.png")
        var green_Skip = UIImage(named: "Green_Skip.png")
        var green_Reverse = UIImage(named: "Green_Reverse.png")
        var wild_Draw = UIImage(named: "Wild_Draw.png")
        var wild = UIImage(named: "Wild.png")
        
        return "\(color)_\(number).png"
        
    }
    
   
}

var cards : [Card] = []

var color = ["Red", "Yellow", "Blue", "Green"]
var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
for colors in color{
    for number in 0...9{
        cards.append(Card(color: colors, number: number))
            
    }
}
      for colors in color{
          for number in 1...9{
              cards.append(Card(color: colors, number: number))
              
          }
      }



// لا تقم بإزالة الملاحظات إلا عند وصولك للمطلوب الثالث


let randomCard = cards.randomElement()!
let randomCardImage = UIImage(named:randomCard.imageName())


let cardImages = cards.map{UIImage(named: $0.imageName())}
randomCardImage
cardImages
