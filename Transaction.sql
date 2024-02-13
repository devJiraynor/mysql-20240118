USE practice_sql;

-- Transaction: SQL로 작업하는 작업 단위

-- 회원가입: user - email_authentication
-- 사용자는 아이디를 입력하고 중복 확인을 함
-- 만약 입력한 아이디가 종복된 아이디가 아니라면
-- 비밀번호, 비밀번호 확인, 이메일을 입력하고
-- 이메일로 인증 번호를 전송
-- 사용자는 이메일에 전송된 인증 번호를 확인 후 입력하여
-- 이메일 인증을 진행함
-- 이메일 인증을 완료한 후에 회원가입 버튼을 눌러서 회원가입을 마무리함

CREATE TABLE user (
    id VARCHAR(100) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE email_authentication (
    email VARCHAR(255) PRIMARY KEY,
    authentication_code VARCHAR(4) NOT NULL
);

-- 사용자가 아이디를 'idddd'로 입력했다.

-- 1. 아이디 중복확인
SELECT * FROM user WHERE id = 'idddd';

-- 사용자가 비밀번호를 'P!ssw0rd', 비밀번호 확인을 'P!ssw0rd',
-- 이메일을 'email@email.com', 서버가 생성한 코드는 'OCMD'이다.

-- 2. 이메일 인증
INSERT email_authentication VALUES ('email@email.com', 'OCMD');
