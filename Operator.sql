USE practice_sql;

-- 연산자
-- 산술연산자: +, -, *, /, %
SELECT speed_80m + speed_76m + speed_70m + speed_35m AS total_speed
FROM jeju;

SELECT (speed_80m + speed_76m + speed_70m + speed_35m) / 4 AS avg_speed
FROM jeju;

-- 비교연산자 (WHERE절에서 자주 사용)

-- =: 좌항이 우항과 같으면 true
SELECT * FROM jeju WHERE observe_date = '2023-07-05';

-- <>, != : 좌항이 우항과 다르면 true
SELECT * FROM jeju WHERE observe_date <> '2023-07-05';
SELECT * FROM jeju WHERE observe_date != '2023-07-05';




