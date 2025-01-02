import { Controller, Get, Param } from '@nestjs/common';
import { StudentService } from '../services/student.service';
import { StudentDto } from "../types/student.dto";

@Controller("/students")
export class StudentController {
  constructor(private readonly studentService: StudentService) {
  }

  @Get()
  async getStudents(): Promise<StudentDto[]> {
    return this.studentService.getStudents();
  }

  @Get(':id')
  async getStudent(@Param('id') id: string): Promise<StudentDto> {
    return this.studentService.getStudent(id);
  }
}
