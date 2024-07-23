import java.util.Scanner;

public class WelcomeUser {
    public static void main(String[] args) {
        
        Scanner scanner = new Scanner(System.in);
        
        
        System.out.print("Enter your name: ");
        String name = scanner.nextLine();
        
        
        System.out.print("Enter your age: ");
        int age = scanner.nextInt();
        
        
        scanner.nextLine();
        
        
        System.out.print("Enter your gender: ");
        String gender = scanner.nextLine();
        
        
        scanner.close();
        
        
        System.out.println("\nWelcome, " + name + "!");
        System.out.println("Age: " + age);
        System.out.println("Gender: " + gender);
        System.out.println("We are glad to have you here. Enjoy your time with us!");
    }
}
