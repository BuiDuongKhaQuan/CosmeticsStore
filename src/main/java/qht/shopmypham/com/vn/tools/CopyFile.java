package qht.shopmypham.com.vn.tools;

import java.io.*;

public class CopyFile {
    public static void copy(String pathIn, String pathOut) throws IOException {
        InputStream inStream =  new FileInputStream(new File(pathIn));
        OutputStream outStream = new FileOutputStream(new File(pathOut));

        try {
            int length;
            byte[] buffer = new byte[1024];

            // copy the file content in bytes
            while ((length = inStream.read(buffer)) > 0) {
                outStream.write(buffer, 0, length);
            }
            System.out.println("File is copied successful!");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            inStream.close();
            outStream.close();
        }
    }
}
