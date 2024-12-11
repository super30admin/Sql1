Create function getNthHighestSalary(N int) returns int
Begin
set n=n-1;
return (
Select Distinct salary from Employee order by salary Desc
Limit 1 OFFSET n
);
end;