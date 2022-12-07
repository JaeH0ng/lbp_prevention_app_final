class ToExercise {
  String? id;
  String? title;
  String? leading;
  String? timeAndRest;
  String? sets;
  bool isType;

  ToExercise({
    required this.id,
    required this.title,
    this.leading,
    this.timeAndRest,
    this.sets,
    this.isType = false,
  });

  static List<ToExercise> toexerciseList() {
    return [
      // 복근운동
      ToExercise(id: '01', title: '<복근 운동>', isType: true),
      ToExercise(
          id: '02',
          leading: '①',
          title: 'Dead Bug',
          timeAndRest: '세트 당 15초 & 15초 휴식',
          sets: 'Sets : 2'),
      ToExercise(
          id: '03',
          leading: '②',
          title: 'Trunk Curl Sit Up',
          timeAndRest: '세트 당 30초 & 15초 휴식',
          sets: 'Sets : 2'),
      // 등운동
      ToExercise(id: '04', title: '<등 운동>', isType: true),
      ToExercise(
          id: '05',
          leading: '③',
          title: 'Superman',
          timeAndRest: '세트 당 15초 & 30초 휴식',
          sets: 'Sets : 3'),
      ToExercise(
          id: '06',
          leading: '④',
          title: '장요근 늘리기',
          timeAndRest: '세트 당 25초 & 30초 휴식',
          sets: 'Sets : 2'),
      // 공통 운동
      ToExercise(id: '07', title: '<공통 운동>', isType: true),
      ToExercise(
          id: '08',
          leading: '⑤',
          title: 'Bird Dog',
          timeAndRest: '세트 당 5초 & 30초 휴식',
          sets: 'Sets : 8'),
      ToExercise(
          id: '09',
          leading: '⑥',
          title: 'Bridge',
          timeAndRest: '세트 당 10초 & 10초 휴식',
          sets: 'Sets : 2'),
      // 정리 운동
      ToExercise(id: '10', title: '<정리 운동>', isType: true),
      ToExercise(
          id: '11',
          leading: '⑦',
          title: '코브라 자세',
          timeAndRest: '세트 당 15초 & 5초 휴식',
          sets: 'Sets : 3'),
      ToExercise(
          id: '12',
          leading: '⑧',
          title: '누워서 무릎 갖다 대기',
          timeAndRest: '세트 당 15초 & 5초 휴식',
          sets: 'Sets : 2'),
    ];
  }
}
