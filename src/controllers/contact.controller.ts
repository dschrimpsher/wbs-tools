import { Controller, Get, Param } from '@nestjs/common';
import { PrismaService } from '../services/prisma.service';
import { Contacts } from '@prisma/client';

@Controller('/contacts')
export class ContactController {
  constructor(private readonly prismaService: PrismaService) {
  }

  @Get(':id')
  async getContractById(@Param('id') id: string): Promise<Contacts> {
    console.log(id);
    return this.prismaService.contacts.findUnique({ where: { ContactRecNo: Number(id) } });
  }


}
