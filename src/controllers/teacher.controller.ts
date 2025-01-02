import { Controller, Get, Param } from '@nestjs/common';
import { TeacherService } from '../services/teacher.service';
import { TeacherDto } from "../types/teacher.dto";

@Controller("/teachers")
export class TeacherController {
  constructor(private readonly teacherService: TeacherService) {}

  @Get()
  async getTeachers(): Promise<TeacherDto[]> {
    return this.teacherService.getTeachers();
  }

  @Get(':id')
  async getTeacher(@Param('id') id: string): Promise<TeacherDto> {
    return this.teacherService.getTeacher(id);
  }
}
