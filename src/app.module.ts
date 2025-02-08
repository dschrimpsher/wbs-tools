import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { TeacherController } from './controllers/teacher.controller';
import { StudentController } from './controllers/student.controller';
import { PrismaService } from './services/prisma.service';
import { ContactController } from './controllers/contact.controller';

@Module({
  imports: [],
  controllers: [ AppController, StudentController, TeacherController, ContactController ],
  providers: [ AppService, PrismaService ],
})
export class AppModule {
}
