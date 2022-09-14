package com.springboot.socialapp.jdbc;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface FriendsRepo extends JpaRepository<Friends, Integer> {
    List<Friends> findByName(String name);

}
