class controller{
  Future<int>printdata()
  async {
     await Future.delayed(Duration(seconds: 4));
    return 10;
  }

}