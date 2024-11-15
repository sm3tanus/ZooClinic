USE [ZooClinic]
GO
/****** Object:  Table [dbo].[Animals]    Script Date: 29.10.2024 15:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animals](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[OwnerID] [int] NULL,
	[BreedID] [int] NULL,
	[Age] [int] NULL,
	[MedicalRecord] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 29.10.2024 15:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AnimalID] [int] NULL,
	[VeterinarianID] [int] NULL,
	[AppointmentDate] [datetime] NULL,
	[ProcedureDescription] [nvarchar](500) NULL,
	[Diagnosis] [nvarchar](500) NULL,
	[TreatmentPlan] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Breeds]    Script Date: 29.10.2024 15:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Breeds](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BreedName] [nvarchar](100) NULL,
	[SpeciesID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owners]    Script Date: 29.10.2024 15:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owners](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Speciality]    Script Date: 29.10.2024 15:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speciality](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Speciality] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Species]    Script Date: 29.10.2024 15:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Species](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SpeciesName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vaccinations]    Script Date: 29.10.2024 15:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vaccinations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AnimalID] [int] NULL,
	[VaccinationDate] [date] NULL,
	[VaccinationType] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Veterinarians]    Script Date: 29.10.2024 15:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Veterinarians](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[Login] [nchar](10) NULL,
	[Password] [nchar](10) NULL,
	[IdSpecialty] [int] NULL,
 CONSTRAINT [PK__Veterina__3214EC27B098046D] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Animals] ON 

INSERT [dbo].[Animals] ([ID], [Name], [OwnerID], [BreedID], [Age], [MedicalRecord]) VALUES (1, N'Барсик', 1, 1, 3, N'Здоров, вакцинации по графику.')
INSERT [dbo].[Animals] ([ID], [Name], [OwnerID], [BreedID], [Age], [MedicalRecord]) VALUES (2, N'Рекс', 2, 3, 5, N'Часто кашляет, назначено лечение.')
INSERT [dbo].[Animals] ([ID], [Name], [OwnerID], [BreedID], [Age], [MedicalRecord]) VALUES (3, N'Мурзик', 3, 3, 2, N'Часто линяет, здоров.')
INSERT [dbo].[Animals] ([ID], [Name], [OwnerID], [BreedID], [Age], [MedicalRecord]) VALUES (4, N'Шарик', 4, 2, 6, N'Прививка сделана, активен.')
INSERT [dbo].[Animals] ([ID], [Name], [OwnerID], [BreedID], [Age], [MedicalRecord]) VALUES (5, N'Кеша', 5, 4, 1, N'Недавний осмотр показал отличное состояние.')
INSERT [dbo].[Animals] ([ID], [Name], [OwnerID], [BreedID], [Age], [MedicalRecord]) VALUES (6, N'Тимоша', 6, 5, 1, N'Проблемы с кожей, назначено лечение.')
INSERT [dbo].[Animals] ([ID], [Name], [OwnerID], [BreedID], [Age], [MedicalRecord]) VALUES (7, N'Феликс', 7, 1, 4, N'Здоров. Прививки по графику.')
INSERT [dbo].[Animals] ([ID], [Name], [OwnerID], [BreedID], [Age], [MedicalRecord]) VALUES (8, N'Зефир', 8, 2, 5, N'Проблемы с зубами, на лечении.')
INSERT [dbo].[Animals] ([ID], [Name], [OwnerID], [BreedID], [Age], [MedicalRecord]) VALUES (9, N'Чарли', 9, 4, 7, N'Чувствует себя хорошо.')
SET IDENTITY_INSERT [dbo].[Animals] OFF
GO
SET IDENTITY_INSERT [dbo].[Appointments] ON 

INSERT [dbo].[Appointments] ([ID], [AnimalID], [VeterinarianID], [AppointmentDate], [ProcedureDescription], [Diagnosis], [TreatmentPlan]) VALUES (1, 1, 1, CAST(N'2024-01-10T10:00:00.000' AS DateTime), N'Общий осмотр', N'Здоров', N'Нет лечения')
INSERT [dbo].[Appointments] ([ID], [AnimalID], [VeterinarianID], [AppointmentDate], [ProcedureDescription], [Diagnosis], [TreatmentPlan]) VALUES (2, 2, 2, CAST(N'2024-02-10T11:00:00.000' AS DateTime), N'Операция', N'Киста', N'Удаление кисты, реабилитация')
INSERT [dbo].[Appointments] ([ID], [AnimalID], [VeterinarianID], [AppointmentDate], [ProcedureDescription], [Diagnosis], [TreatmentPlan]) VALUES (3, 3, 3, CAST(N'2024-03-10T14:30:00.000' AS DateTime), N'Осмотр', N'Здоров', N'Нет лечения')
INSERT [dbo].[Appointments] ([ID], [AnimalID], [VeterinarianID], [AppointmentDate], [ProcedureDescription], [Diagnosis], [TreatmentPlan]) VALUES (4, 4, 4, CAST(N'2024-04-10T15:00:00.000' AS DateTime), N'Консультация', N'Легкий дерматит', N'Использование мази 3 раза в день')
INSERT [dbo].[Appointments] ([ID], [AnimalID], [VeterinarianID], [AppointmentDate], [ProcedureDescription], [Diagnosis], [TreatmentPlan]) VALUES (5, 5, 1, CAST(N'2024-05-10T09:30:00.000' AS DateTime), N'Проверка зрения', N'Здоров', N'Рекомендован следующий осмотр через год')
INSERT [dbo].[Appointments] ([ID], [AnimalID], [VeterinarianID], [AppointmentDate], [ProcedureDescription], [Diagnosis], [TreatmentPlan]) VALUES (6, 6, 2, CAST(N'2024-06-10T11:00:00.000' AS DateTime), N'Общий осмотр', N'Гингивит', N'Лечение зубов в клинике')
INSERT [dbo].[Appointments] ([ID], [AnimalID], [VeterinarianID], [AppointmentDate], [ProcedureDescription], [Diagnosis], [TreatmentPlan]) VALUES (7, 7, 3, CAST(N'2024-07-10T13:00:00.000' AS DateTime), N'Обследование кожи', N'Кожная инфекция', N'Противогрибковая терапия 2 недели')
INSERT [dbo].[Appointments] ([ID], [AnimalID], [VeterinarianID], [AppointmentDate], [ProcedureDescription], [Diagnosis], [TreatmentPlan]) VALUES (8, 8, 4, CAST(N'2024-08-10T16:00:00.000' AS DateTime), N'Обследование', N'Остеоартрит', N'Массаж и лекарства от боли')
INSERT [dbo].[Appointments] ([ID], [AnimalID], [VeterinarianID], [AppointmentDate], [ProcedureDescription], [Diagnosis], [TreatmentPlan]) VALUES (9, 9, 2, CAST(N'2024-09-10T17:30:00.000' AS DateTime), N'Осмотр', N'Всё в порядке', N'Нет лечения')
SET IDENTITY_INSERT [dbo].[Appointments] OFF
GO
SET IDENTITY_INSERT [dbo].[Breeds] ON 

INSERT [dbo].[Breeds] ([ID], [BreedName], [SpeciesID]) VALUES (1, N'Сиамская', 1)
INSERT [dbo].[Breeds] ([ID], [BreedName], [SpeciesID]) VALUES (2, N'Мейн-кун', 1)
INSERT [dbo].[Breeds] ([ID], [BreedName], [SpeciesID]) VALUES (3, N'Чихуахуа', 2)
INSERT [dbo].[Breeds] ([ID], [BreedName], [SpeciesID]) VALUES (4, N'Бигль', 2)
INSERT [dbo].[Breeds] ([ID], [BreedName], [SpeciesID]) VALUES (5, N'Волнистый попугай', 3)
INSERT [dbo].[Breeds] ([ID], [BreedName], [SpeciesID]) VALUES (6, N'Джунгарский хомяк', 4)
INSERT [dbo].[Breeds] ([ID], [BreedName], [SpeciesID]) VALUES (7, N'Кролик-баран', 5)
SET IDENTITY_INSERT [dbo].[Breeds] OFF
GO
SET IDENTITY_INSERT [dbo].[Owners] ON 

INSERT [dbo].[Owners] ([ID], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (1, N'Иван', N'Иванов', N'+79991112233', N'ivan@mail.ru')
INSERT [dbo].[Owners] ([ID], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (2, N'Петр', N'Сидоров', N'+79992223344', N'petr@mail.ru')
INSERT [dbo].[Owners] ([ID], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (3, N'Анна', N'Смирнова', N'+79993334455', N'anna@mail.ru')
INSERT [dbo].[Owners] ([ID], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (4, N'Ольга', N'Кузнецова', N'+79994445566', N'olga@mail.ru')
INSERT [dbo].[Owners] ([ID], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (5, N'Дмитрий', N'Лебедев', N'+79995556677', N'dmitry@mail.ru')
INSERT [dbo].[Owners] ([ID], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (6, N'Анна', N'Павлова', N'+79991112233', N'anna@mail.ru')
INSERT [dbo].[Owners] ([ID], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (7, N'Сергей', N'Кузьмин', N'+79992223344', N'sergey@mail.ru')
INSERT [dbo].[Owners] ([ID], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (8, N'Николай', N'Федоров', N'+79993334455', N'nikolay@mail.ru')
INSERT [dbo].[Owners] ([ID], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (9, N'Олеся', N'Васильева', N'+79994445566', N'olesya@mail.ru')
INSERT [dbo].[Owners] ([ID], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (10, N'Евгений', N'Захаров', N'+79995556677', N'evgeny@mail.ru')
INSERT [dbo].[Owners] ([ID], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (11, N'Виктор', N'Громов', N'+79996667788', N'viktor@mail.ru')
INSERT [dbo].[Owners] ([ID], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (12, N'Елена', N'Тихонова', N'+79997778899', N'elena@mail.ru')
INSERT [dbo].[Owners] ([ID], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (13, N'Павел', N'Михайлов', N'+79998889900', N'pavel@mail.ru')
INSERT [dbo].[Owners] ([ID], [FirstName], [LastName], [PhoneNumber], [Email]) VALUES (14, N'Александр', N'Ковалев', N'+79999990011', N'alexandr@mail.ru')
SET IDENTITY_INSERT [dbo].[Owners] OFF
GO
SET IDENTITY_INSERT [dbo].[Speciality] ON 

INSERT [dbo].[Speciality] ([ID], [Name]) VALUES (1, N'Администратор')
INSERT [dbo].[Speciality] ([ID], [Name]) VALUES (2, N'Терапевт')
INSERT [dbo].[Speciality] ([ID], [Name]) VALUES (3, N'Кардиолог')
INSERT [dbo].[Speciality] ([ID], [Name]) VALUES (4, N'Хирург')
SET IDENTITY_INSERT [dbo].[Speciality] OFF
GO
SET IDENTITY_INSERT [dbo].[Species] ON 

INSERT [dbo].[Species] ([ID], [SpeciesName]) VALUES (1, N'Кошка')
INSERT [dbo].[Species] ([ID], [SpeciesName]) VALUES (2, N'Собака')
INSERT [dbo].[Species] ([ID], [SpeciesName]) VALUES (3, N'Попугай')
INSERT [dbo].[Species] ([ID], [SpeciesName]) VALUES (4, N'Хомяк')
INSERT [dbo].[Species] ([ID], [SpeciesName]) VALUES (5, N'Кролик')
SET IDENTITY_INSERT [dbo].[Species] OFF
GO
SET IDENTITY_INSERT [dbo].[Vaccinations] ON 

INSERT [dbo].[Vaccinations] ([ID], [AnimalID], [VaccinationDate], [VaccinationType]) VALUES (1, 1, CAST(N'2024-09-01' AS Date), N'Прививка от бешенства')
INSERT [dbo].[Vaccinations] ([ID], [AnimalID], [VaccinationDate], [VaccinationType]) VALUES (2, 2, CAST(N'2024-09-15' AS Date), N'Прививка от чумки')
INSERT [dbo].[Vaccinations] ([ID], [AnimalID], [VaccinationDate], [VaccinationType]) VALUES (3, 3, CAST(N'2024-09-12' AS Date), N'Прививка от бешенства')
INSERT [dbo].[Vaccinations] ([ID], [AnimalID], [VaccinationDate], [VaccinationType]) VALUES (4, 4, CAST(N'2024-09-25' AS Date), N'Прививка от чумки')
INSERT [dbo].[Vaccinations] ([ID], [AnimalID], [VaccinationDate], [VaccinationType]) VALUES (5, 5, CAST(N'2024-08-30' AS Date), N'Прививка от парвовируса')
INSERT [dbo].[Vaccinations] ([ID], [AnimalID], [VaccinationDate], [VaccinationType]) VALUES (6, 6, CAST(N'2024-07-15' AS Date), N'Прививка от миксоматоза')
INSERT [dbo].[Vaccinations] ([ID], [AnimalID], [VaccinationDate], [VaccinationType]) VALUES (7, 7, CAST(N'2024-06-18' AS Date), N'Прививка от лептоспироза')
INSERT [dbo].[Vaccinations] ([ID], [AnimalID], [VaccinationDate], [VaccinationType]) VALUES (8, 8, CAST(N'2024-05-10' AS Date), N'Прививка от бешенства')
INSERT [dbo].[Vaccinations] ([ID], [AnimalID], [VaccinationDate], [VaccinationType]) VALUES (9, 9, CAST(N'2024-04-22' AS Date), N'Прививка от чумки')
SET IDENTITY_INSERT [dbo].[Vaccinations] OFF
GO
SET IDENTITY_INSERT [dbo].[Veterinarians] ON 

INSERT [dbo].[Veterinarians] ([ID], [FirstName], [LastName], [Login], [Password], [IdSpecialty]) VALUES (1, N'Мария', N'Соболева', N'11        ', N'11111     ', 1)
INSERT [dbo].[Veterinarians] ([ID], [FirstName], [LastName], [Login], [Password], [IdSpecialty]) VALUES (2, N'Антон', N'Крылов', N'12        ', N'22222     ', 2)
INSERT [dbo].[Veterinarians] ([ID], [FirstName], [LastName], [Login], [Password], [IdSpecialty]) VALUES (3, N'Ольга', N'Петрова', N'13        ', N'33333     ', 3)
INSERT [dbo].[Veterinarians] ([ID], [FirstName], [LastName], [Login], [Password], [IdSpecialty]) VALUES (4, N'Иван', N'Беляев', N'14        ', N'44444     ', 4)
INSERT [dbo].[Veterinarians] ([ID], [FirstName], [LastName], [Login], [Password], [IdSpecialty]) VALUES (5, N'Марина', N'Павлова', N'15        ', N'55555     ', 1)
INSERT [dbo].[Veterinarians] ([ID], [FirstName], [LastName], [Login], [Password], [IdSpecialty]) VALUES (6, N'Игорь', N'Белов', N'16        ', N'66666     ', 2)
INSERT [dbo].[Veterinarians] ([ID], [FirstName], [LastName], [Login], [Password], [IdSpecialty]) VALUES (7, N'Лидия', N'Кузнецова', N'17        ', N'77777     ', 4)
INSERT [dbo].[Veterinarians] ([ID], [FirstName], [LastName], [Login], [Password], [IdSpecialty]) VALUES (8, N'Денис', N'Смирнов', N'18        ', N'88888     ', 3)
SET IDENTITY_INSERT [dbo].[Veterinarians] OFF
GO
ALTER TABLE [dbo].[Animals]  WITH CHECK ADD FOREIGN KEY([BreedID])
REFERENCES [dbo].[Breeds] ([ID])
GO
ALTER TABLE [dbo].[Animals]  WITH CHECK ADD FOREIGN KEY([OwnerID])
REFERENCES [dbo].[Owners] ([ID])
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD FOREIGN KEY([AnimalID])
REFERENCES [dbo].[Animals] ([ID])
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK__Appointme__Veter__31EC6D26] FOREIGN KEY([VeterinarianID])
REFERENCES [dbo].[Veterinarians] ([ID])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK__Appointme__Veter__31EC6D26]
GO
ALTER TABLE [dbo].[Breeds]  WITH CHECK ADD FOREIGN KEY([SpeciesID])
REFERENCES [dbo].[Species] ([ID])
GO
ALTER TABLE [dbo].[Vaccinations]  WITH CHECK ADD FOREIGN KEY([AnimalID])
REFERENCES [dbo].[Animals] ([ID])
GO
ALTER TABLE [dbo].[Veterinarians]  WITH CHECK ADD  CONSTRAINT [FK_Veterinarians_Speciality] FOREIGN KEY([IdSpecialty])
REFERENCES [dbo].[Speciality] ([ID])
GO
ALTER TABLE [dbo].[Veterinarians] CHECK CONSTRAINT [FK_Veterinarians_Speciality]
GO
