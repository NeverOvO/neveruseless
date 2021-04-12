//自定义简化double转化问题
neverDoubleTryOrZero(String num){
  return (double.tryParse(num.toString()) ?? 0.00);
}