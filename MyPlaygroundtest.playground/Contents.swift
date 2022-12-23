
var x:[String] = ["A","B","A","B","A","A","A","A"]
//func xx(){
//    if x[0] == "A" {
//        x[0] = "B"
//        return
//    }
//}
//xx()
//x[0]

//func y(){
//    for i in 0...7 {
//        if x[i] == "A" {
//            x[i] = "B"
//        } else if x[i] == "B"{
//            x[i] = "A"
//        }
//    }
//}
//
//y()
//x[0]
//x[1]
//x[2]
//x[3]
//x[4]
//x[5]
//x[6]
//x[7]

func y(){
    for i in x.indices {
        if x[i] == "A" {
            x[i] = "B"
            
        } else if x[i] == "B"{
            x[i] = "A"
        }
    }
}

y()
x[0]
x[1]
x[2]
x[3]
x[4]
x[5]
x[6]
x[7]

//for i in lovers.indices {
//    lovers[i].height += 10
//}

