package kz.bitlab.servlets.db;

import java.util.ArrayList;

public class DBManager {


    public  static int id = 6;
    private static final ArrayList<Tasks> tasks = new ArrayList<>();

    static {
        tasks.add(new Tasks(1,"Cоздать веб приложение на JAVA EE","23-10-2021","Да")
        );
    }
    static {
        tasks.add(new Tasks(2,"Убраться дома и закупить продукты","25-10-2021","Да")
        );
    }
    static {
        tasks.add(new Tasks(3,"Выполнить все домашние задания","28-10-2021","Нет")
        );
    }
    static {
        tasks.add(new Tasks(4,"Записаться на качку","12-12-2021","Нет")
        );
    }
    static {
        tasks.add(new Tasks(5,"Учить Итальянский","01-05-2021","Нет")
        );
    }

    public static ArrayList<Tasks> getTasks(){
        return tasks;
    }

    public static void addTask(Tasks task){
        task.setId(id);
        tasks.add(task);
        id++;
    }

    public static Tasks getTask(int id){
        return  tasks.
                stream().
                filter(tasks -> tasks.getId()==id).
                findFirst().
                orElse(null);
    }

    public static void updateTask(Tasks example){
        for (int i=0;i< tasks.size();i++){
            if(tasks.get(i).getId()== example.getId()){
                tasks.set(i,example);
                break;
            }
        }
    }

    public static void deleteTask(int id){
        for(int i=0;i< tasks.size();i++){
            if(tasks.get(i).getId()==id){
                tasks.remove(i);
                break;
            }
        }
    }

}