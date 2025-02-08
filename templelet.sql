-- 상품 데이터 추가
INSERT INTO PRODUCTS (P_NAME, P_PRICE, P_DESCRIPTION, P_INGREDIENTS, P_NUTRITION_INFO, P_ORIGIN, P_USAGE, P_EXPIRATION_DATE, P_MANUFACTURER, P_IMG_URL, P_STOCK_STATUS) 
VALUES 
('오메가3 홍합추출물', 35000, '항산화 성분이 풍부한 프리미엄 홍합추출물', '홍합추출물분말(뉴질랜드산), 비타민E', '1일 섭취량 2캡슐(1,000mg) 당 열량 10kcal, 단백질 2g, 지방 0g', '뉴질랜드', '1일 2회, 1회 1캡슐씩 물과 함께 섭취', '2025-12-31', '헬시라이프', 'omega3_1.jpg', 100),

('프로바이오틱스 유산균', 28000, '장 건강을 위한 100억 유산균', '락토바실러스, 비피더스균, 말토덱스트린', '1포당 유산균 100억마리 함유, 열량 5kcal', '한국', '1일 1회, 1포를 물과 함께 섭취', '2025-10-15', '바이오팜', 'probiotics_1.png', 150),

('저당 단백질 쉐이크', 42000, '무첨가 저당 프로틴 쉐이크', '분리유청단백질, 코코아분말, 스테비아', '1회 섭취량(30g) 당 단백질 25g, 당류 1g 미만', '미국', '물 300ml에 1스쿱 섭취', '2025-08-20', '헬시웨이', 'protein_shake_1.jpg', 80);

-- 체질 태그 데이터 추가
INSERT INTO PHYSIQUE_TAG (P_ID, PHYSIQUE_TAG_NAME) 
VALUES 
(1, '관절약화체질'),
(1, '혈액순환체질'),
(2, '장건강체질'),
(2, '면역력약화체질'),
(3, '대사저하체질'),
(3, '근육량부족체질');

INSERT INTO PRODUCT_CATEGORY (P_CATEGORY_NAME)
VALUES 
('건강기능식품'),
('영양제'),
('건강보조식품'),
('단백질보충제'),
('자연식품'),
('유기농식품'),
('저당제품'),
('해산물가공품'),
('건강간식');

-- 제품 카테고리 연결
INSERT INTO PRODUCT_CATEGORY_DETAILS (P_CATEGORY_ID, P_ID, P_CATEGORY_DETAILS_NAME)
VALUES 
(8, 1, '건강기능식품'),
(3, 2, '건강보조식품'),
(7, 3, '단백질보충제');

INSERT INTO CART (
    USER_ID,
    P_ID,
    PRODUCT_QUANTITY,
    PRODUCT_PRICE
) 
VALUES (
    1,                          -- USER_ID
    1,                          -- P_ID
    2,                          -- 수량
    70000                       -- 총 가격
);

-- ORDERS INSERT
INSERT INTO ORDERS (
    USER_ID,
    CART_ID,
    ORDER_DATE,
    ORDER_STATUS,
    ORDER_TOTAL_AMOUNT,
    ORDER_SHIPPING_COST,
    ORDER_SHIPPING_REQUEST
)
VALUES (
    1,                          -- USER_ID
    1,                          -- CART_ID
    CURRENT_DATE,               -- 주문일자
    'PENDING',                  -- 주문상태
    70000,                      -- 총 주문금액
    3000,                       -- 배송비
    '문 앞에 놓아주세요'         -- 배송 요청사항
);