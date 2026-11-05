
package com.vcube.model;

public class TaskModel {

    private int task_id;
    private String task_name;
    private String task_description;
    private int story_points;
    private String assigned_to;

    // No-Argument Constructor
    public TaskModel() {
    }

    // All-Argument Constructor
    public TaskModel( String task_name, String task_description,
                int story_points, String assigned_to) {
        this.task_name = task_name;
        this.task_description = task_description;
        this.story_points = story_points;
        this.assigned_to = assigned_to;
    }
    
    public TaskModel(int task_id, String task_name, String task_description,
            int story_points, String assigned_to) {

		this.task_id = task_id;
		this.task_name = task_name;
		this.task_description = task_description;
		this.story_points = story_points;
		this.assigned_to = assigned_to;
	}
    
    // Getters and Setters

    public int getTask_id() {
        return task_id;
    }

    public void setTask_id(int task_id) {
        this.task_id = task_id;
    }

    public String getTask_name() {
        return task_name;
    }

    public void setTask_name(String task_name) {
        this.task_name = task_name;
    }

    public String getTask_description() {
        return task_description;
    }

    public void setTask_description(String task_description) {
        this.task_description = task_description;
    }

    public int getStory_points() {
        return story_points;
    }

    public void setStory_points(int story_points) {
        this.story_points = story_points;
    }

    public String getAssigned_to() {
        return assigned_to;
    }

    public void setAssigned_to(String assigned_to) {
        this.assigned_to = assigned_to;
    }

    // toString()
    @Override
    public String toString() {
        return "Task [task_id=" + task_id
                + ", task_name=" + task_name
                + ", task_description=" + task_description
                + ", story_points=" + story_points
                + ", assigned_to=" + assigned_to + "]";
    }
}

