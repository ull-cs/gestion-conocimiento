package es.ull.gco;

/**
 * Utility matrix builder
 */
public class UtilityMatrixBuilder {
    public static void main(String[] args) {
        if (args.length != 2) {
            System.out.println("Utility Matrix Builder: program to generate utility matrices used in recommendation systems");
            System.out.println("Arguments:");
            System.out.println("\tNumber of users");
            System.out.println("\tNumber of items");
            System.exit(1);
        }
        final int users = Integer.parseInt(args[0]);
        final int items = Integer.parseInt(args[1]);
        final int minValueInRange = 0;
        final int maxValueInRange = 5;
        final int maxEmptyElementsByUser = 5;
        final String[][] utilityMatrix = new String[users][items];
        for (int i = 0; i < users; i++) {
            for (int j = 0; j < items; j++) {
                utilityMatrix[i][j] = "" + (int) ((Math.random() * (maxValueInRange + 1 - minValueInRange)) + minValueInRange);
            }
            final int emptyElements = (int)(Math.random() * (maxEmptyElementsByUser + 1));
            for (int j = 0; j < emptyElements; j++) {
                final int randomItem = (int) (Math.random() * items);
                utilityMatrix[i][randomItem] = "-";
            }
        }
        for (int i = 0; i < users; i++) {
            for (int j = 0; j < items; j++) {
                System.out.print(utilityMatrix[i][j] + " ");
            }
            System.out.println();
        }
    }
}
