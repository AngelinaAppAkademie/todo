import 'package:todo/src/data/database_repository.dart';
import 'package:todo/src/features/todo_overview/domain/todo.dart';

class MockDatabase implements DatabaseRepository {
  // Liste an Todos erstellen
  List<Todo> todos = [Todo(title: 'Beispiel', isDone: false)];

  // Hier unten mit der Todo Liste arbeiten
  @override
  Future<void> addTodo(Todo todo) async {
    await Future.delayed(const Duration(seconds: 2));
    todos.add(todo);
  }

  @override
  Future<List<Todo>> getTodos() async {
    await Future.delayed(const Duration(seconds: 2));
    return todos;
  }

  @override
  Future<void> removeTodo(Todo todo) async {
    await Future.delayed(const Duration(seconds: 2));
    todos.remove(todo);
  }

  @override
  Future<void> updateTodo(Todo todo, bool isDone) async {
    await Future.delayed(const Duration(seconds: 2));
    todo.isDone = isDone;
  }
}
