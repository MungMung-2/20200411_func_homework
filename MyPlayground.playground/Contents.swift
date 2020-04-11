import UIKit

// 4. 11 작성 완료. 3번째 문제는 한번더 체크해 볼것...

/* 4. 10. 금요일 과제.

 스위프트 함수 숙제.
 [ 과제 ]
 문제에서 요구하는 함수 정의하기
 - 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수
 - 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수
 - 정수를 두 개 입력 받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)
 - 4과목의 시험 점수를 입력받아 평균 점수를 반환하는 함수
 - 점수를 입력받아 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)
 - 가변 인자 파라미터를 이용해 점수를 여러 개 입력받아 평균 점수에 대한 학점을 반환하는 함수 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)

 */

// 1. 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수

func Intro(name:String, age:Int) {
    print("이름은 \(name), 나이는 \(age) 세 입니다. ")
}
Intro(name: "소녀시대", age: 33)

// 2.  - 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수

func MultiCheck (InputNumber:Int) -> Bool {
        
    if
        InputNumber % 2  == 0 {
        return true
                    }
    else {
        return false
    }
}

let digit = 11
var check : Bool = true
check = MultiCheck(InputNumber: digit)
print("입력값 \(digit) 이고, 2의 배수 여부는 \(check) 입니다.")

// 3. 정수를 두 개 입력 받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)

func Multiplay(_ a:Int,_ b:Int=10) -> Int {
    return a * b
}
var result = 0
result = Multiplay(10)
print("곱하기 결과 : \(result)")

// 4. 4과목의 시험 점수를 입력받아 평균 점수를 반환하는 함수

func Average(korean:Int, english:Int, math:Int, scsience:Int) -> Int {
    return (korean + english + math + scsience) / 4
}

var averegescore = Average(korean: 90, english: 85, math: 90, scsience: 84)
print("4과목의 시험 점수의 평균은 \(averegescore) 입니다.")

// 점수를 입력받아 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)

func Scoreboard(korean:Int, english:Int, math:Int, scsience:Int) ->String{
    
    var avgscore : Int = 0
    var score : String = ""
    
    avgscore = (korean + english + math + scsience) / 4
    
        if avgscore >= 90 {
            score = "A"
            }   else if
                avgscore >= 80 {
                score = "B"
                return score
            }   else if
                avgscore >= 70 {
                score = "C"
                return score

            }
                avgscore <= 70
                score = "F"
                return score
}

var total : String = ""
total = Scoreboard(korean: 88, english: 85, math: 81, scsience: 90)
print("학점 평균은 \(total) 입니다.")

//  - 5. 가변 인자 파라미터를 이용해 점수를 여러 개 입력받아 평균 점수에 대한 학점을 반환하는 함수 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)

func autoAverage(_ subjects:Int...) -> String {
    
    var total : Int = 0
    var averageInt : Int = 0
    
    for subject in subjects {
        total += subject
    }
    
    averageInt = total / subjects.count
    
    if averageInt >= 90 {
        return "A"
    } else if
        averageInt >= 80 {
        return "B"
    } else if
        averageInt >= 70 {
        return "C"
    }
        return "F"
}

var hacjum : String = ""
hacjum = autoAverage(50,50,60,30,50,30,20,10,40,30)

print("학점 평균은 \(hacjum) 입니다.")

