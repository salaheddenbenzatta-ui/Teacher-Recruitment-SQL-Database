/*
في ما يلي مشروع إنشاء قاعدة بيانات خاصة بنتائج مسابقة توظيف الأساتذة باستخدام لغة (SQL).
*/

/*
_ أولا: إنشاء قاعدة البيانات و استخدامها _
*/

create database teacher_recruitment;
use teacher_recruitment;

/*
_ ثانيا: إنشاء الجدول الخاص بنتائج مسابقة توظيف أساتذة مادة الرياضيات و تعبئته بحيث يضم: (الرقم التعريفي، الاسم، اللقب، الشهادة، مادة التدريس، تاريخ التقديم، النتيجة) الخاصة بالمترشحين _
*/

create table candidates_math (
id int primary key,
first_name varchar(50),
last_name varchar(50),
degree varchar(100),
teaching_subject varchar(50),
application_date date,
result varchar(20)
);

insert into candidates_math
(id, first_name, last_name, degree, teaching_subject, application_date, result)
values
(31,'mohamed','belkacem','maaster','ryadeyat','2026-05-11','najah'),
(32,'amina','djeradi','licence','ryadeyat','2026-05-11','rasib'),
(33,'omar','bensalem','doctorat','ryadeyat','2026-05-11','najah'),
(34,'khadija','hammadi','maaster','ryadeyat','2026-05-11','rasib'),
(35,'rachid','boukercha','licence','ryadeyat','2026-05-11','rasib'),
(36,'lina','chergui','doctorat','ryadeyat','2026-05-12','najah'),
(37,'youcef','benrabah','maaster','ryadeyat','2026-05-12','rasib'),
(38,'salim','guerfi','licence','ryadeyat','2026-05-12','rasib'),
(39,'nour','boudjemaa','doctorat','ryadeyat','2026-05-12','najah'),
(40,'abdelkader','ziani','maaster','ryadeyat','2026-05-12','rasib'),
(41,'sara','mekki','licence','ryadeyat','2026-05-12','rasib'),
(42,'hamza','boulahbel','doctorat','ryadeyat','2026-05-12','rasib'),
(43,'imen','sahraoui','maaster','ryadeyat','2026-05-12','najah'),
(44,'bilal','mansouri','licence','ryadeyat','2026-05-12','rasib'),
(45,'nassim','benameur','doctorat','ryadeyat','2026-05-12','najah');

/*
_ لعرض عناصر الجدول الخاص بنتائج مسابقة توظيف أساتذة مادة الرياضيات نكتب الاستعلام التالي _
*/

select * from candidates_math;

/*
_ ثالثا: إنشاء جدول خاص بنتائج مسابقة توظيف أساتذة مادة علوم الطبيعة والحياة و تعبئته بحيث يضم: (الرقم التعريفي، الاسم، اللقب، الشهادة، مادة التدريس، تاريخ التقديم، النتيجة) الخاصة بالمترشحين _
*/

create table candidates_natural_science (
id int primary key,
first_name varchar(50),
last_name varchar(50),
degree varchar(100),
teaching_subject varchar(50),
application_date date,
result varchar(20)
);

insert into candidates_natural_science
(id, first_name, last_name, degree, teaching_subject, application_date, result)
values
(16,'amine','benkhaled','maaster','sciences naturelles','2026-05-13','najah'),
(17,'yasmine','djeradi','licence','sciences naturelles','2026-05-13','rasib'),
(18,'sofiane','mansouri','doctorat','sciences naturelles','2026-05-13','rasib'),
(19,'nadia','cherifi','maaster','sciences naturelles','2026-05-13','rasib'),
(20,'walid','meziane','doctorat','sciences naturelles','2026-05-13','najah'),
(21,'khaled','boudiaf','licence','sciences naturelles','2026-05-14','rasib'),
(22,'samira','bouzidi','maaster','sciences naturelles','2026-05-14','rasib'),
(23,'karim','haddad','doctorat','sciences naturelles','2026-05-14','rasib'),
(24,'imane','brahim','maaster','sciences naturelles','2026-05-14','rasib'),
(25,'riad','zerrouki','licence','sciences naturelles','2026-05-14','rasib'),
(26,'farida','saadi','doctorat','sciences naturelles','2026-05-14','rasib'),
(27,'hocine','ait ali','maaster','sciences naturelles','2026-05-14','najah'),
(28,'meriem','kaci','licence','sciences naturelles','2026-05-15','rasib'),
(29,'nabil','benamara','doctorat','sciences naturelles','2026-05-15','rasib'),
(30,'lynda','ouali','maaster','sciences naturelles','2026-05-15','rasib');

/*
_ لعرض عناصر الجدول الخاص بنتائج مسابقة توظيف أساتذة مادة علوم الطبيعة والحياة نكتب الاستعلام التالي _
*/

select * from candidates_natural_science;

/*
_ رابعا: لعرض الأساتذة الناجحين فقط في كلتا المادتين ضمن جدول واحد نكتب الاستعلام التالي _
*/

select *
from candidates_math
where result = 'najah'

union all

select *
from candidates_natural_science
where result = 'najah';

/*
_ لعرض عدد الأساتذة الناجحين في كل مادة نكتب الإستعلام التالي _
*/

select teaching_subject, count(*) as successful_candidates
from candidates_math
where result = 'najah'
group by teaching_subject

union all

select teaching_subject, count(*) as successful_candidates
from candidates_natural_science
where result = 'najah'
group by teaching_subject;

/*
_ شكرا للمتابعة و قراءة عملي :-) _
*/
