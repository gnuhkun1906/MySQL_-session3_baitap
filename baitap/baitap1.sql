use session3_thuchanh1;
--  select * from `subject` where credit=(select max(credit) from `subject` s);
-- hiển thị các học sinh có tên bắt đầu bằng "h"
select * from student where studentName like "h%";
select * from class where month(startDate)=12;
select * from  `subject` where credit between 3 and 5;
update student set classId=2 where studentName="Hung";
select s.studentName,sb.subName,m.mark 
from ((mark m 
 join student s on  m.stuId= s.studentId)
 join `subject` sb on m.subId=sb.subId)
 order by mark;
 