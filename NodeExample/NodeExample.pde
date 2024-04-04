// 全てのノードを保管するリストを用意
// setup()の中で、u、v、w、x、yの順番に先頭から入れていく
ArrayList<Node> list = new ArrayList<Node>();

void setup() {
  // 画面の用意
  size(800, 600);
  background(255, 255, 255);

  // 隣接行列
  int[][] M = {
    //u, v, w, x, y
    {2, 1, 0, 1, 0},
    {1, 0, 1, 1, 0},
    {0, 1, 0, 2, 0},
    {1, 1, 2, 0, 1},
    {0, 0, 0, 1, 0},
  };

  // ループで初期化したいので名前の配列を作る
  String names[] = {"u", "v", "w", "x", "y"};

  // 以下でノードを作って順にリストに入れていく
  for (int i=0; i<M.length; i++) {
    // ランダムな座標、i番目の名前でノードを作成
    int x = int(random(100, 700));
    int y = int(random(100, 500));
    Node node = new Node(x, y, names[i]);

    // 隣接しているノードをこのノードのリストに追加
    for (int j=0; j<M[0].length; j++) {
      if (M[i][j] > 0) {
        node.addNeighbors(j);
      }
    }

    // 今作ったノードをリストに追加
    list.add(node);
  }

  // ここまでで、座標、名前、隣接ノードの情報をもったノード群が
  // listに保存されたはず。
}

void draw() {
  // ここで色々図示する
  // 今回はあくまでもサンプルなので、情報の取り方の例として
  // コンソールに情報を表示する。

  // リストの先頭から順に情報を表示するためのループ
  for (Node node : list) {
    String name = node.name();
    int x = node.x();
    int y = node.y();

    // 以上の情報を出力
    print(name + ": x = " + x + ", y = " + y);

    // 隣接しているノードを順番に取得・表示
    print(", neighbors = ");
    for (int id : node.neighbors()) {
      String neighborName = list.get(id).name();

      // 取得した名前を表示
      print(neighborName + " ");
    }

    // このノードの情報は以上なので改行を出力
    println();
  }

  // draw()をループさせない
  noLoop();
}
