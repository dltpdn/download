
-- 최근 운동 기록
DELETE FROM workout_history;
INSERT INTO workout_history
(workout_date, time_slot, workout_type, detail, duration_min, intensity, place)
VALUES
(date('now', 'localtime', '-6 day'), '저녁', '웨이트',
 '벤치프레스 10회 x 3세트, 랫풀다운 12회 x 3세트, 숄더프레스 10회 x 3세트',
 50, '중간', '한빛 스포츠센터'),

(date('now', 'localtime', '-5 day'), '새벽', '러닝',
 '6:10/km 페이스 조깅 약 7km',
 45, '가벼움', '잠원 한강공원'),

(date('now', 'localtime', '-4 day'), '저녁', '수영',
 '자유형 600m, 평영 400m, 배영 200m',
 45, '중간', '한빛 스포츠센터'),

(date('now', 'localtime', '-3 day'), '저녁', '웨이트',
 '스쿼트 10회 x 3세트, 레그프레스 12회 x 3세트, 레그컬 12회 x 3세트',
 50, '중간', '한빛 스포츠센터'),

(date('now', 'localtime', '-2 day'), '새벽', '러닝',
 '6:20/km 페이스 조깅 약 6km',
 40, '가벼움', '반포 한강공원'),

(date('now', 'localtime', '-1 day'), '저녁', '웨이트',
 '벤치프레스 10회 x 3세트, 시티드로우 12회 x 3세트, 숄더프레스 10회 x 3세트',
 50, '중간', '한빛 스포츠센터');


-- 최근 식단 기록
DELETE FROM meal_history;
INSERT INTO meal_history
(meal_date, meal_type, detail)
VALUES
(date('now', 'localtime', '-6 day'),  '영양식',
 '닭가슴살 150g, 현미밥 150g, 샐러드 1팩'),

(date('now', 'localtime', '-5 day'),  '일반식',
 '일반식'),

(date('now', 'localtime', '-4 day'),  '영양식',
 '생선 150g, 고구마 200g, 토마토 1개'),

(date('now', 'localtime', '-3 day'),  '영양식',
 '닭가슴살 150g, 현미밥 150g, 샐러드 1팩'),

(date('now', 'localtime', '-2 day'),  '일반식',
 '일반식'),

(date('now', 'localtime', '-1 day'),  '영양식',
 '달걀 2개, 고구마 200g, 우유 200ml, 토마토 1개');


-- 현재 냉장고 재고
DELETE FROM refrigerator_inventory;

INSERT INTO refrigerator_inventory
(item_name, quantity, unit, updated_at)
VALUES
('닭가슴살', 1200, 'g', datetime('now', 'localtime')),
('현미밥',   1500, 'g', datetime('now', 'localtime')),
('생선',      800, 'g', datetime('now', 'localtime')),
('고구마',   1500, 'g', datetime('now', 'localtime')),
('샐러드',      6, '팩', datetime('now', 'localtime')),
('토마토',     10, '개', datetime('now', 'localtime')),
('달걀',       15, '개', datetime('now', 'localtime')),
('우유',     2000, 'ml', datetime('now', 'localtime')),
('단백질 음료', 6, '개', datetime('now', 'localtime'));
