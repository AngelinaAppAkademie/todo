import 'package:todo/src/data/database_repository.dart';
import 'package:todo/src/features/todo_overview/domain/todo.dart';

class MockDatabase implements DatabaseRepository {
  // Liste an Todos erstellen
  List<Todo> todos = [];

  // Hier unten mit der Todo Liste arbeiten
  @override
  void addTodo(Todo todo) {
    todos.add(todo);
  }

  @override
  List<Todo> getTodos() {
    return todos;
  }

  @override
  void removeTodo(Todo todo) {
    todos.remove(todo);
  }

  @override
  void updateTodo(Todo todo, bool isDone) {
    // TODO: implement updateTodo
    todo.isDone = isDone;
  }
}
