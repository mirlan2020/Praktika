//Перейдём к практическим заданиям:
//
//Создайте кортеж для двух человек с одинаковыми типами данных и параметрами.
//При том одни значения доставайте по индексу, а другие — по параметру.
//Пример (для демонстрации задачи, чтобы было понимание, что надо делать):
//----------------------------------------------------------
//Создайте массив «дни в месяцах» (12 элементов содержащих количество дней в соответствующем месяце).
//Используя цикл for и этот массив:
//выведите количество дней в каждом месяце
//используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней
//сделайте тоже самое, но используя массив кортежей с параметрами (имя месяца, количество дней)
//сделайте тоже самое, только выводите дни в обратном порядке (порядок в исходном массиве не меняется)
//для произвольно выбранной даты (месяц и день) посчитайте количество дней до конца года
//-------------------------------------------------------------
//Создайте словарь, как журнал студентов, где имя и фамилия студента это ключ, а оценка за экзамен — значение.
//Повысьте студенту оценку за экзамен
//Если оценка положительная (4 или 5) или удовлетворительная (3), то выведите сообщение с поздравлением, отрицательная (1, 2) - отправьте на пересдачу
//Добавьте еще несколько студентов — это ваши новые одногруппники!
//Удалите одного студента — он отчислен
//Посчитайте средний балл всей группы по итогам экзамена.
//---------------------------------------------------------------
//Критерии оценки выполненного задания
//
// 1. Есть кортеж для двух человек с одинаковыми типами данных.
// 2. У одного из кортежей значения достали по индексу, у другого — по параметру.
// 3. Есть массив «дни в месяцах».
// 4. Выведено количество дней в каждом месяце.
// 5. Есть массив с названиями месяцев.
// 6. Выведено количество дней в каждом месяце (название месяца + количество дней).
// 7. Есть кортеж с параметрами (имя месяца, количество дней).
// 8. Выведены имя месяца, количество дней в обратном порядке без изменения исходного массива.
// 9. Создан словарь, как журнал студентов, где имя и фамилия студента — это ключ, а оценка за экзамен — значение.
// 10. Повысили оценку студенту.
// 11. Если оценка положительная (4 или 5) или удовлетворительная (3), выведено сообщение с поздравлением, отрицательная (1, 2) — студента отправили на пересдачу.
// 12. Добавлено ещё несколько студентов.
// 13. Один студент удалён (любым способом).
// 14. Посчитан средний балл группы по итогам экзамена.

//-------------------------------------------------------
import UIKit


let someTuple = (age: 0, name: "some name", surname: "some surname")
let someTwoTuple = (age: 0, name: "some two name", surname: "some two surname")
someTuple.0
someTuple.1
someTuple.2
someTwoTuple.age
someTwoTuple.name
someTwoTuple.surname
//--------------------------------------------------------
print("----------------------------------------------")

let months = ["januar", "vebruar", "mart", "april", "may", "june", "july", "august", "september", "oktober", "november", "december"]
let days = [31,28,31,30,31,30,31,31,30,31,30,31]

//Используя цикл for и этот массив: выведите количество дней в каждом месяце

for index in 0...11 {
    print(days[index])
}
print("----------------------------------------------")

//используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней

for i in 0...11 {
    print("in \(months[i]) have \(days[i]) days")
}
print("----------------------------------------------")

//сделайте тоже самое, но используя массив кортежей с параметрами (имя месяца, количество дней)

let daysInMonths = [("januar", 31), ("vebruar", 28), ("mart", 31), ("april", 30), ("may", 31), ("june", 30), ("july", 31), ("august", 31), ("september", 30), ("oktober", 31), ("november", 30), ("detsember", 31)]
//variant 1
for i in 0..<daysInMonths.count {
    print(daysInMonths[i])
}
print("----------------------------------------------")

//variant 2
daysInMonths.forEach { (element) in
    print(element)
}
print("----------------------------------------------")
//сделайте тоже самое, только выводите дни в обратном порядке (порядок в исходном массиве не меняется)

for i in (0...daysInMonths.count-1).reversed(){
    print(daysInMonths[i])
}
print("----------------------------------------------")
//для произвольно выбранной даты (месяц и день) посчитайте количество дней до конца года

var day = 22
var month = 10
var remainingDays = days[month-1] - day
for monthNumber in 11...12 {
    remainingDays += days[monthNumber - 1]
}
print(remainingDays)

print("------------------------------------------------")
//Создайте словарь, как журнал студентов, где имя и фамилия студента это ключ, а оценка за экзамен — значение.
var studentjournal = ["Mirlan Mederbekov": 3, "Oleg Tarasov": 4, "Elena Novikova": 5]
print(studentjournal
)
var sumNote = 0
var midNote = 0.0


//Повысьте студенту оценку за экзамен
studentjournal.updateValue(5, forKey: "Mirlan Mederbekov")
print(studentjournal)

//Если оценка положительная (4 или 5) или удовлетворительная (3), то выведите сообщение с поздравлением, отрицательная (1, 2) - отправьте на пересдачу

var score = 4
switch score {
case 1...2:
    print("Idite na Peresdachu !")
case 3...5:
    print("Pozdravljaju, Vy sdali exzamen !")
default:
    break
}

//Добавьте еще несколько студентов — это ваши новые одногруппники!

studentjournal ["Egor Anisimov"] = 4
studentjournal ["Inna Smirnova"] = 2
print(studentjournal)

//Удалите одного студента — он отчислен

studentjournal ["Elena Novikova"] = nil
print(studentjournal)


//Посчитайте средний балл всей группы по итогам экзамена.

for (_, value) in studentjournal {
    sumNote += value
}
midNote = Double(sumNote) / Double(studentjournal.count)
print(midNote)
