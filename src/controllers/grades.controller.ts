import { Body, Controller, Get, Param, Post, Put } from '@nestjs/common';
import { PrismaService } from '../services/prisma.service';
import { Answers, Grades, Lessons } from '@prisma/client';

@Controller("/grades")
export class GradesController {
  constructor(private readonly prismaService: PrismaService) {
  }

  @Get(':studentId')
  async getGradesByStudent(@Param('studentId') studentId: string): Promise<Grades[]> {
    return this.prismaService.grades.findMany({ where: { GradeStudentsRecNo: Number(studentId) } });
  }

  @Post('')
  async createGradesByLesson(@Body('gradeInfo') gradeInfo: GradeCreateDto): Promise<Grades> {
    const updatedGrade: Grades = {
      ...gradeInfo,
      GradeDateReceived: new Date(),
      GradeDateSent: new Date(),
    } as unknown as Grades
    const result = await this.prismaService.grades.create({data: updatedGrade});
    console.log(result);
    return result;
  }

}
