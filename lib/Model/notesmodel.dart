import 'package:notebook/DbHelper/dbhelper.dart';

class NotesModel{
  int? id;
  String title;
  String desc;

  NotesModel({required this.title,required this.desc,this.id});

  factory NotesModel.formMap(Map<String,dynamic>map){
   return NotesModel(title: map[DbHelper.note_title], desc: map[DbHelper.note_desc],id: map[DbHelper.note_id]);
  }

  Map<String,dynamic>toMap(){
    return {
      DbHelper.note_id:id,
      DbHelper.note_title:title,
      DbHelper.note_desc:desc
    };
  }
}