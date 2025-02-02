import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class Statistics {
    /**
     * Reads all lines from all files with a .j extension in the given directory.
     *
     * @param directoryPath the path to the directory to search
     * @return a List containing all lines from all .j files in the directory
     */
    public static List<String> readAllJFileLines(String directoryPath) {
        List<String> allLines = new ArrayList<>();
        Path dir = Paths.get(directoryPath);

        // Use a DirectoryStream with a glob filter "*.j"
        try (DirectoryStream<Path> stream = Files.newDirectoryStream(dir, "*.j")) {
            for (Path file : stream) {
                // Read all lines from the current file and add them to the list
                List<String> fileLines = Files.readAllLines(file);
                allLines.addAll(fileLines);
            }
        } catch (IOException e) {
            System.err.println("Error reading .j files: " + e.getMessage());
            e.printStackTrace();
        }

        return allLines;
    }

    public static void main(String[] args) throws IOException {
        // Specify the directory that contains your .j files.
        String directory = "C:\\Users\\kcira\\sys\\projects\\jas";

        // Get all lines from .j files
        List<String> lines = readAllJFileLines(directory);

        Set<String> commands = new HashSet<>();
        // Print out the lines (or process them as needed)
        for (String line : lines) {
            if(!line.trim().startsWith(".")){
            commands.add(line.trim().split(" ")[0]);
            }
        }

        List<String> allCommands = Files.readAllLines(
                Path.of("C:\\Users\\kcira\\sys\\projects\\jas\\java21commands.txt"));

        List<String> used = allCommands.stream().filter(command ->
                commands.contains(command)).
                collect(Collectors.toList());

        List<String> notUsed = allCommands.stream().filter(command ->
                        !commands.contains(command)).
                collect(Collectors.toList());


        System.out.println(commands);
    }
}
/*
RESULTS: 939 lines of code in total, 67 commands used out of 202, 33% covered
 */