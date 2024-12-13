import mysql.connector
mydb= mysql.connector.connect(host=&quot;localhost&quot;,user=&quot;root&quot;, passwd=&quot;cubin&quot;,database=
&quot;cubin&quot;)
cursi=mydb.cursor()
print(&quot;Select a number from the options below to perform a task&quot;)
print(&quot;1. Enter a new Gym&quot;)
print(&quot;2. Pay a payment&quot;)
print(&quot;3. Enter a new trainer&quot;)
print(&quot;4. Enter a new member&quot;)
choice=int(input(&quot;select a number: &quot;))
if choice==1:
gid=input(&quot;Enter the Gym ID of the Gym: &quot;)
gname=input(&quot;Enter the name of the Gym: &quot;)
gaddress=input(&quot;Enter the address of the Gym: &quot;)
gtype=input(&quot;Enter the type of the Gym: &quot;)
sql=&quot;insert into gym values(%s,%s,%s,%s)&quot;
values=(gid,gname,gaddress,gtype)
cursi.execute(sql,values)
elif choice==2:
pid=input(&quot;Enter the payment ID of the payment: &quot;)
pamount=input(&quot;Enter the amount of the payment: &quot;)
pgid=input(&quot;Enter the Gym ID of the Gym: &quot;)
sql=&quot;insert into payment values(%s,%s,%s)&quot;
values=(pid,pamount,pgid)
cursi.execute(sql,values)
elif choice==3:
tid=input(&quot;Enter the trainer ID of the trainer: &quot;)
tname=input(&quot;Enter the name of the trainer: &quot;)
tno=input(&quot;Enter the mobile no. of the trainer: &quot;)
tpid=input(&quot;Enter trainer&#39;s payment ID: &quot;)

sql=&quot;insert into trainer values(%s,%s,%s,%s)&quot;
values=(tid,tname,tno,tpid)
cursi.execute(sql,values)
elif choice==4:
mid=input(&quot;Enter the member ID of the member: &quot;)
mname=input(&quot;Enter the name of the member: &quot;)
mdob=input(&quot;Enter the DOB of the member: &quot;)
mage=input(&quot;Enter the age of the member: &quot;)
mpackage=input(&quot;Enter the package of the member: &quot;)
mno=input(&quot;Enter the mobile no. of the member: &quot;)
mpid=input(&quot;Enter the payment id of the payment: &quot;)
mtid=input(&quot;Enter the trainer id of the trainer: &quot;)
sql=&quot;insert into payment values(%s,%s,%s,%s,%s,%s,%s,%s)&quot;
values=(mid,mname,mdob,mage,mpackage,mno,mpid,mtid)
cursi.execute(sql,values)
mydb.commit()
