import { Controller, Get, Param } from '@nestjs/common';
import { PrismaService } from '../services/prisma.service';
import { Answers, Lessons } from '@prisma/client';


@Controller("/lessons")
export class LessonController {
  constructor(private readonly prismaService: PrismaService) {
  }

  @Get('')
  async getAll(): Promise<LessonDto[]> {
    const lessons =  await this.prismaService.lessons.findMany();
    const lessonDto: LessonDto[] = [];
    for (const lesson of lessons) {
      const ans: Answers[] = await this.prismaService.answers.findMany(
        {where: {AnswerLessonsRecNo: Number(lesson.LessonRecNo)}});
      lessonDto.push({
        ...lesson,
        Answers: ans,
      });
    }
    return lessonDto;
  }

  @Get(':id')
  async getPostById(@Param('id') id: string): Promise<LessonDto> {
    const l: Lessons = await this.prismaService.lessons.findUnique({ where: { LessonRecNo: Number(id) } });
    const ans: Answers[] = await this.prismaService.answers.findMany({where: {AnswerLessonsRecNo: Number(id)}});
    const l2: LessonDto = {
      ...l,
     Answers: ans.map( (e: Answers) => { return e as AnswerDto; }),
    }
    return l2;
  }


}
