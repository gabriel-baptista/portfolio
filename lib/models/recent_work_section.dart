// ignore_for_file: prefer_const_constructors

class RecentWork {
  final String image, category, title, url;
  final int id;
  final bool private;

  RecentWork({
    required this.id,
    required this.image,
    required this.category,
    required this.title,
    required this.url,
    required this.private,
  });
}

// lista de trabalhos dummy
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "YinYang (TG)",
    category:
        "O YinYang foi desenvolvido com o intuito de ser uma plataforma para auxiliar os nutricionistas em suas consultas, podendo adicionar informações e analisá-las através de gráficos. \n\nEsse site foi desenvolvido como Trabalho de Graduação para a faculdade FATEC Prof. Waldomiro May. \n\nTecnologias: React JS, Laravel e MySQL",
    image: "assets/img/yin_yang_logo.png",
    url: 'https://github.com/gabriel-baptista/Yin-Yang',
    private: true,
  ),
  RecentWork(
    id: 1,
    title: "Netflix",
    category:
        "Site clone da Netflix com o objetivo de aprender React. \n\nTecnologias: React JS",
    image: "img/Netflix-logo.png",
    url: 'https://github.com/gabriel-baptista/netflixclone',
    private: true,
  ),
  RecentWork(
    id: 2,
    title: "Yin Yang",
    category:
        "Aplicação WEB / Mobile para auxiliar na gerência de clínicas de nutrição. \n\nTecnologias: Dart, Flutter e Firebase.",
    image: "assets/img/yin_yang_logo.png",
    url: 'https://yinyang.gabrieloliveira.dev',
    private: true,
  ),
  RecentWork(
    id: 3,
    title: "Food Break",
    category:
        "Aplicativo para delivery de refeições e gerenciamento de restaurantes, utilizando apenas estrutura de dados. \n\nTecnologias: Dart e Flutter.",
    image: "assets/img/foodBreak.png",
    url: 'https://github.com/gabriel-baptista/projeto',
    private: false,
  ),
  RecentWork(
    id: 4,
    title: "Clone PicPay",
    category:
        "Aplicativo clone do PicPay, para fins de estudos. \n\nTecnologias: Dart e Flutter.",
    image: "assets/img/picpay.png",
    url: 'https://github.com/gabriel-baptista/clone_picpay',
    private: false,
  ),
  RecentWork(
    id: 5,
    title: "Tarefas",
    category:
        "Aplicativo de para listar tarefas a fazer ou concluídas, para fins educativos. \n\nTecnologias: Dart e Flutter.",
    image: "assets/img/checkList.png",
    url: 'https://github.com/gabriel-baptista/lista_tarefas_flutter',
    private: false,
  ),
  RecentWork(
    id: 6,
    title: "Yin Yang",
    category:
        "Aplicativo para gerenciar uma clínica nutricionista. \n\nTecnologias: C# e MySQL.",
    image: "assets/img/nutricao.png",
    url: 'https://github.com/gabriel-baptista/Yin-Yang/tree/main/YinYang',
    private: false,
  ),
  RecentWork(
    id: 7,
    title: "Yin Yang",
    category:
        "Aplicativo para gerenciar uma clínica nutricionista. \n\nTecnologias: JAVA e MySQL.",
    image: "assets/img/nutricao.png",
    url: 'https://github.com/gabriel-baptista/Yin-Yang/tree/main/YinYang',
    private: false,
  ),
];
