todos = []


def show_menu():
    print("\nTo-Do List App")
    print("1. Add To-Do")
    print("2. View To-Dos")
    print("3. Exit")


def main():
    while True:
        show_menu()
        choice = input("Enter choice: ")
        if choice == "1":
            task = input("Enter task: ")
            todos.append(task)
        elif choice == "2":
            print("To-Dos:")
            for i, task in enumerate(todos, 1):
                print(f"{i}. {task}")
        elif choice == "3":
            break
        else:
            print("Invalid choice")


if __name__ == "__main__":
    main()
