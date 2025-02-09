import { Controller, Get, Param } from '@nestjs/common';
import { PrismaService } from '../services/prisma.service';
import { Answers, Lessons } from '@prisma/client';

@Controller("/answers")
export class AnswersController {
  constructor(private readonly prismaService: PrismaService) {
  }

  @Get(':lessonId')
  async getAnswersByLesson(@Param('lessonId') lessonId: string): Promise<Answers[]> {
    return this.prismaService.answers.findMany({ where: { AnswerLessonsRecNo: Number(lessonId) } });
  }

}
