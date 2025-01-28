class BmiResult {
  final double bmi;
  final String result;

  BmiResult(this.bmi)
      : result = bmi < 18.5
            ? '저체중'
            : bmi < 23
                ? '정상'
                : bmi < 25
                    ? '과체중'
                    : bmi < 30
                        ? '비만'
                        : '고도비만';
}
