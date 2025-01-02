import { Injectable } from '@nestjs/common';
import { StudentDto } from "../types/student.dto";

@Injectable()
export class StudentService {
  async getStudents(): Promise<StudentDto[]> {
    return [
      {
        "StudentRecNo": 24679,
        "StudentID": "24679",
        "StudentWBSID": "AL-025",
        "StudentTeachersRecNo": 88,
        "StudentContactsRecNo": 4,
        "StudentFirstName": "LUCKSON",
        "StudentLastName": "JIMU",
        "StudentAge": 28,
        "StudentBirthdate": "2022-02-19",
        "StudentGender": "M",
        "StudentMaritalStatus": "Single",
        "StudentReligion": "Baptist",
        "StudentChurchName": "a",
        "StudentWBSBefore": "No",
        "StudentCountry": "ZIMBABWE",
        "StudentState": "HARARE",
        "StudentCity": "CHITUNGWIZA",
        "StudentPostalAddress": " STC\n",
        "StudentEmailAddress": "",
        "StudentPhone1": "",
        "StudentPhone2": "",
        "StudentStreetAddress": "STC",
        "StudentOccupation": "student",
        "StudentHasBeenBaptized": "Yes",
        "StudentBaptismType": "",
        "StudentRequestedBaptism": "",
        "StudentHasBible": "Yes",
        "StudentBibleIssuedDate": null,
        "StudentNotes": "",
        "StudentCountriesRecNo": 1
      },
    ];
  }

  async getStudent(id: string): Promise<StudentDto> {
    return {
      "StudentRecNo": 24679,
      "StudentID": "24679",
      "StudentWBSID": "AL-025",
      "StudentTeachersRecNo": 88,
      "StudentContactsRecNo": 4,
      "StudentFirstName": "LUCKSON",
      "StudentLastName": "JIMU",
      "StudentAge": 28,
      "StudentBirthdate": "2022-02-19",
      "StudentGender": "M",
      "StudentMaritalStatus": "Single",
      "StudentReligion": "Baptist",
      "StudentChurchName": "a",
      "StudentWBSBefore": "No",
      "StudentCountry": "ZIMBABWE",
      "StudentState": "HARARE",
      "StudentCity": "CHITUNGWIZA",
      "StudentPostalAddress": " STC\n",
      "StudentEmailAddress": "",
      "StudentPhone1": "",
      "StudentPhone2": "",
      "StudentStreetAddress": "STC",
      "StudentOccupation": "student",
      "StudentHasBeenBaptized": "Yes",
      "StudentBaptismType": "",
      "StudentRequestedBaptism": "",
      "StudentHasBible": "Yes",
      "StudentBibleIssuedDate": null,
      "StudentNotes": "",
      "StudentCountriesRecNo": 1
    };
  }
}
