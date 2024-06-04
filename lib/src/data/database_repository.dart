import 'package:todo/src/features/todo_overview/domain/todo.dart';

abstract class DatabaseRepository {
  List<Todo> getTodos();
  void addTodo(Todo todo);
  void removeTodo(Todo todo);
  void updateTodo(Todo todo, bool isDone);
}