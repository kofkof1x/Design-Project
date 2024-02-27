import java.util.Random;

public class Log {
    int currentposx;
    int currentposy;
    int loglength;
    int logheight = 30;
    int logvelocity;

    public Log(int x, int y, int length, int velocity) {
        this.currentposx = x;
        this.currentposy = y;
        this.loglength = length;
        this.logvelocity = velocity;
    }

    public void update() {
        currentposx += logvelocity;
        // when it goes beyond a certain point on the screen
    }

    // You can add other methods based on your game logic

    // Static method to generate a random log in a given row
    public static Log generateRandomLog(int row) {
        Random random = new Random();

        // You can adjust these values based on your game requirements
        int x = 0; // Starting position
        int y = 100 + row * 50; // Varying position based on the row
        int length = random.nextInt(80) + 70; // Random log length between 70 and 150
        int velocity = random.nextInt(5) + 1; // Random velocity between 1 and 5

        return new Log(x, y, length, velocity);
    }

    public static void main(String[] args) {
        // Example usage: Generate a random log in row 1
        Log randomLog = Log.generateRandomLog(1);

        // You can now use randomLog and its methods in your game
    }
}
