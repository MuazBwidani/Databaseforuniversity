CREATE function muayeneler(di integer ,fir timestamp ,sec timestamp )
begin
select * from muayene where (did=di and tarihsaat between fir and sec  )
end;


odenenToplamUcret(hid INT) returns INT
begin 
declare su integer;
select su=sum(ucret)from muayene where (muayene.hid=hid)
return su;
end;

