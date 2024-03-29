package academy.learnprogramming.service;

import academy.learnprogramming.model.TodoData;
import academy.learnprogramming.model.TodoItem;
import org.springframework.stereotype.Service;

@Service
public class TodoItemServiceImpl implements TodoItemService {
    private final TodoData todoData = new TodoData();

    @Override
    public void addItem(TodoItem item) {
        todoData.addItem(item);

    }

    @Override
    public void removeItem(int id) {
        todoData.removeItem(id);
    }

    @Override
    public TodoItem getItem(int id) {
        return todoData.getItem(id);
    }

    @Override
    public void updateItem(TodoItem toUpdate) {
        todoData.updateItem(toUpdate);
    }

    @Override
    public TodoData getData() {
        return todoData;
    }
}
