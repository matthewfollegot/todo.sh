populate_todo_list:
	@echo "populating todo list..."
	source ./testing.sh
	todo_list=("eggs" "bacon" "grit" "sausage")
	for i in "${todo_list[@]}"; do
		todo ${todo_list[$i]}
	done

run_on_save:
	@echo "script will now run on save..."
	entr ./${1}

test:
	@echo "testing..."
	./testing.sh

populate_test: populate_todo_list test