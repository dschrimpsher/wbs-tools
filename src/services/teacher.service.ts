import { Injectable } from '@nestjs/common';
import { TeacherDto } from "../types/teacher.dto";

@Injectable()
export class TeacherService {
  async getTeachers(): Promise<TeacherDto[]> {
    return [{
      name: 'Fred',
    }];
  }

  async getTeacher(id: string): Promise<TeacherDto> {
    return {
      name: 'Fred',
    };
  }
}
