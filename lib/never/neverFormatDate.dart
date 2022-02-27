import 'package:date_format/date_format.dart';

neverFormatDate(int timeDate,{
  String yyF = 'yyyy' ,String yyMmF = '-',
  String mmF = 'mm' , String mmDdF = '-',
  String ddF = 'dd' , String ddHhF = ' ',
  String hhF = 'HH' , String hhNnF = ':',
  String nnF = 'nn' , String nnSsF = ':',
  String ssF = 'ss',
}){
  return formatDate(DateTime.fromMillisecondsSinceEpoch(timeDate),[yyF, yyMmF, mmF, mmDdF, ddF, ddHhF, hhF, hhNnF, nnF, nnSsF, ssF]);
}
