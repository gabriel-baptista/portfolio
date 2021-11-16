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
    title: "Yin Yang",
    category:
        "Aplicação WEB / Mobile para auxiliar na gerência de clínicas de nutrição. \n\nTecnologias: Dart, Flutter e Firebase. \n\nProjeto Privado.",
    image: "../assets/img/yin_yang_logo.png",
    url: '#',
    private: true,
  ),
  RecentWork(
    id: 2,
    title: "Food Break",
    category:
        "Aplicativo para delivery de refeições e gerenciamento de restaurantes, utilizando apenas estrutura de dados. \n\nTecnologias: Dart e Flutter.",
    image: "../assets/img/foodBreak.png",
    url: 'https://github.com/gabriel-baptista/projeto',
    private: false,
  ),
  RecentWork(
    id: 3,
    title: "Clone PicPay",
    category:
        "Aplicativo clone do PicPay, para fins de estudos. \n\nTecnologias: Dart e Flutter.",
    image: "../assets/img/picpay.png",
    url: 'https://github.com/gabriel-baptista/clone_picpay',
    private: false,
  ),
  RecentWork(
    id: 4,
    title: "Tarefas",
    category:
        "Aplicativo de para listar tarefas a fazer ou concluídas, para fins educativos. \n\nTecnologias: Dart e Flutter.",
    image: "../assets/img/checkList.png",
    url: 'https://github.com/gabriel-baptista/lista_tarefas_flutter',
    private: false,
  ),
  RecentWork(
    id: 5,
    title: "Yin Yang",
    category:
        "Aplicativo para gerenciar uma clínica nutricionista. \n\nTecnologias: C# e MySQL.",
    image: "../assets/img/nutricao.png",
    url: 'https://github.com/gabriel-baptista/Yin-Yang/tree/main/YinYang',
    private: false,
  ),
  RecentWork(
    id: 6,
    title: "Yin Yang",
    category:
        "Aplicativo para gerenciar uma clínica nutricionista. \n\nTecnologias: JAVA e MySQL.",
    image: "../assets/img/nutricao.png",
    url: 'https://github.com/gabriel-baptista/Yin-Yang/tree/main/YinYang',
    private: false,
  ),
];
