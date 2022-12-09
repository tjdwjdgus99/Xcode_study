//  defer 미루다
//  defer를 이용해 코드블록(스코프)
//  마지막에 원하는 처리가 가능합니다

func say() {
    print("하나")
    defer {
        //  현재 say 메소드 안에서
        //  제일 마지막에 실행됩니다
        print("이라고 말했다")
    }
    print("둘")
    print("셋")
}
say()

