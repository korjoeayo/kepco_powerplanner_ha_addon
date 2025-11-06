한국전력공사 파워플래너에서 제공하는 데이터를 회신해주는 홈어시스턴트 애드온이야

사이트는 https://pp.kepco.co.kr 인데 일반적인 데이터 API 같은게 없어서
셀레니움으로 데이터를 크롤링 해야해

일단 https://pp.kepco.co.kr에서 RSA_USER_ID 에 아이디 RSA_USER_PWD 에 비밀번호 적고 intro_btn_indi 를 클릭해야해
그리고 나온 화면에서 각 데이터를 추출하는거야
실시간 사용량은 F_AP_QT
예상사용량은 PREDICT_TOT
실시간요금은 TOTAL_CHARGE
예상요금은 PREDICT_TOTAL_CHARGE
