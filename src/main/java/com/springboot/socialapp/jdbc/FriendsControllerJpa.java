
package com.springboot.socialapp.jdbc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FriendsControllerJpa {

    @Autowired
    private FriendsRepo friendsRepo;

    @GetMapping("/friends")
    public String getAllFriends(ModelMap model) {
        List<Friends> friends = friendsRepo.findAll();
        model.addAttribute("friends", friends);
        return "friends";

    }

    @RequestMapping(value = "add-friends", method = RequestMethod.GET)
    public String showNew(ModelMap model) {
        // String name = (String) model.get("name");

        Friends friends = new Friends(0, "");
        model.put("friends", friends);
        return "addFriend";
    }

    @RequestMapping(value = "add-friends", method = RequestMethod.POST)
    public String addNewFriend(ModelMap model, @Validated Friends friend, BindingResult result) {

        if (result.hasErrors()) {
            return "addFriend";
        }

        // String name = getAllFriends(model);
        // friend.setName(name);
        friendsRepo.save(friend);
        // todoService.addTodo(username, todo.getDescription(),
        // todo.getTargetDate(), todo.isDone());
        return "redirect:friends";
    }

    @RequestMapping("delete-todo")
    public String deleteTodo(@RequestParam int id) {
        // Delete todo
        friendsRepo.deleteById(id);
        return "redirect:friends";

    }

    @RequestMapping(value="update-todo", method = RequestMethod.GET)
	public String showUpdateTodoPage(@RequestParam int id, ModelMap model) {
		Friends friends = friendsRepo.findById(id).get();
		model.addAttribute("friends", friends);
		return "addFriend";
	}

	@RequestMapping(value="update-todo", method = RequestMethod.POST)
	public String updateTodo(ModelMap model, @Validated Friends friends, BindingResult result) {
		
		if(result.hasErrors()) {
			return "friends";
		}
		
		
		friendsRepo.save(friends);
		return "redirect:friends";
	}

	
	}


