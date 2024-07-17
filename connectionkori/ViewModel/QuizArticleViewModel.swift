//
//  QuizArticleViewModel.swift
//  connectionkori
//
//  Created by 제민국 on 7/18/24.
//

import SwiftUI

class QuizArticleViewModel : ObservableObject {
    @Published var title : String = ""
    @Published var content : String = ""
    @Published var iscorrect : Bool = false
    @Published var qarticle: [QuizArticle] = [
        QuizArticle(
            title: "한국의 전통 문화 퀴즈",
            content: "한국의 전통적인 문화 요소들에 대해 알아보는 퀴즈입니다.",
            quizItems: [
                QuizArticlePicture(image: Image("hanbok"), question: "이것은 한복인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("kimchi"), question: "이것은 김치인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("hanok"), question: "이것은 한옥인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("bojagi"), question: "이것은 보자기인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("janggu"), question: "이것은 장구인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("hanji"), question: "이것은 한지인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("bossam"), question: "이 음식은 보쌈인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("gayageum"), question: "이 악기는 가야금인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("ondol"), question: "이것은 온돌 시스템인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("soju"), question: "이 술은 소주인가요?", isCorrect: true)
            ]
        ),
        QuizArticle(
            title: "한국의 현대 문화 퀴즈",
            content: "한국의 현대 문화와 트렌드에 대해 알아보는 퀴즈입니다.",
            quizItems: [
                QuizArticlePicture(image: Image("kpop"), question: "이것은 K-pop 공연인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("kdrama"), question: "이것은 한국 드라마의 한 장면인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("esports"), question: "이것은 한국의 e스포츠 경기인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("kbeauty"), question: "이것은 K-뷰티 제품인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("streetfood"), question: "이것은 한국의 길거리 음식인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("noraebang"), question: "이곳은 노래방인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("mukbang"), question: "이것은 먹방 방송인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("pcbang"), question: "이곳은 PC방인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("hallyu"), question: "이것은 한류 현상을 나타내나요?", isCorrect: true),
                QuizArticlePicture(image: Image("kfashion"), question: "이것은 K-패션의 예시인가요?", isCorrect: true)
            ]
        ),
        QuizArticle(
            title: "한국의 역사 퀴즈",
            content: "한국의 주요 역사적 사건과 인물에 대해 알아보는 퀴즈입니다.",
            quizItems: [
                QuizArticlePicture(image: Image("sejong"), question: "이 인물은 세종대왕인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("gyeongbokgung"), question: "이 건물은 경복궁인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("admiral_yi"), question: "이 인물은 이순신 장군인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("jikji"), question: "이것은 세계 최초의 금속활자본인 직지심체요절인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("silla_crown"), question: "이것은 신라 금관인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("hunminjeongeum"), question: "이것은 훈민정음 해례본인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("goguryeo_mural"), question: "이것은 고구려 고분 벽화인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("goryeo_celadon"), question: "이것은 고려청자인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("sungnyemun"), question: "이 건물은 숭례문인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("geobukseon"), question: "이 배는 거북선인가요?", isCorrect: true)
            ]
        ),
        QuizArticle(
            title: "한국의 지리 퀴즈",
            content: "한국의 주요 지리적 특징과 명소에 대해 알아보는 퀴즈입니다.",
            quizItems: [
                QuizArticlePicture(image: Image("jeju"), question: "이 섬은 제주도인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("seoraksan"), question: "이 산은 설악산인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("hanriver"), question: "이 강은 한강인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("dokdo"), question: "이 섬은 독도인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("haeundae"), question: "이 해변은 해운대인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("namsan_tower"), question: "이 탑은 남산서울타워인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("gwanghwamun"), question: "이 광장은 광화문 광장인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("bulguksa"), question: "이 사찰은 불국사인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("jeonju_hanok"), question: "이 마을은 전주 한옥마을인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("dmz"), question: "이 지역은 DMZ(비무장지대)인가요?", isCorrect: true)
            ]
        ),
        QuizArticle(
            title: "한국의 음식 퀴즈",
            content: "한국의 다양한 음식 문화에 대해 알아보는 퀴즈입니다.",
            quizItems: [
                QuizArticlePicture(image: Image("bibimbap"), question: "이 음식은 비빔밥인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("samgyeopsal"), question: "이 음식은 삼겹살인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("tteokbokki"), question: "이 음식은 떡볶이인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("kimchi_jjigae"), question: "이 음식은 김치찌개인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("japchae"), question: "이 음식은 잡채인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("sundae"), question: "이 음식은 순대인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("samgyetang"), question: "이 음식은 삼계탕인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("jajangmyeon"), question: "이 음식은 자장면인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("bulgogi"), question: "이 음식은 불고기인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("patbingsu"), question: "이 디저트는 팥빙수인가요?", isCorrect: true)
            ]
        ),
        QuizArticle(
            title: "한국의 기술과 혁신 퀴즈",
            content: "한국의 기술 발전과 혁신에 대해 알아보는 퀴즈입니다.",
            quizItems: [
                QuizArticlePicture(image: Image("samsung"), question: "이 로고는 삼성전자의 것인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("hyundai"), question: "이 자동차는 현대자동차의 제품인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("kakaotalk"), question: "이 앱은 카카오톡인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("lg"), question: "이 로고는 LG전자의 것인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("naver"), question: "이 로고는 네이버의 것인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("kia"), question: "이 자동차는 기아자동차의 제품인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("coupang"), question: "이 로고는 쿠팡의 것인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("sk"), question: "이 로고는 SK그룹의 것인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("nexon"), question: "이 로고는 넥슨의 것인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("line"), question: "이 앱은 라인인가요?", isCorrect: true)
            ]
        ),
        QuizArticle(
            title: "한국의 자연 퀴즈",
            content: "한국의 아름다운 자연 경관에 대해 알아보는 퀴즈입니다.",
            quizItems: [
                QuizArticlePicture(image: Image("seoraksan"), question: "이 국립공원은 설악산인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("hallasan"), question: "이 산은 한라산인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("suncheon_bay"), question: "이 갯벌은 순천만인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("dadohaehaesang"), question: "이 국립공원은 다도해해상국립공원인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("seonjae_cliff"), question: "이 절벽은 선재해안절벽인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("andong_lake"), question: "이 호수는 안동호인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("juwangsan"), question: "이 국립공원은 주왕산국립공원인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("boseong_tea"), question: "이 차밭은 보성 녹차밭인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("upo_wetland"), question: "이 습지는 우포늪인가요?", isCorrect: true),
                QuizArticlePicture(image: Image("dodong_seowon"), question: "이 곳은 도동서원인가요?", isCorrect: true)
            ]
        )
        ]

    
}
