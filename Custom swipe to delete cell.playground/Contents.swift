//CREATE A CUSTOM SWIPE TO DELETE CELL FOR TABLE VIEW

func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    let deleteAction = UIContextualAction(style: .destructive, title: nil) { (_, _, completionHandler) in
        
        //Delete from database
        //Delete from array

        //Remove row from table view
        tableView.deleteRows(at: [indexPath], with: .left)
    }
    
    completionHandler(true)
}

deleteAction.image = UIImage(systemName: "trash")
deleteAction.backgroundColor = .systemRed
let configuration = UISwipeActionsConfiguration(actions: [deleteAction])

return configuration
}
