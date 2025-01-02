import { Injectable } from '@nestjs/common';
import { TeacherDto } from "../types/teacher.dto";

@Injectable()
export class TeacherService {
  async getTeachers(): Promise<TeacherDto[]> {
    return [
      {
        TeacherRecNo: 1,
        TeacherWBSID: 'TCHR001',
        TeacherFirstName: 'John',
        TeacherLastName: 'Doe',
        TeacherPictureName: 'john_doe.jpg',
        TeacherPictureData: 'base64EncodedImageStringHere',
      },
      {
        TeacherRecNo: 2,
        TeacherWBSID: 'TCHR002',
        TeacherFirstName: 'Jane',
        TeacherLastName: 'Smith',
        TeacherPictureName: 'jane_smith.png',
        TeacherPictureData: 'base64EncodedImageStringHere',
      },
      {
        TeacherRecNo: 3,
        TeacherWBSID: 'TCHR003',
        TeacherFirstName: 'Alice',
        TeacherLastName: 'Johnson',
      },
      {
        TeacherRecNo: 4,
        TeacherWBSID: 'TCHR004',
        TeacherFirstName: 'Michael',
        TeacherLastName: 'Brown',
        TeacherPictureName: 'michael_brown.jpg',
      },
    ];
  }

  async getTeacher(id: string): Promise<TeacherDto> {
    return {
      TeacherRecNo: 4,
      TeacherWBSID: 'TCHR004',
      TeacherFirstName: 'Michael',
      TeacherLastName: 'Brown',
      TeacherPictureName: 'michael_brown.jpg',
      TeacherPictureData: 'base64EncodedImageStringHere',
    };
  }
}
