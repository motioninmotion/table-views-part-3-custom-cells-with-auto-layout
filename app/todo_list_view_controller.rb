class TodoListViewController < UITableViewController
  def loadView
    super

    self.title = "Todos"
    tableView.registerClass(TodoCell, forCellReuseIdentifier: TodoCell::ID)
  end

  def tableView(_, numberOfRowsInSection: _)
    Todo.count
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(TodoCell::ID, forIndexPath: indexPath)
    cell.text_label.text = Todo.all[indexPath.row].text
    cell.notes_label.text = Todo.all[indexPath.row].notes
    cell
  end

  def viewWillTransitionToSize(_, withTransitionCoordinator: _)
    tableView.estimatedRowHeight = 80
  end
end
