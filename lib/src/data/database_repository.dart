import 'package:todo/src/features/todo_overview/domain/todo.dart';

abstract class DatabaseRepository {
  Future<List<Todo>> getTodos(); // read
  Future<void> addTodo(Todo todo); // create 
  Future<void> removeTodo(Todo todo); // delete
  Future<void> updateTodo(Todo todo, bool isDone); // update
}