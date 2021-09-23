// ignore_for_file: prefer_const_constructors

class RecentWork {
  final String image, category, title, url;
  final int id;

  RecentWork({
    required this.id,
    required this.image,
    required this.category,
    required this.title,
    required this.url,
  });
}

// lista de trabalhos dummy
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Food Break",
    category:
        "Aplicativo para delivery de refeições e gerenciamento de restaurantes, utilizando apenas estrutura de dados. \nFerramentas: Dart e Flutter",
    image: "../assets/img/foodBreak.png",
    url: 'https://github.com/gabriel-baptista/projeto',
  ),
  RecentWork(
    id: 2,
    title: "Clone PicPay",
    category:
        "Aplicativo clone do PicPay, para fins de estudos. \n: Dart e Flutter",
    image: "../assets/img/picpay.png",
    url: 'https://github.com/gabriel-baptista/clone_picpay',
  ),
  RecentWork(
    id: 3,
    title: "Tarefas",
    category:
        "Aplicativo de para listar tarefas a fazer ou concluídas, para fins educativos. \nFerramentas: Dart e Flutter",
    image: "../assets/img/checkList.png",
    url: 'https://github.com/gabriel-baptista/lista_tarefas_flutter',
  ),
  RecentWork(
    id: 4,
    title: "Yin Yang",
    category:
        "Aplicativo para gerenciar uma clínica nutricionista. \nFerramentas: C#, MySQL",
    image: "../assets/img/nutricao.png",
    url: 'https://github.com/gabriel-baptista/Yin-Yang/tree/main/YinYang',
  ),
];
