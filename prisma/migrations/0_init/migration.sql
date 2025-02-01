-- CreateTable
CREATE TABLE `Answers`
(
  `AnswerRecNo`         INTEGER    NOT NULL AUTO_INCREMENT,
  `AnswerLessonsRecNo`  INTEGER    NULL,
  `AnswerQuestionNo`    VARCHAR(5) NOT NULL,
  `AnswerCorrectAnswer` VARCHAR(1) NOT NULL,

  INDEX `FK_LessonsRecNo_idx` (`AnswerLessonsRecNo`),
  PRIMARY KEY (`AnswerRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Attachments`
(
  `AttachmentRecNo`         INTEGER                                    NOT NULL AUTO_INCREMENT,
  `AttachmentStudentsRecNo` INTEGER                                    NOT NULL,
  `AttachmentName`          VARCHAR(255)                               NOT NULL,
  `AttachmentData`          MEDIUMBLOB                                 NOT NULL,
  `AttachmentType`          ENUM ('', 'Graded Lesson', 'Answer Sheet') NULL DEFAULT 'Graded Lesson',
  `AttachmentCreated`       DATETIME(0)                                NOT NULL,
  `AttachmentSentToContact` DATETIME(0)                                NULL,
  `AttachmentContactsRecNo` INTEGER                                    NOT NULL,
  `AttachmentSelected`      ENUM ('True', 'False')                     NULL DEFAULT 'False',

  UNIQUE INDEX `AttachmentRecNo_UNIQUE` (`AttachmentRecNo`),
  INDEX `StudentRecNo_idx` (`AttachmentStudentsRecNo`),
  PRIMARY KEY (`AttachmentRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Comments`
(
  `CommentRecNo`   INTEGER     NOT NULL AUTO_INCREMENT,
  `CommentTag`     VARCHAR(45) NOT NULL,
  `CommentContent` TEXT        NOT NULL,

  INDEX `Tags` (`CommentTag`),
  PRIMARY KEY (`CommentRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CommentsBWS`
(
  `CommentRecNo`   INTEGER     NOT NULL AUTO_INCREMENT,
  `CommentTag`     VARCHAR(45) NOT NULL,
  `CommentContent` TEXT        NOT NULL,

  INDEX `Tags` (`CommentTag`),
  PRIMARY KEY (`CommentRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CommentsBWS50Q`
(
  `CommentRecNo`   INTEGER     NOT NULL AUTO_INCREMENT,
  `CommentTag`     VARCHAR(45) NOT NULL,
  `CommentContent` TEXT        NOT NULL,

  INDEX `Tags` (`CommentTag`),
  PRIMARY KEY (`CommentRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CommentsFOG`
(
  `CommentRecNo`   INTEGER     NOT NULL AUTO_INCREMENT,
  `CommentTag`     VARCHAR(45) NOT NULL,
  `CommentContent` TEXT        NOT NULL,

  INDEX `Tags` (`CommentTag`),
  PRIMARY KEY (`CommentRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CommentsFOG50Q`
(
  `CommentRecNo`   INTEGER     NOT NULL AUTO_INCREMENT,
  `CommentTag`     VARCHAR(45) NOT NULL,
  `CommentContent` TEXT        NOT NULL,

  INDEX `Tags` (`CommentTag`),
  PRIMARY KEY (`CommentRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CommentsGHS`
(
  `CommentRecNo`   INTEGER     NOT NULL AUTO_INCREMENT,
  `CommentTag`     VARCHAR(45) NOT NULL,
  `CommentContent` TEXT        NOT NULL,

  INDEX `Tags` (`CommentTag`),
  PRIMARY KEY (`CommentRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CommentsGHS50Q`
(
  `CommentRecNo`   INTEGER     NOT NULL AUTO_INCREMENT,
  `CommentTag`     VARCHAR(45) NOT NULL,
  `CommentContent` TEXT        NOT NULL,

  INDEX `Tags` (`CommentTag`),
  PRIMARY KEY (`CommentRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CommentsIntro`
(
  `CommentRecNo`   INTEGER     NOT NULL AUTO_INCREMENT,
  `CommentTag`     VARCHAR(45) NOT NULL,
  `CommentContent` TEXT        NOT NULL,

  INDEX `Tags` (`CommentTag`),
  PRIMARY KEY (`CommentRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CommentsKJ`
(
  `CommentRecNo`   INTEGER     NOT NULL AUTO_INCREMENT,
  `CommentTag`     VARCHAR(45) NOT NULL,
  `CommentContent` TEXT        NOT NULL,

  INDEX `Tags` (`CommentTag`),
  PRIMARY KEY (`CommentRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CommentsKJ50Q`
(
  `CommentRecNo`   INTEGER     NOT NULL AUTO_INCREMENT,
  `CommentTag`     VARCHAR(45) NOT NULL,
  `CommentContent` TEXT        NOT NULL,

  INDEX `Tags` (`CommentTag`),
  PRIMARY KEY (`CommentRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CommentsLLL`
(
  `CommentRecNo`   INTEGER     NOT NULL AUTO_INCREMENT,
  `CommentTag`     VARCHAR(45) NOT NULL,
  `CommentContent` TEXT        NOT NULL,

  INDEX `Tags` (`CommentTag`),
  PRIMARY KEY (`CommentRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CommentsLLL50Q`
(
  `CommentRecNo`   INTEGER     NOT NULL AUTO_INCREMENT,
  `CommentTag`     VARCHAR(45) NOT NULL,
  `CommentContent` TEXT        NOT NULL,

  INDEX `Tags` (`CommentTag`),
  PRIMARY KEY (`CommentRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CommentsTIGN`
(
  `CommentRecNo`   INTEGER     NOT NULL AUTO_INCREMENT,
  `CommentTag`     VARCHAR(45) NOT NULL,
  `CommentContent` TEXT        NOT NULL,

  INDEX `Tags` (`CommentTag`),
  PRIMARY KEY (`CommentRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CommentsTIGN50Q`
(
  `CommentRecNo`   INTEGER     NOT NULL AUTO_INCREMENT,
  `CommentTag`     VARCHAR(45) NOT NULL,
  `CommentContent` TEXT        NOT NULL,

  INDEX `Tags` (`CommentTag`),
  PRIMARY KEY (`CommentRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Contacts`
(
  `ContactRecNo`     INTEGER     NOT NULL AUTO_INCREMENT,
  `ContactWBSID`     VARCHAR(10) NOT NULL,
  `ContactFirstName` VARCHAR(32) NOT NULL,
  `ContactLastName`  VARCHAR(17) NOT NULL,
  `ContactPrefix`    VARCHAR(4)  NOT NULL DEFAULT '',

  UNIQUE INDEX `Contacts_RecNo_UNIQUE` (`ContactRecNo`),
  INDEX `FK_Contacts_WBSRecNo_idx` (`ContactWBSID`),
  PRIMARY KEY (`ContactRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Countries`
(
  `CountriesRecNo` INTEGER     NOT NULL AUTO_INCREMENT,
  `CountryName`    VARCHAR(45) NULL DEFAULT 'Null',

  UNIQUE INDEX `CountriesRecNo_UNIQUE` (`CountriesRecNo`),
  UNIQUE INDEX `CountryName_UNIQUE` (`CountryName`),
  PRIMARY KEY (`CountriesRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Grades`
(
  `GradeRecNo`         INTEGER NOT NULL AUTO_INCREMENT,
  `GradeDateGraded`    DATE    NULL,
  `GradeLessonsRecNo`  INTEGER NULL,
  `GradeScore`         INTEGER NULL,
  `GradeStudentsRecNo` INTEGER NULL,
  `GradeDateSent`      DATE    NOT NULL DEFAULT '0001-01-01',
  `GradeDateReceived`  DATE    NOT NULL DEFAULT '0001-01-01',
  `GradeComments`      TEXT    NOT NULL,

  INDEX `fk_lessons_idx` (`GradeLessonsRecNo`),
  INDEX `fk_students_idx` (`GradeStudentsRecNo`),
  UNIQUE INDEX `idx_students_lessons` (`GradeLessonsRecNo`, `GradeStudentsRecNo`),
  PRIMARY KEY (`GradeRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Lessons`
(
  `LessonRecNo`     INTEGER     NOT NULL,
  `LessonName`      VARCHAR(30) NOT NULL,
  `LessonShortName` VARCHAR(12) NOT NULL,

  UNIQUE INDEX `RecNo_UNIQUE` (`LessonRecNo`),
  UNIQUE INDEX `Name_UNIQUE` (`LessonName`),
  UNIQUE INDEX `ShortName_UNIQUE` (`LessonShortName`),
  PRIMARY KEY (`LessonRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Religions`
(
  `ReligionRecNo` INTEGER     NOT NULL AUTO_INCREMENT,
  `ReligionName`  VARCHAR(45) NULL DEFAULT 'Null',

  UNIQUE INDEX `ReligionRecNo_UNIQUE` (`ReligionRecNo`),
  PRIMARY KEY (`ReligionRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Students`
(
  `StudentRecNo`            INTEGER                                               NOT NULL AUTO_INCREMENT,
  `StudentID`               VARCHAR(10)                                           NULL,
  `StudentWBSID`            VARCHAR(10)                                           NULL     DEFAULT 'AL-025',
  `StudentTeachersRecNo`    INTEGER                                               NULL     DEFAULT 1,
  `StudentContactsRecNo`    INTEGER                                               NULL     DEFAULT 1,
  `StudentFirstName`        VARCHAR(32)                                           NOT NULL DEFAULT '',
  `StudentLastName`         VARCHAR(17)                                           NOT NULL DEFAULT '',
  `StudentAge`              INTEGER                                               NULL     DEFAULT 0,
  `StudentBirthdate`        DATE                                                  NULL,
  `StudentGender`           CHAR(1)                                               NOT NULL DEFAULT '',
  `StudentMaritalStatus`    ENUM ('', 'Single', 'Married')                        NULL,
  `StudentReligion`         VARCHAR(45)                                           NULL,
  `StudentChurchName`       VARCHAR(45)                                           NULL,
  `StudentWBSBefore`        ENUM ('', 'Yes', 'No')                                NULL,
  `StudentCountry`          VARCHAR(45)                                           NULL,
  `StudentState`            VARCHAR(45)                                           NULL,
  `StudentCity`             VARCHAR(45)                                           NULL,
  `StudentPostalAddress`    VARCHAR(255)                                          NULL,
  `StudentEmailAddress`     VARCHAR(255)                                          NULL,
  `StudentPhone1`           VARCHAR(45)                                           NULL,
  `StudentPhone2`           VARCHAR(45)                                           NULL,
  `StudentStreetAddress`    VARCHAR(255)                                          NULL,
  `StudentOccupation`       VARCHAR(45)                                           NULL,
  `StudentHasBeenBaptized`  ENUM ('', 'Yes', 'No')                                NULL,
  `StudentBaptismType`      ENUM ('', 'Immersed', 'Sprinkled', 'Poured', 'Other') NULL,
  `StudentRequestedBaptism` ENUM ('', 'Yes', 'No')                                NULL,
  `StudentHasBible`         ENUM ('', 'Yes', 'No')                                NULL,
  `StudentBibleIssuedDate`  DATE                                                  NULL,
  `StudentNotes`            LONGTEXT                                              NULL,
  `StudentCountriesRecNo`   INTEGER                                               NULL     DEFAULT 1,

  PRIMARY KEY (`StudentRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Teachers`
(
  `TeacherRecNo`       INTEGER      NOT NULL AUTO_INCREMENT,
  `TeacherWBSID`       VARCHAR(10)  NOT NULL,
  `TeacherFirstName`   VARCHAR(32)  NOT NULL,
  `TeacherLastName`    VARCHAR(17)  NOT NULL,
  `TeacherPictureName` VARCHAR(255) NULL,
  `TeacherPictureData` BLOB         NULL,

  UNIQUE INDEX `Teachers_RecNo_UNIQUE` (`TeacherRecNo`),
  INDEX `FK_Teachers_WBSRecNo_idx` (`TeacherWBSID`),
  PRIMARY KEY (`TeacherRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `UserLevels`
(
  `UserLevelRecNo` INTEGER     NOT NULL AUTO_INCREMENT,
  `UserLevelName`  VARCHAR(45) NULL,

  UNIQUE INDEX `UserLevelRecNo_UNIQUE` (`UserLevelRecNo`),
  UNIQUE INDEX `UserLevelName_UNIQUE` (`UserLevelName`),
  PRIMARY KEY (`UserLevelRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Users`
(
  `UserRecNo`        INTEGER     NOT NULL AUTO_INCREMENT,
  `UserName`         VARCHAR(45) NULL,
  `UserLevel`        INTEGER     NULL DEFAULT 1,
  `UserTeacherRecNo` INTEGER     NULL DEFAULT 1,
  `UserContactRecNo` INTEGER     NULL DEFAULT 1,

  UNIQUE INDEX `UserRecNo_UNIQUE` (`UserRecNo`),
  INDEX `UserLevel_idx` (`UserLevel`),
  INDEX `fkContactRecNo_idx` (`UserContactRecNo`),
  INDEX `fkTeacherRecNo_idx` (`UserTeacherRecNo`),
  PRIMARY KEY (`UserRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `teacher`
(
  `TeacherRecNo`       INTEGER      NOT NULL AUTO_INCREMENT,
  `TeacherWBSID`       VARCHAR(255) NOT NULL,
  `TeacherFirstName`   VARCHAR(255) NOT NULL,
  `TeacherLastName`    VARCHAR(255) NOT NULL,
  `TeacherPictureName` VARCHAR(255) NOT NULL,
  `TeacherPictureData` VARCHAR(255) NOT NULL,

  PRIMARY KEY (`TeacherRecNo`)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Attachments`
  ADD CONSTRAINT `fk_studentrecno` FOREIGN KEY (`AttachmentStudentsRecNo`) REFERENCES `Students` (`StudentRecNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Grades`
  ADD CONSTRAINT `fk_lessons` FOREIGN KEY (`GradeLessonsRecNo`) REFERENCES `Lessons` (`LessonRecNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Grades`
  ADD CONSTRAINT `fk_students` FOREIGN KEY (`GradeStudentsRecNo`) REFERENCES `Students` (`StudentRecNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Users`
  ADD CONSTRAINT `fkContactRecNo` FOREIGN KEY (`UserContactRecNo`) REFERENCES `Contacts` (`ContactRecNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Users`
  ADD CONSTRAINT `fkTeacherRecNo` FOREIGN KEY (`UserTeacherRecNo`) REFERENCES `Teachers` (`TeacherRecNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Users`
  ADD CONSTRAINT `fkUserLevel` FOREIGN KEY (`UserLevel`) REFERENCES `UserLevels` (`UserLevelRecNo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

