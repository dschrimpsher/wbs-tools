import { Controller, Get, Param } from '@nestjs/common';
import { PrismaService } from '../services/prisma.service';
import { Teachers } from '@prisma/client';

@Controller("/teachers")
export class TeacherController {
  constructor(private readonly prismaService: PrismaService) {
  }

  @Get(':id')
  async getPostById(@Param('id') id: string): Promise<Teachers> {
    return this.prismaService.teachers.findUnique({ where: { TeacherRecNo: Number(id) } });
  }
}
