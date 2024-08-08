import java.util.Scanner;

public class Practice101Repo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter your name: ");
        String name = scanner.nextLine();

        System.out.print("Enter your age: ");
        int age = scanner.nextInt();
        scanner.nextLine(); // Consume the newline character left by nextInt()

        System.out.print("Enter your gender: ");
        String gender = scanner.nextLine();

        scanner.close(); // Close the scanner after all inputs are taken

        System.out.println("\nWelcome, " + name + "!");
        System.out.println("Age: " + age);
        System.out.println("Gender: " + gender);
        System.out.println("We are glad to have you here. Enjoy your time with us!");
    }
}

