## Quine 프로그램 만들기

### 목적
- 자기 자신의 소스 코드를 출력하는 프로그램 만들기

### 과정
- C언어로 자기 자신을 출력할 수 있는 printf 트릭 확인
- Intel 문법의 Assembly(x64) 공부

### 구현
- 매크로 함수를 활용한 Grace 구현
- fopen, fread, fclose 함수를 활용한 Sully 구현
- calling convention, stack alignment를 지키며 Assembly 작성
