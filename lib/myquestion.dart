import 'dart:math';
import 'question.dart';

Random random = new Random();

class MyQuestion {
  int question_number = 999;
  List question_list1 = [];

  List<Quiz> question_list = [
    Quiz(
        q: 'ข้อใดคือสูตรทั่วไปของแอลเคนโซ่เปิด',
        c1: 'CnH2n+2',
        c2: 'CnH2n',
        c3: 'CnH2n-2',
        c4: 'ไม่มีข้อถูก',
        a: 1),
    Quiz(
        q: 'ข้อใดคือโครงสร้างที่กักเก็บน้ำมันได้ดีที่สุด',
        c1: 'โครงสร้างรูปรอยเลื่อน',
        c2: 'โครงสร้างรูปโดม',
        c3: 'โครงสร้างรูปประทุนคว่ำ',
        c4: 'โครงสร้างรูประดับชั้น',
        a: 3),
    Quiz(
        q: 'สารชีวโมเลกุลใดที่มี C H O N เป็นองค์ประกอบหลัก',
        c1: 'คาร์โบไฮเดรต',
        c2: 'โปรตีน',
        c3: 'ไขมัน',
        c4: 'ไม่มีข้อถูก',
        a: 2),
    Quiz(
        q: 'ผลิตภัณฑ์จากปิโตรเลียมในข้อใดมีจุดเดือดต่ำสุด',
        c1: 'น้ำมันเตา',
        c2: 'น้ำมันดีเซล',
        c3: 'ก๊าซธรรมชาติ',
        c4: 'ยางมะตอย',
        a: 3),
    Quiz(
        q: 'ข้อใดมาจากโพลิเมอไรเซชันแบบควบแน่น',
        c1: 'PVC',
        c2: 'PS',
        c3: 'Nylon 6,6',
        c4: 'HDPE',
        a: 3),
    Quiz(
        q: 'น้ำมัน E85 ตรงกับข้อใด',
        c1: 'เบนซินออกเทน 85(80%): เอทานอล(20%)',
        c2: 'เบนซินออกเทน 95(85%): เอทานอล(15%)',
        c3: 'เบนซินออกเทน 85(15%): เอทานอล(85%)',
        c4: 'เบนซินออกเทน 95(15%): เอทานอล(85%)',
        a: 4),
    Quiz(
        q: 'ข้อใดไม่ใช่น้ำตาลรีดิวซ์',
        c1: 'Lactose',
        c2: 'Galactose',
        c3: 'moltose',
        c4: 'Sucrose',
        a: 4),
    Quiz(
        q: 'ข้อใดถูกต้อง',
        c1: 'sucrose = glucose + fructose, maltose = glucose + glucose',
        c2: 'sucrose = glucose + glucose, maltose = glucose + fructose',
        c3: 'sucrose = glucose + galactose, maltose = galactose + fructose',
        c4: 'sucrose = galactose + fructose, maltose = glucose + galactose',
        a: 1),
    Quiz(
        q: 'หมู่ฟังก์ชันของเอสเทอร์คือข้อใด',
        c1: 'ไฮดรอกซิล',
        c2: 'แอลคอกซีคาร์บอนิล',
        c3: 'คาร์บอกซิล',
        c4: 'คาร์บอนิล',
        a: 2),
    Quiz(
        q: 'pentan-2-ol ตรงกับข้อใด',
        c1: 'CH3CH(OH)CH2CH2CH3',
        c2: 'CH3CH2CH(OH)CH2CH3',
        c3: 'CH3CH2CH2CH2CH2OH',
        c4: 'CH3CH2(OH)CH2CH2CH3',
        a: 1),
    Quiz(
        q: 'สารใดเมื่อทดสอบกับ CuSO4 ไม่ได้สีน้ำเงินม่วง',
        c1: 'น้ำเต้าหู้',
        c2: 'ไข่ขาว',
        c3: 'นม',
        c4: 'น้ำแป้ง',
        a: 4),
    Quiz(
        q: 'ข้อใดคือสูตรทั่วไปของแอลเคนแบบวง',
        c1: 'CnH2n+2',
        c2: 'CnH2n',
        c3: 'CnH2n-2',
        c4: 'ไม่มีข้อถูก',
        a: 2),
  ];

  MyQuestion() {
    question_list1 = question_list.map((v) => v).toList();
  }

  int questionlen() {
    return question_list.length;
  }

  void nextQuestion() {
    if (question_list1.length > 1) {
      question_list1.remove(question_list1[question_number]);
    }
  }

  String? getQuestion() {
    question_number = random.nextInt(question_list1.length);
    return question_list1[question_number].question;
  }

  int? getAnswer() {
    return question_list1[question_number].answer;
  }

  String? getChoice1() {
    return question_list1[question_number].choice1;
  }

  String? getChoice2() {
    return question_list1[question_number].choice2;
  }

  String? getChoice3() {
    return question_list1[question_number].choice3;
  }

  String? getChoice4() {
    return question_list1[question_number].choice4;
  }

  bool isFinished() {
    if (question_list1.length == 1) {
      return true;
    } else {
      return false;
    }
  }

  void resets() {
    question_number = 999;
    question_list1 = question_list.map((v) => v).toList();
  }
}
