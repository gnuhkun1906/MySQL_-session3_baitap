use session2_baitap2;
insert into session2_baitap2.orderdetail values
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);

select oId, oDate,oTotalprice from `order`;
select c.cName, p.pName from 
((`order` o join `customer` c on c.cId=o.cId)
join orderDetail od on o.oId=od.oId
join product p on od.pId=p.pId);


select c.cName from customer c where c.cId not in 
(select o.cId from orderdetail od join `order` o on od.oId=o.oId
 join customer c on o.cId=c.cId);
 
 select o.oId, o.oDate,od.odQuantity*p.pPrice as `totalPrice`  
 from orderDetail od join product p on od.pId=p.pId
 join `order` o on o.oId=od.oID;
 




