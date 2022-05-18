class Main {
    public static void main(String[] args) {
        double x = 0;
        while (x < 4294967295L) {
            x++;
        }
        System.out.println("Finished!");
        System.out.println("'x' is " + x);
    }
}
