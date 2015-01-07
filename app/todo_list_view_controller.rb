class TodoListViewController < UITableViewController
  def loadView
    super

    self.title = "Todos"
    tableView.registerClass(TodoCell, forCellReuseIdentifier: TodoCell::ID)
  end

  def tableView(tableView, numberOfRowsInSection: section)
    Todo.count
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(TodoCell::ID, forIndexPath: indexPath)
    cell.text_label.text = Todo.all[indexPath.row].text
    cell.notes_label.text = Todo.all[indexPath.row].notes
    cell
  end

  def viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
    tableView.estimatedRowHeight = 80
  end
end
