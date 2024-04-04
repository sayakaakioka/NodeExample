class Node {
  // このノードを描画するx座標
  private final int x;

  // このノードを描画するy座標
  private final int y;

  // このノードの名前
  private final String name;

  // 隣接しているノードの番号（setup()中の「i番目」）
  private ArrayList<Integer> neighbors = new ArrayList<Integer>();

  /**
   * 指定した座標と名前で初期化
   */
  public Node(int x, int y, String name) {
    this.x = x;
    this.y = y;
    this.name = name;
  }

  /**
   *  名前を返す
   */
  public String name() {
    return this.name;
  }

  /**
   * 隣接ノードのリストを返す
   */
  public ArrayList<Integer> neighbors() {
    return this.neighbors;
  }

  /**
   * 隣接ノードを追加する
   */
   public void addNeighbors(int n){
     this.neighbors.add(n);
   }

  /**
   * x座標を返す
   */
  public int x() {
    return this.x;
  }

  /**
   * y座標を返す
   */
  public int y() {
    return this.y;
  }
}
