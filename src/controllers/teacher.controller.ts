import { Controller, Get, Param } from '@nestjs/common';
import { TeacherService } from '../services/teacher.service';
import { Request } from 'express';
import { TeacherDto } from "../types/teacher.dto";

@Controller("/teacher")
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
