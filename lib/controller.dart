class controller{
  Future<int>printdata()
  async {
     await Future.delayed(Duration(seconds: 2));
    return 10;
  }

}