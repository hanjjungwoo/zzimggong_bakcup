SELECT * FROM RESTAURANT;
SELECT * FROM respick;
SELECT * FROM RESTAURANT;

ALTER TABLE menu  MODIFY (food_image VARCHAR2(4000));
SELECT * FROM RESTAURANT , RESPICK, food, zzim;

SELECT * FROM RESPICK WHERE RESNUM ='123-45-67890' ;

SELECT * FROM menu;
SELECT * FROM RES_USER;
UPDATE MENU 
SET FOOD_IMAGE='https://github.com/jeonyunhwan/zzimggong_project/blob/main/ZzimGgong/src/main/webapp/index_markup/img/gamzatang.jpg?raw=true'
WHERE RESNUM ='123-45-67892';

SELECT * FROM RESTAURANT;
UPDATE RESTAURANT
SET RES_NAME =?, RES_EMAIL =?,RES_ADDRESSS =?,RES_PHONENUM =?,RES_IMG =?, 
BUSINESS_HOURS =?, DAY_OFF =?, BREAK_TIME =?, CONVENIENT =?, INTRODUCE =?, DEPOSIT =?, ENROLL_DATE =?, WATING =?, RESERVATION =?
WHERE RESNUM =?;
UPDATE RESTAURANT
SET CONVENIENT ='2222'
WHERE RESNUM ='123-45-67890';

UPDATE RESTAURANT
SET RES_NAME ='ㄱㄱ', RES_EMAIL ='ㄴ',RES_ADDRESSS ='ㄷ',RES_PHONENUM ='ㄹ', 
BUSINESS_HOURS ='33', DAY_OFF ='ㄱㄱ', BREAK_TIME ='ㄱ', CONVENIENT ='ㄴ', INTRODUCE ='ㄴ', DEPOSIT =122,WATING =0, RESERVATION =0
WHERE RESNUM ='123-45-67890';


