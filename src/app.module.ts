import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { TeacherController } from './controllers/teacher.controller';
import { StudentController } from './controllers/student.controller';
import { PrismaService } from './services/prisma.service';
import { ContactController } from './controllers/contact.controller';
import { LessonController } from './controllers/lesson.controller';
import { AnswersController } from './controllers/answers.controller';
import { GradesController } from './controllers/grades.controller';

@Module({
  imports: [],
  controllers: [AppController, StudentController, TeacherController, ContactController, AnswersController, LessonController, GradesController],
  providers: [AppService, PrismaService],
})
export class AppModule {
}
