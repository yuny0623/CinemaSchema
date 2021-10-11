drop table ticket;
drop table user_info;
drop table screen;
drop table movie; 

create table movie(
    movie_id        varchar2(10),
    title           varchar2(50) not null,
    director        varchar2(30),
    opening_year    varchar2(20),
    running_time    varchar2(20),
    genre           varchar2(20),
    rtomatto        number(3),
    constraint movie_pk1 primary key (movie_id)
); 
create table screen( 
    screen_id       varchar2(10),   
    age             number(3),
    entrance_time   varchar2(30) not null,
    
    constraint screen_pk1 primary key(screen_id),
    constraint screen_fk1 foreign key(screen_id) references movie(movie_id)
);
create table user_info(
    id              varchar2(20),
    name            varchar2(20),
    membership      varchar2(20) not null,
    email           varchar2(50),
    constraint user_info_pk1 primary key(id)
);  
create table ticket(
    ticket_id       varchar2(10), 
    id              varchar2(20),   
    screen_id       varchar2(10), 
    
    constraint ticket_pk1 primary key(ticket_id, id, screen_id),
    constraint ticket_fk1 foreign key(id) references user_info(id),
    constraint ticket_fk2 foreign key(screen_id) references screen(screen_id)
); 

insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M000','엣지 오브 투모로우','더그 라이만','2014년','1시간53분','SF',80);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M001','매트릭스','워쇼스키 형제','1999년','2시간16분','SF',89);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M002','그래비티','알폰소 쿠아론','2013년','1시간31분','SF',66);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M003','인타임','앤드류 니콜','2011년','1시간49분','SF',92);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M004','쏘우','제임스 완','2004년','1시간43분','호러',75);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M005','미저리','롭 라이너','1990년','1시간47분','호러',69);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M006','주온','시미즈 다카시','2003년','1시간31분','호러',68);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M007','스크림','웨스 크레이븐','1996년','1시간51분','호러',54);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M008','비포 선라이즈','리처드 링클레이터','1995년','1시간40분','로맨스',66);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M009','엽기적인 그녀','곽재용','2001년','2시간17분','로맨스',58);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M010','내 아내의 모든 것','민규동','2012년','2시간','로맨스',56);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M011','클래식','곽재용','2003년','1시간8분','로맨스',73);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M012','실미도','강우석','2003년','2시간15분','액션',80);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M013','아저씨','이정범','2010년','1시간59분','액션',71);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M014','더블타겟','안톤 후쿠아','2007년','2시간5분','액션',60);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M015','미션임파서블','브라이언 드 팔마','1996년','1시간50분','액션',90);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M016','아메리칸 셰프','존 파브로','2014년','1시간54분','코믹',92);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M017','웰컴투동막골','박광현','2005년','2시간12분','코믹',64);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M018','전우치','최동훈','2009년','2시간15분','코믹',42);
insert into movie(movie_id,title,director,opening_year,running_time,genre,rtomatto) values('M019','나쁜녀석들','마이클 베이','1995년','1시간58분','코믹',88);

insert into screen(screen_id,age,entrance_time) values('M000','12','07:30');
insert into screen(screen_id,age,entrance_time) values('M001','12','10:00');
insert into screen(screen_id,age,entrance_time) values('M002','12','12:30');
insert into screen(screen_id,age,entrance_time) values('M005','19','01:30');
insert into screen(screen_id,age,entrance_time) values('M006','19','03:30');
insert into screen(screen_id,age,entrance_time) values('M009','15','14:10');
insert into screen(screen_id,age,entrance_time) values('M013','19','16:40');
insert into screen(screen_id,age,entrance_time) values('M014','19','19:00');
insert into screen(screen_id,age,entrance_time) values('M015','12','21:30');
insert into screen(screen_id,age,entrance_time) values('M017','12','23:30');

insert into user_info(name,id,membership,email) values ('유지태','tallman221','프렌즈','tallman221@gmail.com');
insert into user_info(name,id,membership,email) values ('장동건','jangddong11','프렌즈','jangddong11@gmail.com');
insert into user_info(name,id,membership,email) values ('송강','sweethome332','프렌즈','sweethome332@gmail.com');
insert into user_info(name,id,membership,email) values ('유승호','gotohome','프렌즈','gotohome@gmail.com');
insert into user_info(name,id,membership,email) values ('타노스','finger944','플레티넘','finger944@gmail.com');
insert into user_info(name,id,membership,email) values ('신혜선','mywife77','플레티넘','mywife77@gmail.com');
insert into user_info(name,id,membership,email) values ('서예지','psycho998','프렌즈','psycho998@gmail.com');
insert into user_info(name,id,membership,email) values ('김정은','nuclear444','프렌즈','nuclear444@gmail.com');
insert into user_info(name,id,membership,email) values ('한혜진','tallgirl112','실버','tallgirl112@gmail.com');
insert into user_info(name,id,membership,email) values ('서장훈','verytall333','실버','verytall333@gmail.com');
insert into user_info(name,id,membership,email) values ('유시민','captain999','플레티넘','captain999@gmail.com');
insert into user_info(name,id,membership,email) values ('안철수','togetherfail44','프렌즈','togetherfail44@gmail.com');
insert into user_info(name,id,membership,email) values ('이영호','terran112','실버','terran112@gmail.com');
insert into user_info(name,id,membership,email) values ('김택용','protoss33','실버','protoss33@gmail.com');
insert into user_info(name,id,membership,email) values ('염보성','sulguzi00','실버','sulguzi00@gmail.com');
insert into user_info(name,id,membership,email) values ('한지민','beauty33','골드','beauty33@gmail.com');
insert into user_info(name,id,membership,email) values ('정예인','idolqueen33','골드','idolqueen33@gmail.com');
insert into user_info(name,id,membership,email) values ('루다','loodda66','실버','loodda66@gmail.com');
insert into user_info(name,id,membership,email) values ('김새론','azussi4','플레티넘','azussi4@gmail.com');
insert into user_info(name,id,membership,email) values ('설인아','ssul11','골드','ssul11@gmail.com');
insert into user_info(name,id,membership,email) values ('홍연우','oieuio347','프렌즈','oieuio347@gmail.com');
insert into user_info(name,id,membership,email) values ('박세율','qiexoo303','골드','qiexoo303@gmail.com');  
insert into user_info(name,id,membership,email) values ('이선민','oaasaa788','프렌즈','oaasaa788@gmail.com');
insert into user_info(name,id,membership,email) values ('민안','seuooe795','실버','seuooe795@gmail.com');    
insert into user_info(name,id,membership,email) values ('주문경','eiusei766','실버','eiusei766@gmail.com');
insert into user_info(name,id,membership,email) values ('하강은','ooeleo897','실버','ooeleo897@gmail.com');
insert into user_info(name,id,membership,email) values ('민해율','iooleo904','프렌즈','iooleo904@gmail.com');
insert into user_info(name,id,membership,email) values ('하주경','iookoe623','프렌즈','iookoe623@gmail.com');
insert into user_info(name,id,membership,email) values ('주시유','vaotaa876','실버','vaotaa876@gmail.com');
insert into user_info(name,id,membership,email) values ('하해담','ouuwuu085','실버','ouuwuu085@gmail.com');
insert into user_info(name,id,membership,email) values ('최다엘','kianoi806','골드','kianoi806@gmail.com');
insert into user_info(name,id,membership,email) values ('하서휘','qeepou498','골드','qeepou498@gmail.com');
insert into user_info(name,id,membership,email) values ('민윤빈','geewou076','골드','geewou076@gmail.com');
insert into user_info(name,id,membership,email) values ('진원희','fiobui725','프렌즈','fiobui725@gmail.com');
insert into user_info(name,id,membership,email) values ('김서우','vuujou378','플레티넘','vuujou378@gmail.com');
insert into user_info(name,id,membership,email) values ('하해솔','auenoa687','실버','auenoa687@gmail.com');
insert into user_info(name,id,membership,email) values ('박정   ','jiuluu867','플레티넘','jiuluu867@gmail.com');
insert into user_info(name,id,membership,email) values ('권선빈','aioyoi493','실버','aioyoi493@gmail.com');
insert into user_info(name,id,membership,email) values ('하빈','keixoi682','플레티넘','keixoi682@gmail.com');
insert into user_info(name,id,membership,email) values ('김선진','quuqei355','실버','quuqei355@gmail.com');
insert into user_info(name,id,membership,email) values ('최희수','kaibia076','실버','kaibia076@gmail.com');
insert into user_info(name,id,membership,email) values ('진현서','xaociu924','플레티넘','xaociu924@gmail.com');
insert into user_info(name,id,membership,email) values ('진노엘','roaoio453','골드','roaoio453@gmail.com');
insert into user_info(name,id,membership,email) values ('한효우','giujau762','골드','giujau762@gmail.com');
insert into user_info(name,id,membership,email) values ('권연우','xiueua868','플레티넘','xiueua868@gmail.com');
insert into user_info(name,id,membership,email) values ('이재연','puohee376','골드','puohee376@gmail.com');
insert into user_info(name,id,membership,email) values ('민연오','xaohoe944','실버','xaohoe944@gmail.com');
insert into user_info(name,id,membership,email) values ('박재희','youfai238','골드','youfai238@gmail.com');
insert into user_info(name,id,membership,email) values ('한세온','vuaeae030','골드','vuaeae030@gmail.com');
insert into user_info(name,id,membership,email) values ('권이수','uuelue339','골드','uuelue339@gmail.com');
insert into user_info(name,id,membership,email) values ('주다온','fuilao653','프렌즈','fuilao653@gmail.com');
insert into user_info(name,id,membership,email) values ('이유온','wuusee888','프렌즈','wuusee888@gmail.com');
insert into user_info(name,id,membership,email) values ('박바다','euanio157','골드','euanio157@gmail.com');
insert into user_info(name,id,membership,email) values ('한유원','giezaa405','실버','giezaa405@gmail.com');
insert into user_info(name,id,membership,email) values ('한진솔','yuuwue602','플레티넘','yuuwue602@gmail.com');
insert into user_info(name,id,membership,email) values ('정우림','iiijae669','실버','iiijae669@gmail.com');
insert into user_info(name,id,membership,email) values ('이가람','yeoeua828','플레티넘','yeoeua828@gmail.com');
insert into user_info(name,id,membership,email) values ('진강은','aoamie814','골드','aoamie814@gmail.com');
insert into user_info(name,id,membership,email) values ('권현서','diioeo784','골드','diioeo784@gmail.com');
insert into user_info(name,id,membership,email) values ('박바다','soiroa720','실버','soiroa720@gmail.com');
insert into user_info(name,id,membership,email) values ('박유담','yiodee843','실버','yiodee843@gmail.com');
insert into user_info(name,id,membership,email) values ('한가람','pieaii593','프렌즈','pieaii593@gmail.com');
insert into user_info(name,id,membership,email) values ('서규연','eoiseu596','실버','eoiseu596@gmail.com');
insert into user_info(name,id,membership,email) values ('한바다','noatea205','실버','noatea205@gmail.com');
insert into user_info(name,id,membership,email) values ('주루빈','diinie406','플레티넘','diinie406@gmail.com');
insert into user_info(name,id,membership,email) values ('홍세온','xeotoo227','프렌즈','xeotoo227@gmail.com');
insert into user_info(name,id,membership,email) values ('주해담','louioa139','프렌즈','louioa139@gmail.com');
insert into user_info(name,id,membership,email) values ('주주경','uuacou407','프렌즈','uuacou407@gmail.com');
insert into user_info(name,id,membership,email) values ('한이원','uoefui207','플레티넘','uoefui207@gmail.com');
insert into user_info(name,id,membership,email) values ('권가람','cuedeu035','프렌즈','cuedeu035@gmail.com');
insert into user_info(name,id,membership,email) values ('이연우','ciokae650','실버','ciokae650@gmail.com');
insert into user_info(name,id,membership,email) values ('홍해랑','kooruo061','골드','kooruo061@gmail.com');
insert into user_info(name,id,membership,email) values ('정해진','peiboe496','실버','peiboe496@gmail.com');
insert into user_info(name,id,membership,email) values ('이현채','aoocou790','골드','aoocou790@gmail.com');
insert into user_info(name,id,membership,email) values ('서선진','tiocea540','실버','tiocea540@gmail.com');
insert into user_info(name,id,membership,email) values ('민빈','ooahau154','실버','ooahau154@gmail.com');
insert into user_info(name,id,membership,email) values ('서해온','uuuyeo146','골드','uuuyeo146@gmail.com');
insert into user_info(name,id,membership,email) values ('최선진','eaaaei393','프렌즈','eaaaei393@gmail.com');
insert into user_info(name,id,membership,email) values ('최연오','ioofei969','골드','ioofei969@gmail.com');
insert into user_info(name,id,membership,email) values ('김서휘','piineu778','플레티넘','piineu778@gmail.com');
insert into user_info(name,id,membership,email) values ('서정안','jeaxei462','골드','jeaxei462@gmail.com');
insert into user_info(name,id,membership,email) values ('이서원','youhuo393','플레티넘','youhuo393@gmail.com');
insert into user_info(name,id,membership,email) values ('김영인','iiawiu729','플레티넘','iiawiu729@gmail.com');
insert into user_info(name,id,membership,email) values ('박희망','xoelou591','실버','xoelou591@gmail.com');
insert into user_info(name,id,membership,email) values ('홍바다','qeoaou487','플레티넘','qeoaou487@gmail.com');
insert into user_info(name,id,membership,email) values ('박성연','xiutai280','골드','xiutai280@gmail.com');
insert into user_info(name,id,membership,email) values ('서규연','deujuo884','플레티넘','deujuo884@gmail.com');
insert into user_info(name,id,membership,email) values ('진이재','baaqoa347','프렌즈','baaqoa347@gmail.com');
insert into user_info(name,id,membership,email) values ('하바다','jiuzaa832','플레티넘','jiuzaa832@gmail.com');
insert into user_info(name,id,membership,email) values ('서다온','aeonoe959','플레티넘','aeonoe959@gmail.com');
insert into user_info(name,id,membership,email) values ('이정안','eoozuu152','골드','eoozuu152@gmail.com');
insert into user_info(name,id,membership,email) values ('정진유','ioawiu865','플레티넘','ioawiu865@gmail.com');
insert into user_info(name,id,membership,email) values ('주노을','sausia363','골드','sausia363@gmail.com');
insert into user_info(name,id,membership,email) values ('하소명','xueqiu861','플레티넘','xueqiu861@gmail.com');
insert into user_info(name,id,membership,email) values ('한정안','aioyia748','프렌즈','aioyia748@gmail.com');
insert into user_info(name,id,membership,email) values ('서현서','coesua536','실버','coesua536@gmail.com');
insert into user_info(name,id,membership,email) values ('민안','neimei821','프렌즈','neimei821@gmail.com');
insert into user_info(name,id,membership,email) values ('하재연','voiwee364','골드','voiwee364@gmail.com');
insert into user_info(name,id,membership,email) values ('권서원','giokio531','프렌즈','giokio531@gmail.com');
insert into user_info(name,id,membership,email) values ('권하랑','raomui477','플레티넘','raomui477@gmail.com');
insert into user_info(name,id,membership,email) values ('홍루빈','xuaroi061','실버','xuaroi061@gmail.com');
insert into user_info(name,id,membership,email) values ('한서원','cuenuo734','플레티넘','cuenuo734@gmail.com');
insert into user_info(name,id,membership,email) values ('이루하','jeaeoo678','프렌즈','jeaeoo678@gmail.com');
insert into user_info(name,id,membership,email) values ('서문경','faieue544','프렌즈','faieue544@gmail.com');
insert into user_info(name,id,membership,email) values ('권이원','liupii107','플레티넘','liupii107@gmail.com');
insert into user_info(name,id,membership,email) values ('한다올','ueazea088','골드','ueazea088@gmail.com');
insert into user_info(name,id,membership,email) values ('권하진','viaiue239','실버','viaiue239@gmail.com');
insert into user_info(name,id,membership,email) values ('서연우','qeegua314','골드','qeegua314@gmail.com');
insert into user_info(name,id,membership,email) values ('이유온','xeaeio549','실버','xeaeio549@gmail.com');
insert into user_info(name,id,membership,email) values ('박진유','zioheo793','실버','zioheo793@gmail.com');
insert into user_info(name,id,membership,email) values ('민하진','biooou826','프렌즈','biooou826@gmail.com');
insert into user_info(name,id,membership,email) values ('정루빈','roagau197','골드','roagau197@gmail.com');
insert into user_info(name,id,membership,email) values ('주소명','eiirai541','프렌즈','eiirai541@gmail.com');
insert into user_info(name,id,membership,email) values ('권해율','caedou888','골드','caedou888@gmail.com');
insert into user_info(name,id,membership,email) values ('서다울','yuunea655','골드','yuunea655@gmail.com');
insert into user_info(name,id,membership,email) values ('박다온','viiuee859','골드','viiuee859@gmail.com');
insert into user_info(name,id,membership,email) values ('진제희','paosii143','실버','paosii143@gmail.com');
insert into user_info(name,id,membership,email) values ('정로하','faioue434','플레티넘','faioue434@gmail.com');
insert into user_info(name,id,membership,email) values ('권연우','jeoxio395','프렌즈','jeoxio395@gmail.com');
insert into user_info(name,id,membership,email) values ('박예승','meulae973','실버','meulae973@gmail.com');

insert into ticket(ticket_id,id,screen_id) values ('T000','tallman221','M000');
insert into ticket(ticket_id,id,screen_id) values ('T001','mywife77','M001');
insert into ticket(ticket_id,id,screen_id) values ('T002','psycho998','M001');
insert into ticket(ticket_id,id,screen_id) values ('T003','nuclear444','M017');
insert into ticket(ticket_id,id,screen_id) values ('T004','captain999','M015');
insert into ticket(ticket_id,id,screen_id) values ('T005','idolqueen33','M015');
insert into ticket(ticket_id,id,screen_id) values ('T006','azussi4','M015');
insert into ticket(ticket_id,id,screen_id) values ('T007','iooleo904','M015');
insert into ticket(ticket_id,id,screen_id) values ('T008','vaotaa876','M015');
insert into ticket(ticket_id,id,screen_id) values ('T009','xaociu924','M014');
insert into ticket(ticket_id,id,screen_id) values ('T010','meulae973','M002');
insert into ticket(ticket_id,id,screen_id) values ('T011','jeoxio395','M005');
insert into ticket(ticket_id,id,screen_id) values ('T012','viiuee859','M006');
insert into ticket(ticket_id,id,screen_id) values ('T013','qeegua314','M009');
insert into ticket(ticket_id,id,screen_id) values ('T014','cuenuo734','M009');
insert into ticket(ticket_id,id,screen_id) values ('T015','xuaroi061','M009');
insert into ticket(ticket_id,id,screen_id) values ('T016','xueqiu861','M009');
insert into ticket(ticket_id,id,screen_id) values ('T017','peiboe496','M009');
insert into ticket(ticket_id,id,screen_id) values ('T018','aoocou790','M009');
insert into ticket(ticket_id,id,screen_id) values ('T019','yiodee843','M009');
insert into ticket(ticket_id,id,screen_id) values ('T020','fuilao653','M014');
insert into ticket(ticket_id,id,screen_id) values ('T021','eiusei766','M014');
insert into ticket(ticket_id,id,screen_id) values ('T022','jeaeoo678','M015');
insert into ticket(ticket_id,id,screen_id) values ('T023','xeaeio549','M017');
insert into ticket(ticket_id,id,screen_id) values ('T024','eoiseu596','M002');
insert into ticket(ticket_id,id,screen_id) values ('T025','vuaeae030','M002');
insert into ticket(ticket_id,id,screen_id) values ('T026','keixoi682','M009');
insert into ticket(ticket_id,id,screen_id) values ('T027','gotohome','M017');
insert into ticket(ticket_id,id,screen_id) values ('T028','seuooe795','M013');
insert into ticket(ticket_id,id,screen_id) values ('T029','ssul11','M013');               

commit; 
