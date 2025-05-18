# light_ship

**light_ship**은 Flutter를 사용하여 개발 중인 명함 지갑 애플리케이션입니다.  
이 앱은 사용자가 명함을 디지털로 저장하고 관리할 수 있도록 도와주는 것을 목표로 합니다.

---

## 🛠 기술 스택

- **Flutter**: 크로스 플랫폼 모바일 애플리케이션 프레임워크
- **Dart**: Flutter 개발 언어
- **Firebase**: 인증 및 데이터 저장을 위한 백엔드 서비스

---

## 📁 프로젝트 구조
```
light_ship/
├── android/ # 안드로이드 플랫폼 관련 파일
├── ios/ # iOS 플랫폼 관련 파일
├── lib/ # Dart 소스 코드
├── assets/ # 이미지 및 기타 리소스
├── test/ # 테스트 코드
├── pubspec.yaml # 프로젝트 의존성 및 설정
├── firebase.json # Firebase 설정 파일
└── README.md # 프로젝트 설명 파일
```
---

## 🚀 시작하기

```bash
# 1. 저장소 클론
git clone https://github.com/SunshineMoonGit/light_ship.git

# 2. 디렉토리 이동
cd light_ship

# 3. 패키지 설치
flutter pub get

# 4. 앱 실행
flutter run

---

📌 주요 기능 (예정)
명함 스캔 및 OCR 기능

명함 정보 저장 및 편집

명함 목록 관리 및 검색/필터링

명함 공유 기능 (QR / 링크)