import { Controller, Get, Param } from '@nestjs/common';
import { PrismaService } from '../services/prisma.service';
import { Students } from '@prisma/client';

@Controller("/students")
export class StudentController {
  constructor(private readonly prismaService: PrismaService) {
  }

  @Get(':id')
  async getPostById(@Param('id') id: string): Promise<Students> {
    return this.prismaService.students.findUnique({ where: { StudentRecNo: Number(id) } });
  }


}
