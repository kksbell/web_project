-- 혹시 있을지 모르는 테이블 제거
drop table pokemon purge;
drop table pmember purge;
drop table jebo purge;
drop table mypokemon purge;

-- 테이블 만들기
  -- 포켓몬 정보
  CREATE TABLE pokemon 
   (	"PNO" NUMBER primary key, -- 포켓몬 번호(1~151) 
	"PNAME" VARCHAR2(20) not null, -- 포켓몬 이름
	"PINITIAL" VARCHAR2(5) not null,  -- 포켓몬 첫글자(ㄱ~ㅎ)
	"PTYPE" VARCHAR2(20) not null, -- 포켓몬 타입 (리자몽 : 불)
	"PTYPE2" VARCHAR2(20), -- 포켓몬 타입2 (리자몽: 비행)
	"PFEATURE" VARCHAR2(100), -- 포켓몬 특성
	"PFEATURE_H" VARCHAR2(100), -- 포켓몬의 숨겨진 특성
	"PPICTURE" VARCHAR2(30), -- 포켓몬 이미지 주소
	-- http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/ 다음에 붙여쓰면됨
	"PHEIGHT" VARCHAR2(50), -- 포켓몬 키
	"PWEIGHT" VARCHAR2(50) -- 포켓몬 무게
   ) ;
   
   
   create table pmember(
   ID varchar2(20) primary key, -- ID
   pwd varchar2(20) not null, -- 비밀번호
   nickname varchar2(20) not null, -- 닉네임 (필요할지몰라서)
   regdate date -- 가입일시 (필요할지몰라서)
   );
   
   create table jebo(
   id varchar2(20) references pmember (id), -- 아이디: member 테이블의 외래키
   pno number references pokemon (pno), -- 포켓몬 번호 : pokemon 테이블의 외래키
   location varchar2(500), -- 발견지역
   tip varchar2(500), -- 공략(?)ㅋㅋ
   sshot varchar2(200), -- 스샷(주소, 파일업로드용)
   wdate date -- 제보일시
   );
   
   create table mypokemon(
   id varchar2(20) references pmember (id), -- 아이디: member 테이블의 외래키
   pno number references pokemon (pno) -- 포켓몬 번호 : pokemon 테이블의 외래키
   );
insert into pmember values('다슬','1234','다슬',sysdate);
select * from jebo;

Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (1,'이상해씨','ㅇ','풀','독','심록','엽록소','001_001.png','0.7m','6.9kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (2,'이상해풀','ㅇ','풀','독','심록','엽록소','002_002.png','1.0m','13.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (3,'이상해꽃','ㅇ','풀','독','심록','엽록소','003_003.png','2.0m','100.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (4,'파이리','ㅍ','불꽃',null,'맹화','선파워','005_004.png','0.6m','8.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (5,'리자드','ㄹ','불꽃',null,'맹화','선파워','006_005.png','1.1m','19.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (6,'리자몽','ㄹ','불꽃','비행','맹화','선파워','007_006_01.png','1.7m','90.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (7,'꼬부기','ㄱ','물',null,'급류','젖은접시','010_007.png','0.5m','9.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (8,'어니부기','ㅇ','물',null,'급류','젖은접시','011_008.png','1.0m','22.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (9,'거북왕','ㄱ','물',null,'급류','젖은접시','012_009_01.png','1.6m','85.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (10,'캐터피','ㅋ','벌레',null,'인분','도주','014_010.png','0.3m','2.9kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (11,'단데기','ㄷ','벌레',null,'탈피',null,'015_011.png','0.7m','9.9kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (12,'버터플','ㅂ','벌레','비행','복안','색안경','016_012.png','1.1m','32.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (13,'뿔충이','ㅂ','벌레','독','인분','도주','017_013.png','0.3m','3.2kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (14,'딱충이','ㄷ','벌레','독','탈피',null,'018_014.png','0.6m','10.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (15,'독침붕','ㄷ','벌레','독','벌레의알림','스나이퍼','019_015_01.png','1.0m','29.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (16,'구구','ㄱ','노말','비행','날카로운눈 / 갈지자걸음','부풀린가슴','020_016.png','0.3m','1.8kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (17,'피죤','ㅍ','노말','비행','날카로운눈 / 갈지자걸음','부풀린가슴','021_017.png','1.1m','30.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (18,'피죤투','ㅍ','노말','비행','날카로운눈 / 갈지자걸음','부풀린가슴','022_018_01.png','1.5m','39.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (19,'꼬렛','ㄱ','노말',null,'도주 / 근성','의욕','023_019.png','0.3m','3.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (20,'레트라','ㄹ','노말',null,'도주 / 근성','의욕','024_020.png','0.7m','18.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (21,'깨비참','ㄱ','노말','비행','날카로운눈','스나이퍼','025_021.png','0.3m','2.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (22,'깨비드릴조','ㄱ','노말','비행','날카로운눈','스나이퍼','026_022.png','1.2m','38.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (23,'아보','ㅇ','독',null,'위협 / 탈피','긴장감','027_023.png','2.0m','6.9kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (24,'아보크','ㅇ','독',null,'위협 / 탈피','긴장감','028_024.png','3.5m','65.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (25,'피카츄','ㅍ','전기',null,'정전기','피뢰침','029_025.png','0.4m','6.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (26,'라이츄','ㄹ','전기',null,'정전기','피뢰침','030_026.png','0.8m','30.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (27,'모래두지','ㅁ','땅',null,'모래숨기','모래헤치기','031_027.png','0.6m','12.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (28,'고지','ㄱ','땅',null,'모래숨기','모래헤치기','032_028.png','1.0m','29.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (29,'니드런♀','ㄴ','독',null,'독가시 / 투쟁심','의욕','033_029.png','0.4m','7.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (30,'니드리나','ㄴ','독',null,'독가시 / 투쟁심','의욕','034_030.png','0.8m','20.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (31,'니드퀸','ㄴ','독','땅','독가시 / 투쟁심','우격다짐','035_031.png','1.3m','60.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (32,'니드런♂','ㄴ','독',null,'독가시 / 투쟁심','의욕','036_032.png','0.5m','9.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (33,'니드리노','ㄴ','독',null,'독가시 / 투쟁심','의욕','037_033.png','0.9m','19.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (34,'니드킹','ㄴ','독','땅','독가시 / 투쟁심','우격다짐','038_034.png','1.4m','62.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (35,'삐삐','ㅂ','페어리',null,'헤롱헤롱바디 / 매직가드','프렌드가드','039_035.png','0.6m','7.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (36,'픽시','ㅍ','페어리',null,'헤롱헤롱바디 / 매직가드','천진','040_036.png','1.3m','40.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (37,'식스테일','ㅅ','불꽃',null,'타오르는불꽃','가뭄','041_037.png','0.6m','9.9kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (38,'나인테일','ㄴ','불꽃',null,'타오르는불꽃','가뭄','042_038.png','1.1m','19.9kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (39,'푸린','ㅍ','노말','페어리','헤롱헤롱바디 / 승기','프렌드가드','043_039.png','0.5m','5.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (40,'푸크린','ㅍ','노말','페어리','헤롱헤롱바디 / 승기','통찰','044_040.png','1.0m','12.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (41,'주뱃','ㅈ','독','비행','정신력','틈새포착','045_041.png','0.8m','7.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (42,'골뱃','ㄱ','독','비행','정신력','틈새포착','046_042.png','1.6m','55.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (43,'뚜벅쵸','ㄷ','풀','독','엽록소','도주','047_043.png','0.5m','5.4kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (44,'냄새꼬','ㄴ','풀','독','엽록소','악취','048_044.png','0.8m','8.6kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (45,'라플레시아','ㄹ','풀','독','엽록소','포자','049_045.png','1.2m','18.6kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (46,'파라스','ㅍ','벌레','풀','포자 / 건조피부','습기','050_046.png','0.3m','5.4kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (47,'파라섹트','ㅍ','벌레','풀','포자 / 건조피부','습기','051_047.png','1.0m','29.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (48,'콘팡','ㅋ','벌레','독','복안 / 색안경','도주','052_048.png','1.0m','30.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (49,'도나리','ㄷ','벌레','독','인분 / 색안경','미라클스킨','053_049.png','1.5m','12.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (50,'디그다','ㄷ','땅',null,'모래숨기 / 개미지옥','모래의힘','054_050.png','0.2m','0.8kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (51,'닥트리오','ㄷ','땅',null,'모래숨기 / 개미지옥','모래의힘','055_051.png','0.7m','33.3kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (52,'나옹','ㄴ','노말',null,'픽업 / 테크니션','긴장감','056_052.png','0.4m','4.2kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (53,'페르시온','ㅍ','노말',null,'유연 / 테크니션','긴장감','057_053.png','1.0m','32.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (54,'고라파덕','ㄱ','물',null,'습기 / 날씨부정','쓱쓱','058_054.png','0.8m','19.6kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (55,'골덕','ㄱ','물',null,'습기 / 날씨부정','쓱쓱','059_055.png','1.7m','76.6kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (56,'망키','ㅁ','격투',null,'의기양양 / 분노의경혈','오기','060_056.png','0.5m','28.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (57,'성원숭','ㅅ','격투',null,'의기양양 / 분노의경혈','오기','061_057.png','1.0m','32.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (58,'가디','ㄱ','불꽃',null,'위협 / 타오르는불꽃','정의의마음','062_058.png','0.7m','19.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (59,'윈디','ㅇ','불꽃',null,'위협 / 타오르는불꽃','정의의마음','063_059.png','1.9m','155.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (60,'발챙이','ㅂ','물',null,'저수 / 습기','쓱쓱','064_060.png','0.6m','12.4kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (61,'슈륙챙이','ㅅ','물',null,'저수 / 습기','쓱쓱','065_061.png','1.0m','20.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (62,'강챙이','ㄱ','물','격투','저수 / 습기','쓱쓱','066_062.png','1.3m','54.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (63,'캐이시','ㅋ','에스퍼',null,'싱크로 / 정신력','매직가드','067_063.png','0.9m','19.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (64,'윤겔라','ㅇ','에스퍼',null,'싱크로 / 정신력','매직가드','068_064.png','1.3m','56.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (65,'후딘','ㅎ','에스퍼',null,'싱크로 / 정신력','매직가드','069_065_01.png','1.5m','48.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (66,'알통몬','ㅇ','격투',null,'근성 / 노가드','불굴의마음','071_066.png','0.8m','19.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (67,'근육몬','ㄱ','격투',null,'근성 / 노가드','불굴의마음','072_067.png','1.5m','70.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (68,'괴력몬','ㄱ','격투',null,'근성 / 노가드','불굴의마음','073_068.png','1.6m','130.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (69,'모다피','ㅁ','풀','독','엽록소','먹보','074_069.png','0.7m','4.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (70,'우츠동','ㅇ','풀','독','엽록소','먹보','075_070.png','1.0m','6.4kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (71,'우츠보트','ㅇ','풀','독','엽록소','먹보','076_071.png','1.7m','15.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (72,'왕눈해','ㅇ','물','독','클리어바디 / 해감액','젖은접시','077_072.png','0.9m','45.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (73,'독파리','ㄷ','물','독','클리어바디 / 해감액','젖은접시','078_073.png','1.6m','55.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (74,'꼬마돌','ㄱ','바위','땅','돌머리 / 옹골참','모래숨기','079_074.png','0.4m','20.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (75,'데구리','ㄷ','바위','땅','돌머리 / 옹골참','모래숨기','080_075.png','1.0m','105.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (76,'딱구리','ㄷ','바위','땅','돌머리 / 옹골참','모래숨기','081_076.png','1.4m','300.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (77,'포니타','ㅍ','불꽃',null,'도주 / 타오르는불꽃','불꽃몸','082_077.png','1.0m','30.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (78,'날쌩마','ㄴ','불꽃',null,'도주 / 타오르는불꽃','불꽃몸','083_078.png','1.7m','95.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (79,'야돈','ㅇ','물','에스퍼','둔감 / 마이페이스','재생력','084_079.png','1.2m','36.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (80,'야도란','ㅇ','물','에스퍼','둔감 / 마이페이스','재생력','085_080_01.png','1.6m','78.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (81,'코일','ㅋ','전기','강철','자력 / 옹골참','애널라이즈','086_081.png','0.3m','6.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (82,'레어코일','ㄹ','전기','강철','자력 / 옹골참','애널라이즈','087_082.png','1.0m','60.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (83,'파오리','ㅍ','노말','비행','날카로운눈 / 정신력','오기','088_083.png','0.8m','15.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (84,'두두','ㄷ','노말','비행','도주 / 일찍기상','갈지자걸음','089_084.png','1.4m','39.2kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (85,'두트리오','ㄷ','노말','비행','도주 / 일찍기상','갈지자걸음','090_085.png','1.8m','85.2kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (86,'쥬쥬','ㅈ','물',null,'두꺼운지방 / 촉촉바디','아이스바디','091_086.png','1.1m','90.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (87,'쥬레곤','ㅈ','물','얼음','두꺼운지방 / 촉촉바디','아이스바디','092_087.png','1.7m','120.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (88,'질퍽이','ㅈ','독',null,'악취 / 점착','독수','093_088.png','0.9m','30.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (89,'질뻐기','ㅈ','독',null,'악취 / 점착','독수','094_089.png','1.2m','30.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (90,'셀러','ㅅ','물',null,'조가비갑옷 / 스킬링크','방진','095_090.png','0.3m','4.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (91,'파르셀','ㅍ','물','얼음','조가비갑옷 / 스킬링크','방진','096_091.png','1.5m','132.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (92,'고오스','ㄱ','고스트','독','부유',null,'097_092.png','1.3m','0.1kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (93,'고우스트','ㄱ','고스트','독','부유',null,'098_093.png','1.6m','0.1kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (94,'팬텀','ㅍ','고스트','독','부유',null,'099_094_01.png','1.5m','40.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (95,'롱스톤','ㄹ','바위','땅','돌머리 / 옹골참','깨어진갑옷','101_095.png','8.8m','210.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (96,'슬리프','ㅅ','에스퍼',null,'불면 / 예지몽','정신력','102_096.png','1.0m','32.4kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (97,'슬리퍼','ㅅ','에스퍼',null,'불면 / 예지몽','정신력','103_097.png','1.6m','75.6kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (98,'크랩','ㅋ','물',null,'괴력집게 / 조가비갑옷','우격다짐','104_098.png','0.4m','6.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (99,'킹크랩','ㅋ','물',null,'괴력집게 / 조가비갑옷','우격다짐','105_099.png','1.3m','60.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (100,'찌리리공','ㅈ','전기',null,'정전기 / 방음','유폭','106_100.png','0.5m','10.4kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (101,'붐볼','ㅂ','전기',null,'정전기 / 방음','유폭','107_101.png','1.2m','66.6kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (102,'아라리','ㅇ','풀','에스퍼','엽록소','수확','108_102.png','0.4m','2.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (103,'나시','ㄴ','풀','에스퍼','엽록소','수확','109_103.png','2.0m','120.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (104,'탕구리','ㅌ','땅',null,'피뢰침 / 돌머리','전투무장','110_104.png','0.4m','6.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (105,'텅구리','ㅌ','땅',null,'피뢰침 / 돌머리','전투무장','111_105.png','1.0m','45.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (106,'시라소몬','ㅅ','격투',null,'유연 / 이판사판','곡예','112_106.png','1.5m','49.8kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (107,'홍수몬','ㅎ','격투',null,'날카로운눈 / 철주먹','정신력','113_107.png','1.4m','50.2kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (108,'내루미','ㄴ','노말',null,'마이페이스 / 둔감','날씨부정','114_108.png','1.2m','65.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (109,'또가스','ㄷ','독',null,'부유',null,'115_109.png','0.6m','1.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (110,'또도가스','ㄷ','독',null,'부유',null,'116_110.png','1.2m','9.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (111,'뿔카노','ㅂ','땅','바위','피뢰침 / 돌머리','이판사판','117_111.png','1.0m','115.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (112,'코뿌리','ㅋ','땅','바위','피뢰침 / 돌머리','이판사판','118_112.png','1.9m','120.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (113,'럭키','ㄹ','노말',null,'자연회복 / 하늘의은총','치유의마음','119_113.png','1.1m','34.6kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (114,'덩쿠리','ㄷ','풀',null,'엽록소 / 리프가드','재생력','120_114.png','1.0m','35.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (115,'캥카','ㅋ','노말',null,'일찍기상 / 배짱','정신력','121_115_01.png','2.2m','80.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (116,'쏘드라','ㅅ','물',null,'쓱쓱 / 스나이퍼','습기','123_116.png','0.4m','8.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (117,'시드라','ㅅ','물',null,'독가시 / 스나이퍼','습기','124_117.png','1.2m','25.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (118,'콘치','ㅋ','물',null,'쓱쓱 / 수의베일','피뢰침','125_118.png','0.6m','15.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (119,'왕콘치','ㅇ','물',null,'쓱쓱 / 수의베일','피뢰침','126_119.png','1.3m','39.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (120,'별가사리','ㅂ','물',null,'발광 / 자연회복','애널라이즈','127_120.png','0.8m','34.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (121,'아쿠스타','ㅇ','물','에스퍼','발광 / 자연회복','애널라이즈','128_121.png','1.1m','80.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (122,'마임맨','ㅁ','에스퍼','페어리','방음 / 필터','테크니션','129_122.png','1.3m','54.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (123,'스라크','ㅅ','벌레','비행','벌레의알림 / 테크니션','불굴의마음','130_123.png','1.5m','56.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (124,'루주라','ㄹ','얼음','에스퍼','둔감 / 예지몽','건조피부','131_124.png','1.4m','40.6kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (125,'에레브','ㅇ','전기',null,'정전기','의기양양','132_125.png','1.1m','30.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (126,'마그마','ㅁ','불꽃',null,'불꽃몸','의기양양','133_126.png','1.3m','44.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (127,'쁘사이저','ㅂ','벌레',null,'괴력집게 / 틀깨기','자기과신','134_127_01.png','1.5m','55.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (128,'켄타로스','ㅋ','노말',null,'위협 / 분노의경혈','우격다짐','136_128.png','1.4m','88.4kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (129,'잉어킹','ㅇ','물',null,'쓱쓱','주눅','137_129.png','0.9m','10.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (130,'갸라도스','ㄱ','물','비행','위협','자기과신','138_130.png','6.5m','235.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (131,'라프라스','ㄹ','물','얼음','저수 / 조가비갑옷','촉촉바디','140_131.png','2.5m','220.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (132,'메타몽','ㅁ','노말',null,'유연','괴짜','141_132.png','0.3m','4.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (133,'이브이','ㅇ','노말',null,'도주 / 적응력','위험예지','142_133.png','0.3m','6.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (134,'샤미드','ㅅ','물',null,'저수','촉촉바디','143_134.png','1.0m','29.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (135,'쥬피썬더','ㅈ','전기',null,'축전','속보','144_135.png','0.8m','24.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (136,'부스터','ㅂ','불꽃',null,'타오르는불꽃','근성','145_136.png','0.9m','25.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (137,'폴리곤','ㅍ','노말',null,'트레이스 / 다운로드','애널라이즈','146_137.png','0.9m','36.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (138,'암나이트','ㅇ','바위','물','쓱쓱 / 조가비갑옷','깨어진갑옷','147_138.png','0.4m','7.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (139,'암스타','ㅇ','바위','물','쓱쓱 / 조가비갑옷','깨어진갑옷','148_139.png','1.0m','35.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (140,'투구','ㅌ','바위','물','쓱쓱 / 전투무장','깨어진갑옷','149_140.png','0.5m','11.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (141,'투구푸스','ㅌ','바위','물','쓱쓱 / 전투무장','깨어진갑옷','150_141.png','1.3m','40.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (142,'프테라','ㅍ','바위','비행','돌머리 / 프레셔','긴장감','151_142_01.png','1.8m','59.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (143,'잠만보','ㅈ','노말',null,'면역 / 두꺼운지방','먹보','153_143.png','2.1m','460.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (144,'프리져','ㅍ','얼음','비행','프레셔','눈숨기','154_144.png','1.7m','55.4kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (145,'썬더','ㅅ','전기','비행','프레셔','정전기','155_145.png','1.6m','52.6kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (146,'파이어','ㅍ','불꽃','비행','프레셔','불꽃몸','156_146.png','2.0m','60.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (147,'미뇽','ㅁ','드래곤',null,'탈피','이상한비늘','157_147.png','1.8m','3.3kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (148,'신뇽','ㅅ','드래곤',null,'탈피','이상한비늘','158_148.png','4.0m','16.5kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (149,'망나뇽','ㅁ','드래곤 비행',null,'정신력','멀티스케일','159_149.png','2.2m','210.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (150,'뮤츠','ㅁ','에스퍼',null,'프레셔','긴장감','160_150_01.png','2.0m','122.0kg');
Insert into SCOTT.pokemon (PNO,PNAME,PINITIAL,PTYPE,PTYPE2,PFEATURE,PFEATURE_H,PPICTURE,PHEIGHT,PWEIGHT) values (151,'뮤','ㅁ','에스퍼',null,'싱크로',null,'163_151.png','1.5m','33.0kg');

select*from pokemon;
commit work;