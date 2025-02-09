interface AnswerDto {
  AnswerRecNo: number;
  AnswerQuestionNo: string;
  AnswerCorrectAnswer: string;
}
interface LessonDto  {
  LessonRecNo: number;
  LessonName: string;
  LessonShortName: string;
  Answers: AnswerDto[];
}